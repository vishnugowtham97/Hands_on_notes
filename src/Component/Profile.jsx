import React, { useContext } from "react";
import { myContext } from "../Context/userContext";

const Profile = () => {
  const { userName } = useContext(myContext);
  const username = userName.split("@")[0];

  return (
    <div>
      <h1>User Profile Details</h1>
      <h3>User Email:{username}</h3>
      <h3>Happy Login!!!</h3>
    </div>
  );
};

export default Profile;
