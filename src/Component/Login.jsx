import React, { useContext, useState } from "react";
import { myContext } from "../Context/userContext";

const Login = () => {
  const { setUsername, setDetail } = useContext(myContext);
  const handleLogin = () => {
    setDetail(true);
  };
  return (
    <div
      style={{
        display: "flex",
        flexDirection: "column",
        backgroundColor: "#23283e",
        padding: "50px",
      }}
    >
      <input
        type="email"
        placeholder="enter the email"
        style={{ padding: "10px", margin: "5px", borderRadius: "50px" }}
        onChange={(e) => setUsername(e.target.value)}
      />
      <input
        type="password"
        placeholder="enter the password"
        style={{ padding: "10px", margin: "4px", borderRadius: "50px" }}
      />
      <button
        style={{
          border: "1px solid lightblue",
          padding: "5px",
          boxSizing: "border-box",
          borderRadius: "50px",
          backgroundColor: "lightgrey",
          color: "tomato",
          marginTop: "10px",
        }}
        onClick={handleLogin}
      >
        Login
      </button>
    </div>
  );
};

export default Login;
