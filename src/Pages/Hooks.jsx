import React from "react";
import UseState from "../Hooks/UseState";
import UseEffect from "../Hooks/UseEffect";
import UseReducer from "../Hooks/UseReducer";
import UseRef from "../Hooks/UseRef";

const Hooks = () => {
  return (
    <div>
      <hr />
      <UseState />
      <hr />
      <UseEffect />
      <hr />
      <UseRef />
      <hr />
      <UseReducer />
      <hr />
    </div>
  );
};

export default Hooks;
