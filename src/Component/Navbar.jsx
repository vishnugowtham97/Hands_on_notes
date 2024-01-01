import React from "react";
import { Link } from "react-router-dom";
const Navbar = () => {
  return (
    <div
      style={{
        display: "flex",
        justifyContent: "space-evenly",
        backgroundColor: "whitesmoke",
      }}
    >
      <h3>
        <Link to="/">Home</Link>
      </h3>
      <h3>
        <Link to="user">User</Link>
      </h3>
      <h3>
        <Link to="product">Product</Link>
      </h3>
      <h3>
        <Link to="login">Login</Link>
      </h3>
      <h3>
        <Link to="hooks">Hooks</Link>
      </h3>
      <h3>
        <Link to="crud">Crud</Link>
      </h3>
    </div>
  );
};

export default Navbar;
