import React from 'react'

const Journal = ({ username, watch_date, text }) => {
  return (
    <div style={{ flexGrow: 0, flexBasis: '33.333%', }} >
      <div className="journal">
        <section>
        <h5>{watch_date}</h5>
        {/* <span className="date" class="active">{watch_date}</span> */}
        <p className="comment">{text}</p>
        <p>{"\n"}</p>
        </section>
      </div>
      {/* <button> Delete</button> */}
    </div>
  )
}

export default Journal