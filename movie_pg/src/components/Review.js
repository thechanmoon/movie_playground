import React from 'react'

const Review = ({ username, created_at, comment }) => {

  console.log(comment)
  return (
    <div className="review">
      <h5>{username}</h5>
      <span className="date">{created_at}</span>
      <p className="comment">{comment}</p>
    </div>
  )
}

export default Review