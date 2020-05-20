import React from 'react'

const Journal = ({ username, date, comment }) => {
  return (
    <div className="journal">
      <h5>{username}</h5>
      <span className="date">{date}</span>
      <p className="comment">{comment}</p>
    </div>
  )
}

export default Journal