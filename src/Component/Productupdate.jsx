import React from "react";
import { useSelector } from "react-redux";

const Productupdate = () => {
  const products = useSelector((state) => state.product.value);
  console.log(products);
  return (
    <div className="container">
      <div
        className="product"
        style={{
          textAlign: "center",
          background: "#90a0d9",
          fontSize: "20px",
          color: "#494646",
        }}
      >
        Total Product -
        <span style={{ fontSize: "25px", color: "#cdcdff" }}>
          {products.length}
          {"  "}
        </span>{" "}
        || Total Price - ₹{"  "}
        <span style={{ fontSize: "25px", color: "#cdcdff" }}>
          {products.reduce((a, v) => a + v.price, 0)}/-
        </span>
      </div>
    </div>
  );
};

export default Productupdate;
