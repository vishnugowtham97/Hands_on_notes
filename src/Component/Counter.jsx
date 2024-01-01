import React from "react";
import { useSelector, useDispatch } from "react-redux";
import { increment, decrement } from "../Reducer/counterSlice";

const Counter = () => {
  const dispatch = useDispatch();
  const count = useSelector((state) => state.counter.value);
  return (
    <div>
      <h2>Counter Using React-Redux concept</h2>
      <h3>Count:{count}</h3>
      <button onClick={() => dispatch(increment())}>Increment</button>
      <button onClick={() => dispatch(decrement())}>Decrement</button>
    </div>
  );
};

export default Counter;
