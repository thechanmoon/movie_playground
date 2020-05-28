import React from 'react'
import { IMAGE_URL } from '../constants'
const JournalItem = (props) => {

  const sliceTitle = (string) =>
  {
    return (string.length <19 ? string : `${string.slice(0,18)}...`)
  }

  // destructuring the props object (we could also do the destructuring directly to the argument of the ListingCard fn)
  // const { image, name, city, rating, price } = this.props
  const { id, poster_path, title } = props.movie
  // poster_path = "https://image.tmdb.org/t/p/w300"+poster_path;
  let image = IMAGE_URL + poster_path;

  return (    
      <div className="card" onClick={() => {}}>
        <div className="image" style={{ backgroundImage: `url(${image})` }}>
        </div>
        <div  className="info">
        <h4 className="title">{sliceTitle(title)}</h4>
        </div>
      </div>  
  )
}

export default JournalItem