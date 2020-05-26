import React from 'react'

const Review = ({ username, date, comment }) => {

  console.log(comment)
  return (
    <div className="review">
      <h5>{username}</h5>
      <span className="date">{date}</span>
      <p className="comment">{comment}</p>
    </div>
  )
}

export default Review