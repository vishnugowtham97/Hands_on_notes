import React, { useEffect, useState } from "react";
import "./Todo_form.css";

const Todo_form = () => {
  const getItems = () => {
    const lists = localStorage.getItem("list");
    console.log(lists);
    if (lists) {
      return JSON.parse(localStorage.getItem("list"));
    } else {
      return [];
    }
  };

  const [input, setInput] = useState([]);
  const [todo, setTodo] = useState(getItems());
  const [idCounter, setIdCounter] = useState(0);

  useEffect(() => {
    localStorage.setItem("list", JSON.stringify(todo));
  }, [todo]);

  const handleChange = (event) => {
    setInput(event.target.value);
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    setIdCounter((prevId) => prevId + 1);

    let newtodos = [...todo, { id: idCounter, title: input, complete: false }];
    setTodo(newtodos);
    setInput("");
  };
  const handleDelete = ({ id }) => {
    setTodo(todo.filter((todo) => todo.id != id));
  };

  const handleComplete = (val) => {
    let updatedTodo = [...todo].map((item) => {
      if (item.id === val.id) {
        item.complete = !item.complete;
      }
      return item;
    });
    setTodo(updatedTodo);
  };

  return (
    <div className="todo_container">
      <div className="todo_content">
        <h2>TODO List...</h2>
        <form className="todo_forms" onSubmit={handleSubmit}>
          <input
            type="text"
            placeholder="enter the Todo list here..."
            className="input_box"
            value={input}
            onChange={handleChange}
            required
          />
          <button className="add-btn">+</button>
        </form>
      </div>
      <div className="todo_lits">
        {todo.map((val, ind) => {
          return (
            <li className="li_list" key={ind}>
              <input
                style={{ pointerEvents: "none" }}
                className={`todo_list ${
                  val.complete ? "todo_list-completeTrue" : ""
                }`}
                type="text"
                value={val.title}
                onChange={(e) => {
                  e.preventDefault();
                }}
              />
              <button
                onClick={() => {
                  handleComplete(val);
                }}
              >
                complete
              </button>

              <button
                onClick={() => {
                  handleDelete(val);
                }}
              >
                delete
              </button>
            </li>
          );
        })}
      </div>
    </div>
  );
};

export default Todo_form;
