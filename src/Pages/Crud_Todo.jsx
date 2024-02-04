import React from "react";
import Addmember from "../Crud/Addmember";
import Todo_form from "../Todo/Todo_form";
import Form from "../Form_Validation/Form";
import Movie_api from "../Fetch-Api/Movie_api";
import Dog_Breed from "../Fetch-Api/Dog_Breed";
import Yes_or_No from "../Fetch-Api/YesorNo";

const CrudTodo = () => {
  return (
    <div>
      <Addmember />
      <Todo_form />
      <Form />
      <Movie_api />
      <Dog_Breed />
      <Yes_or_No />
    </div>
  );
};

export default CrudTodo;
