import React, { useState, useEffect } from "react";
import Productupdate from "./Productupdate";
import { useSelector, useDispatch } from "react-redux";
import { addProduct } from "../Reducer/productSlice";

const Productpage = () => {
  const dispatch = useDispatch();
  const [data, setData] = useState([]);
  useEffect(() => {
    fetch("https://dummyjson.com/products")
      .then((res) => res.json())
      .then((res) => setData(res.products));
  }, []);
  return (
    <div>
      <Productupdate />
      <h3>Product List</h3>
      <div className="container">
        <div
          className="row"
          style={{
            marginLeft: "50px",
            padding: "20px",
            display: "flex",
            flexWrap: "wrap",
            alignContent: "center",
            justifyContent: "center",
          }}
        >
          {data && data.length > 0
            ? data.map((item, index) => {
                return (
                  <>
                    <div
                      key={index}
                      className="card row"
                      style={{
                        width: "18rem",
                        margin: "10px",
                        padding: "5px",
                        border: "1px solid grey",
                        borderRadius: "10px",
                      }}
                    >
                      <img
                        src={item.thumbnail}
                        className="card-img-top"
                        alt={index}
                        style={{
                          width: "100%",
                          height: "200px",
                          borderRadius: "10px",
                        }}
                      />
                      <div
                        className="card-body"
                        style={{ padding: "5px", marginBottom: "5px" }}
                      >
                        <h5 className="card-title">{item.title}</h5>
                        <p className="card-text">{item.description}</p>
                        <p className="card-text">Rs: {item.price}/- only</p>
                        <p className="card-text">
                          <span>★ </span>
                          {item.rating}
                        </p>
                        <a
                          href="#"
                          className="btn btn-primary"
                          style={{
                            border: "1px solid lightblue",
                            padding: "5px",
                            boxSizing: "border-box",
                            borderRadius: "10px",
                            backgroundColor: "lightgrey",
                            color: "tomato",
                            marginBottom: "5px",
                          }}
                          onClick={() => {
                            dispatch(
                              addProduct({
                                title: item.title,
                                price: item.price,
                                description: item.description,
                              })
                            );
                          }}
                        >
                          Add to cart
                        </a>
                      </div>
                    </div>
                  </>
                );
              })
            : "Data Loading...."}
        </div>
      </div>
    </div>
  );
};

export default Productpage;
