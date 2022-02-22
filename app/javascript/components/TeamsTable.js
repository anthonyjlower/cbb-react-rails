import React from "react"
import PropTypes from "prop-types"
class TeamsTable extends React.Component {
  render () {
    console.log('in component')
    return (
      <React.Fragment>
        Teams: {this.props.teams.length}
      </React.Fragment>
    );
  }
}

TeamsTable.propTypes = {
  teams: PropTypes.array
};
export default TeamsTable
