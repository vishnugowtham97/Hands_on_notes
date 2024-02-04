import React, { useState, useEffect } from "react";

const Yes_or_No = () => {
  const [response, setResponse] = useState({});
  const [score, setScore] = useState(0);
  const [questionNumber, setQuestionNumber] = useState(1);

  const fetchResponse = async () => {
    try {
      const res = await fetch("https://yesno.wtf/api");
      if (!res.ok) {
        throw new Error(`Failed to fetch response. Status: ${res.status}`);
      }
      const data = await res.json();
      setResponse(data);
    } catch (error) {
      console.error(error);
    }
  };

  const handleScore = (value) => {
    if (value === response.answer) {
      setScore((prevScore) => prevScore + 1);
    }
    setQuestionNumber((prevQuestionNumber) => prevQuestionNumber + 1);
    fetchResponse();
  };

  useEffect(() => {
    fetchResponse();
  }, []); // Fetch initial response on component mount

  return (
    <div>
      <div>
        <h2>Yes or No</h2>
        <p>Question {questionNumber}:</p>
        <img
          src={response.image}
          alt={`Response GIF for question ${questionNumber}`}
        />
        <br />
        <button onClick={() => handleScore("yes")}>Yes</button>
        <button onClick={() => handleScore("no")}>No</button>
      </div>
      <div>
        <p>Total Score: {score}</p>
      </div>
    </div>
  );
};

export default Yes_or_No;
