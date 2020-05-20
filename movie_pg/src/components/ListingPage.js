import React from 'react'
import LoadingSpinner from './LoadingSpinner'
import JournalForm from './JournalForm'
import Journal from './Journal'
import ReviewForm from './ReviewForm'
import Review from './Review'
import { API_URL, IMAGE_URL } from '../constants'

class ListingPage extends React.Component {

  state = {
    listing: null,
    loaded: false
  }

  componentDidMount() {
    console.log('ListingPage componentDidMount');
    fetch(API_URL + `/movies/${this.props.match.params.id}`, {
      credentials: "include"
    })
      .then(r => r.json())
      .then(listing => {
        console.log(listing)
        this.setState({
          listing: listing,
          loaded: true
        })
      })
  }

  handleUpdateListing = listing => {
    this.setState({ listing })
  }

  toggleFavorite = () => {

    if (!this.state.listing.favorite) {
      fetch(API_URL + `/listings/${this.state.listing.id}/favorites`, {
        method: "POST",
        credentials: "include"
      })
        .then(r => r.json())
        .then(listing => this.setState({ listing }))
    } else {
      fetch(API_URL + `/listings/${this.state.listing.id}/favorites/remove`, {
        method: "DELETE",
        credentials: "include"
      })
        .then(r => r.json())
        .then(listing => this.setState({ listing }))
    }
  }


  render() {
    console.log(this.props)
    console.log(this.state)
    if (!this.state.loaded) {
      return <LoadingSpinner />
    }

    const { id, poster_path, title, overview, release_date, runtime, reviews} = this.state.listing.table

    let image = IMAGE_URL + poster_path;

    return (
      <div className="detail">
        <div className='container'>
          
          <div className="image" style={{ backgroundImage: `url(${image})` }}>
            {/* <button onClick={this.toggleFavorite} className="favorite">
              <span role="img" aria-label="heart">{favorite ? "♥️" : "♡"}</span>
            </button> */}
          </div>


          <div className="detail-info">
            <h1 className="title">Title : {title}</h1>
            
            <span>
            <h2> OverView : {overview}</h2>
            </span>  

            <span>
            <h2> Release date : {release_date}</h2>
            <h2> Runtime : {runtime} minutes</h2>
            </span>  

          </div>
      </div>
      
      <div className="detail">
        <div className='container'>
          <div className="journals">
            {/* {{journals.map(journal => <Journal key={journal.id} {...journal} />)} } */}
            { <JournalForm listingId={id} handleUpdateListing={this.handleUpdateListing} /> }
          </div>

          <div className="reviews">
              {/* <h4>
                <span className="rating">★</span>
                &nbsp;
                <span>{rating} ({reviews.length} reviews)</span>
                <span>{5} ({5} reviews)</span>
              </h4> */}
              {/* {{reviews.map(review => <Review key={review.id} {...review} />)} } */}
            </div>
            { <ReviewForm listingId={id} handleUpdateListing={this.handleUpdateListing} /> }
          </div>



        </div>
      </div>
    )
  }
}

export default ListingPage