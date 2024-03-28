import React, { useEffect, useState } from "react";
import axios from "axios";
import "./Http_Method.css";

const Http_Method = () => {
  const api = "https://jsonplaceholder.typicode.com/users/1";
  const [users, setUsers] = useState([]);
  const [name, setName] = useState([]);

  useEffect(() => {
    axios
      .get(api)
      .then((res) => setUsers(res.data))
      .catch((err) => console.error(err.message));
  }, []);
  const postData = () => {
    axios
      .post(api, { name: name })
      .then((res) => setUsers([...users, res.data]))
      .catch((err) => console.error(err.message));
  };

  const putData = () => {
    axios
      .put(`https://jsonplaceholder.typicode.com/users/${1}`, { name: name })
      .then((res) => setUsers(res.data))
      .catch((err) => console.error(err.message));
  };

  const deleteData = () => {
    axios
      .delete(`https://jsonplaceholder.typicode.com/users/${1}`)
      .then((res) => setUsers("Successfully Deleted"))
      .catch((err) => console.error(err.message));
  };
  if (!users) return "no user found";
  return (
    <div>
      <h2>Http Method</h2>

      <h4>Get Method</h4>
      {/* 
      {users &&
        users.map((val, i) => {
          return <p key={i}>{val.name}</p>;
        })} 
         */}
      {users.name}

      <input
        type="text"
        value={name}
        className="input1"
        onChange={(e) => {
          setName(e.target.value);
        }}
      />
      <button onClick={postData}>POST Response</button>
      <button onClick={putData}>PUT Response</button>
      <button onClick={deleteData}>DELETE Response</button>
    </div>
  );
};

export default Http_Method;
