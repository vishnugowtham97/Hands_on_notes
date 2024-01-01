import React, { useState } from "react";

const UseState = () => {
  const [count, setCount] = useState({ value: 100, type: "count" });
  const increment = () => {
    setCount((precounter) => {
      return {
        value: precounter.value + 2,
        type: "Increment",
      };
    });
  };
  const decrement = () => {
    setCount((precounter) => {
      return {
        value: precounter.value - 2,
        type: "Decrement",
      };
    });
  };
  return (
    <div>
      <h3>Hooks-UseState</h3>
      <h3>count:{count.value}</h3>
      <h3>Type:{count.type}</h3>
      <button style={{ margin: "5px" }} onClick={increment}>
        +2
      </button>
      <button style={{ margin: "5px" }} onClick={decrement}>
        -2
      </button>
    </div>
  );
};

export default UseState;
