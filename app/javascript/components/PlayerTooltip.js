import React, { Component } from 'react'

export default class PlayerTooltip extends Component {
  render() {
    const data = this.props.api.getDisplayedRowAtIndex(this.props.rowIndex).data;
    console.log({data})

    return (
      <div style={{width: '150px', height: '70px', border: '1px solid cornflowerblue', overflow: 'hidden', backgroundColor: '#ececec'}}>
        <ul style={{padding: '0', 'list-style-type': 'none'}}>
          {data.players.map((player, i) => {
            const data = player.data.attributes
            return <li style={{'font-size': '10px'}} key={i}>{data.rank} | {data.name} | {data.position}</li>
          })}
        </ul>
      </div>
    )
  }
}
