import React from 'react'

const Journal = ({ username, watch_date, text }) => {
  return (
    <div>
      <div className="journal">
        <section>
        <h5>{watch_date}</h5>
        {/* <span className="date" class="active">{watch_date}</span> */}
        <p className="comment">{text}</p>
        <p>{"\n"}</p>
        </section>
      </div>
    <div style={{ flexGrow: 0, flexBasis: '33.333%', }} >
      <button> Delete</button>
    </div>
    </div>
  )
}

export default Journal