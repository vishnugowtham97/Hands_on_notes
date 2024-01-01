import React, { useContext } from "react";
import Productpage from "../Component/Productpage";
import { myContext } from "../Context/userContext";

const Product = () => {
  const { userName } = useContext(myContext);

  return (
    <div>
      <p>Happy buying {userName}</p>
      <Productpage />
    </div>
  );
};

export default Product;
