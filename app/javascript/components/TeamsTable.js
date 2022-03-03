import React, { useRef } from 'react';
import { AgGridReact } from 'ag-grid-react';
import PropTypes from 'prop-types';

import 'ag-grid-community/dist/styles/ag-grid.css';
import 'ag-grid-community/dist/styles/ag-theme-alpine.css';

const AgGrid = (rowData, columnDefs) => {
  let gridApi = {}

  const onGridReady = (params) => {
    gridApi = params.api
    // params.api.sizeColumnsToFit();
  }

  const sizeToFit = (gridApi) => {
    gridApi.sizeColumnsToFit();
  }

  const goToOddsView = () => {
    window.location.href = `/?columns=odds`
  }

  const numericalNilLast = (valueA, valueB) => {
    if (valueA && valueB) return (valueA < valueB) ? -1 : 1

    return valueA ? -1 : 1
  }

  const columns = columnDefs.map(column => {
    if (column.field !== 'top_ranked_player') return column

    column.comparator = (valueA, valueB, nodeA, nodeB, isInverted) => numericalNilLast(valueA, valueB)
    return column
  })

  return (
    <>
      <div className="ag-theme-alpine" style={{height: '90vh', width: '95vw'}}>
        <button onClick={() => sizeToFit(gridApi)}>Size to Fit</button>
        <a href='./?columns=odds'>Odds Columns</a>
        <a href='./?head-to-head='>Matchup Columns</a>
        <AgGridReact
          rowData={rowData}
          columnDefs={columns}
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
