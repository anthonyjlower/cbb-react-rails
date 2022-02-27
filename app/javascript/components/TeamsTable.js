import React, { useRef } from 'react';
import { AgGridReact } from 'ag-grid-react';
import PropTypes from 'prop-types';

import 'ag-grid-community/dist/styles/ag-grid.css';
import 'ag-grid-community/dist/styles/ag-theme-alpine.css';

const AgGrid = (rowData, columnDefs) => {
  let gridApi = {}

  const onGridReady = (params) => {
    // gridApi = params.api
    params.api.sizeColumnsToFit();
  }

  const sizeToFit = (gridApi) => {
    gridApi.sizeColumnsToFit();
  }
  console.log('In TeamsTable')

  return (
    <>
      <div className="ag-theme-alpine" style={{height: '90vh', width: '95vw'}}>
        <button onClick={() => sizeToFit(gridApi)}>Size to Fit</button>
        <AgGridReact
          rowData={rowData}
          columnDefs={columnDefs}
          onGridReady={onGridReady}
        >
        </AgGridReact>
      </div>
    </>
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
