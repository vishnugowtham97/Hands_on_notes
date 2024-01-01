import { configureStore } from "@reduxjs/toolkit";
import counterReducer from "../Reducer/counterSlice";
import userReducer from "../Reducer/userSlice";
import productReducer from "../Reducer/productSlice";

export default configureStore({
  reducer: {
    counter: counterReducer,
    user: userReducer,
    product: productReducer,
  },
});
