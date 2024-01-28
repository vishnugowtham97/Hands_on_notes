import React, { useState, useContext } from "react";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import Home from "./Pages/Home";
import Product from "./Pages/Product";
import Userpage from "./Pages/Userpage";
import Navbar from "./Component/Navbar";
import ProfilePage from "./Pages/ProfilePage";
import { myContext } from "./Context/userContext";
import Hooks from "./Pages/Hooks";
import CrudTodo from "./Pages/Crud_Todo";

const AllRoutes = () => {
  const [userName, setUsername] = useState([]);
  const [detail, setDetail] = useState(false);

  return (
    <div>
      <myContext.Provider value={{ userName, setUsername, detail, setDetail }}>
        <Navbar />
        <h1 style={{ position: "sticky", top: "0" }}>Interview Practices</h1>
        <p>
          React, React-Router, Props, Fetch API, React-Redux, Redux-toolkit,
          Context
        </p>
        <h3>Welcome {userName}</h3>

        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="user" element={<Userpage />} />
          <Route path="product" element={<Product />} />
          <Route path="login" element={<ProfilePage />} />
          <Route path="hooks" element={<Hooks />} />
          <Route path="crud" element={<CrudTodo />} />
        </Routes>
      </myContext.Provider>
    </div>
  );
};

export default AllRoutes;
