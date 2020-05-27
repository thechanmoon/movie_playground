import React from 'react'

const Journal = ({ username, watch_date, text }) => {
  return (
    <div className="journal">
      {/* <h5>{username}</h5> */}
      <span className="date">{watch_date}</span>
      <p className="comment">{text}</p>
    </div>
  )
}

export default Journal