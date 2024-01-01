import React from "react";
import { useSelector } from "react-redux";

const User = () => {
  const value = useSelector((state) => state.user.value);
  return (
    <div className="container">
      <div className="row">
        <h4>User Details </h4>
        {value && value.length > 0
          ? value.map((item, index) => {
              return (
                <>
                  <div key={index}>
                    <h4>{item.name}</h4>
                    <h4>{item.email}</h4>
                  </div>
                </>
              );
            })
          : "loading..."}
      </div>
    </div>
  );
};

export default User;
