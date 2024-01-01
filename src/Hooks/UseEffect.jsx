import React, { useState, useEffect } from "react";

const UseEffect = () => {
  const [count, setCount] = useState(0);
  const [count1, setCount1] = useState(0);

  useEffect(() => {
    console.log("inside useEffect");
  }, [count1]);
  return (
    <div>
      <h3>Hooks-UseEffect</h3>
      <h4>case-1</h4>
      <p>useEffect without Array(Second argument-Dependencies)</p>
      <p>useEffect(()={})</p>
      <p>
        Whenever state change triggers a re-render to reflect the effect change
        in the UI and for every re-render useEffect will print eg: see console
        without array bracket
      </p>

      <h4>case-2</h4>
      <p>useEffect with Array(Second argument-Dependencies)</p>
      <p>useEffect(()={},[])</p>
      <p>
        Whenever state change triggers a re-render to reflect the effect change
        in the UI and useEffect will remain same not get triggered when usestate
        change function call by one time no for all the time when state change
      </p>

      <h4>case-3</h4>
      <p>
        useEffect with Array(Second argument-Dependencies) and set the State
        variable
      </p>
      <p>useEffect(()={},[count1, count2,....useState])</p>
      <p></p>

      <h3>count:{count}</h3>
      <button
        onClick={() => {
          setCount(count + 1);
        }}
      >
        Count
      </button>
      <h3>count:{count1}</h3>
      <button
        onClick={() => {
          setCount1(count1 + 2);
        }}
      >
        Count
      </button>
    </div>
  );
};

export default UseEffect;
