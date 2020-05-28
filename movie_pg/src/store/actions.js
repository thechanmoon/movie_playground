export function fetchMoive() {
    return function (dispatch) {
      dispatch({ type: "FETCHING_MOVIE" })
  
      getRandomMOVIE()
        .then(movie => {
          const movieWithPosition = { ...movie, position: [lat, lng] }
          dispatch({ type: "SET_MOVIES", payload: movieWithPosition })
        })
        .catch(err => {
          dispatch({ type: "FETCHING_MOVIE_ERROR" })
          console.error("MOVIE fetch error", err)
        })
    }
  }