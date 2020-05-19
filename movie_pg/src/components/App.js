import React from 'react';
import { Route, Switch, withRouter } from 'react-router-dom'
import NavBar from './NavBar'
import ListingsContainer from './ListingsContainer';
import ListingPage from './ListingPage';
import LoginForm from './LoginForm';
import SignupForm from './SignupForm';
import { API_URL } from '../constants'
//import logo from './logo.svg';
//import './App.css';

class App extends React.Component {
  state = {
    currentUser: null,
    searchTerm: ""
  }

  componentDidMount() {
    fetch(API_URL + "/autologin", {
      credentials: "include"
    })
      .then(r => {
        console.log(r)
        if (!r.ok) {
          throw r
        }
        return r.json()
      })
      .then(user => this.setState({ currentUser: user }))
      .catch(console.error)
  }

  handleUpdateCurrentUser = user => {
    console.log(user)
    this.setState({
      currentUser: user
    })
  }

  handleUpdateSearch = searchTerm => {
    // this.props.history.push(`/listings/search/${encodeURIComponent(searchTerm)}`)
    this.setState({searchTerm: searchTerm})
  }

  render() {
    console.log("In app", this.state)

    return( 
    <>
      <NavBar
        handleUpdateCurrentUser={this.handleUpdateCurrentUser}
        handleUpdateSearch={this.handleUpdateSearch}
        currentUser={this.state.currentUser}
      />
      <main>
        <Switch>
          <Route exact path="/" render={() => <h1>Home</h1>} />
          <Route path="/login" render={routeProps => <LoginForm {...routeProps} handleUpdateCurrentUser={this.handleUpdateCurrentUser} />} />
          <Route path="/signup" render={routeProps => <SignupForm {...routeProps} handleUpdateCurrentUser={this.handleUpdateCurrentUser} />} />
          {this.state.currentUser && (
            <>
              {/* <Route path="/listings/search/:city" render={routeProps => <ListingsContainer {...routeProps} />} /> */}
              <Route path="/listings/:id" render={routeProps => <ListingPage {...routeProps} />} />
              <Route exact path="/listings" render={routeProps => <ListingsContainer {...routeProps} searchTerm={this.state.searchTerm}/>} />
            </>
          )}
        </Switch>
      </main>
    </>
    )
  }
}

export default withRouter(App);

// function App() {
//   return (
//     <div className="App">
//       <header className="App-header">
//         <img src={logo} className="App-logo" alt="logo" />
//         <p>
//           Edit <code>src/App.js</code> and save to reload.
//         </p>
//         <a
//           className="App-link"
//           href="https://reactjs.org"
//           target="_blank"
//           rel="noopener noreferrer"
//         >
//           Learn React
//         </a>
//       </header>
//     </div>
//   );
// }

// export default App;
