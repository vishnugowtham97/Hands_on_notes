import React from "react";
import Addmember from "../Crud/Addmember";
import Todo_form from "../Todo/Todo_form";
import Form from "../Form_Validation/Form";

const CrudTodo = () => {
  return (
    <div>
      <Addmember />
      <Todo_form />
      <Form />
    </div>
  );
};

export default CrudTodo;
