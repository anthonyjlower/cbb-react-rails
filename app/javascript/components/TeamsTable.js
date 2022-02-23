import React from 'react';
import { AgGridReact } from 'ag-grid-react';
import PropTypes from 'prop-types';

import 'ag-grid-community/dist/styles/ag-grid.css';
import 'ag-grid-community/dist/styles/ag-theme-alpine.css';

const AgGrid = (rowData, columnDefs) => {
  console.log(rowData[0])
  return (
    <div className="ag-theme-alpine" style={{height: 400, width: '100vw'}}>
      <AgGridReact
        rowData={rowData}
        columnDefs={columnDefs}
      >
      </AgGridReact>
    </div>
  )
}

class TeamsTable extends React.Component {
  render() {
    return (
      AgGrid(this.props.teamRows, this.props.columnDefs)
    )
  }
}

TeamsTable.propTypes = {
  teamRows: PropTypes.array,
  columnDefs: PropTypes.array
}

export default TeamsTable;
