import React, { useState } from "react";
import "./index.scss";
import { debugData } from "./utils/debugData";
import "@fortawesome/fontawesome-free/css/all.min.css";
import { fetchNui } from "./utils/fetchNui";


// This will set the NUI to visible if we are
// developing in browser
debugData([
  {
    action: "setVisible",
    data: true,
  },
]);





export default function App(){

  type Tab = 'firstTab' | 'secondTab';

  const [activeTab, setActiveTab] = useState<Tab>('firstTab')
  const handleCloseMenu = () => {
    fetchNui('hideFrame')
  }

  return (
    <div className="nui-wrapper">
      <div className="tab-row">
        <button
          className={activeTab === 'firstTab' ? 'tab active': 'tab'}
          onClick={()=> setActiveTab('firstTab')}
        >
          First Tab
        </button>
        <button
          className={activeTab==='secondTab' ? 'tab active': 'tab'}
          onClick={()=> setActiveTab('secondTab')}
        >
          Second Tab
        </button>
      </div>
      <div className="tab-content">
        <h2>Content Goes Here!</h2>
      </div>
      <div className='footer'>
        <button className='close-menu' onClick={handleCloseMenu}><i className='fa-solid fa-xmark'></i></button>
      </div>
    </div>
  );
}
