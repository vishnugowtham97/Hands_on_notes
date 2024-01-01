import React, { useState } from "react";
import "./Addmember.css";

const Addmember = () => {
  const [name, setName] = useState([]);
  const [email, setEmail] = useState([]);
  const [phone, setPhone] = useState([]);
  const [add, setAdd] = useState([]);
  const [ids, setId] = useState(0);
  const [isEditing, setIsEditing] = useState(false);
  const [editId, setEditId] = useState(null);

  const handleSubmit = (event) => {
    event.preventDefault();
    if (isEditing) {
      const updatedList = add.map((item) =>
        item.id === editId ? { ...item, name, email, phone } : item
      );
      setAdd(updatedList);
      setIsEditing(false);
      setEditId(null);
    } else {
      setId((prevId) => prevId + 1);
      setAdd([...add, { id: ids, name, email, phone, complete: false }]);
    }
    setName("");
    setEmail("");
    setPhone("");
  };

  // const handleSubmit = (event) => {
  //   event.preventDefault();
  // if(isEditing){
  // const updateId = add.map(val=>{
  //   if(val.id === editId){
  //     return [...val, name,email,phone]
  //   }
  //   return val
  // })
  // } else{
  // setId((prevId) => prevId + 1);
  //   setAdd([
  //     ...add,
  //     { id: ids, name: name, email: email, phone: phone, complete: false },
  //   ]);
  // }
  //   setEmail("");
  //   setName("");
  //   setPhone("");
  // };

  const handleEdit = (item) => {
    setIsEditing(true);
    setEditId(item.id);
    setName(item.name);
    setEmail(item.email);
    setPhone(item.phone);
  };

  const handleDelete = ({ id }) => {
    setAdd(add.filter((val) => val.id !== id));
  };
  const handleComplete = ({ id }) => {
    let updatesList = add.map((val) => {
      if (val.id === id) {
        val.complete = !val.complete;
      }
      return val;
    });
    setAdd(updatesList);
  };

  return (
    <div>
      <div className="crud-operation">
        <h3>Simple CRUD Operation</h3>
        <form onSubmit={handleSubmit}>
          <input
            type="text"
            required
            placeholder="enter the name"
            value={name}
            onChange={(e) => {
              setName(e.target.value);
            }}
          />
          <input
            type="email"
            required
            placeholder="enter the email"
            value={email}
            onChange={(e) => {
              setEmail(e.target.value);
            }}
          />
          <input
            type="number"
            required
            placeholder="enter the phone Number"
            value={phone}
            onChange={(e) => {
              setPhone(e.target.value);
            }}
          />
          <button className="add-btn">+</button>
        </form>
      </div>

      <div className="table_contain">
        <table className="table_crud">
          <thead>
            <tr>
              <th>Name</th>
              <th>Email</th>
              <th>Phone Number</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            {add.map((val, ind) => {
              return (
                <tr
                  key={ind}
                  className={`tr-row ${val.complete ? "complete" : ""}`}
                >
                  <td>{val.name}</td>
                  <td>{val.email}</td>
                  <td>{val.phone}</td>
                  <td>
                    <button
                      className="btn"
                      onClick={() => {
                        handleEdit(val);
                      }}
                    >
                      Edit
                    </button>
                    <button
                      className="btn"
                      onClick={() => {
                        handleDelete(val);
                      }}
                    >
                      Delete
                    </button>
                    <button
                      className="btn"
                      onClick={() => {
                        handleComplete(val);
                      }}
                    >
                      Complete
                    </button>
                  </td>
                </tr>
              );
            })}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default Addmember;
