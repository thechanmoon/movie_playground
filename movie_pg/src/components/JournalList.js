import React, {userState, useEffect} from 'react'
import { useSelector, useDispatch } from 'react-redux'
import { API_URL, IMAGE_URL } from '../constants'

const JournalList = () => {

  const movies = useSelector(state => state.movies)

  // const { comments, comment } = useSelector(state => {
  //   return {
  //     comments: state.comments,
  //     comment: state.comment
  //   }
  // })

  console.log(movies)

  // const [counter, setCounter] = userState(0)
  const dispatch = useDispatch()

  useEffect(()=>{
    // document.title = `Counter is' ${counter}`;
    console.log('useEffect')
    fetchListings()
  },[])

  const fetchListings = ()=>{

    let url = API_URL + `/movies`;

    console.log(url)
    fetch(url, {
      credentials: "include"
    })
      .then(r => r.json())
      .then(data => dispatch({ type: "SET_MOVIES", payload: data }))
  }

  return (
    <div>
      JournalList
      {movies? movies.map(movie=><div>{movie.title}</div>) : '' }
      {/* My counter is {counter}; */}
      {/* <button onClick={increaseCounter}></button> */}
    </div>
  )
}

export default JournalList