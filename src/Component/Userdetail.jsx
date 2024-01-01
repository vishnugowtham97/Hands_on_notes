import React, { useState, useEffect } from "react";
import { useSelector, useDispatch } from "react-redux";
import { fetchData } from "../Reducer/userSlice";
import axios from "axios";

const Userdetail = () => {
  const dispatch = useDispatch();
  const [data, setData] = useState([]);
  const URL = "https://jsonplaceholder.typicode.com/users";

  useEffect(() => {
    axios.get(URL).then((res) => setData(res.data));
  }, []);

  return (
    <div className="container">
      <div className="row">
        <button onClick={() => dispatch(fetchData(data))}>
          Click here to get data
        </button>
      </div>
    </div>
  );
};

export default Userdetail;
