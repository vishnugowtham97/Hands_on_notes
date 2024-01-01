import React, { useRef } from "react";

const UseRef = () => {
  const inputRef = useRef(null);

  const handleClick = () => {
    console.log(inputRef.current.value);
  };
  return (
    <div className="container">
      <h3>Hooks-UseRef</h3>
      <p style={{ textAlign: "left" }}>
        <ol>
          <li>
            Use Case: Direct access to DOM Elements, any change ito the attached
            dom do not results in re-render
          </li>
          <li>
            Store the mutable values, it act as a container. where it holds
            mutable values in ".current" property
          </li>
        </ol>
      </p>
      <input
        style={{
          padding: "13px",
          borderRadius: "10px",
          border: "none",
          margin: "5px",
        }}
        ref={inputRef}
        type="email"
        placeholder="enter the email"
      />
      <button onClick={handleClick}>Click</button>
    </div>
  );
};

export default UseRef;
