import React, { useContext } from "react";
import Profile from "../Component/Profile";
import { myContext } from "../Context/userContext";
import Login from "../Component/Login";

const ProfilePage = () => {
  const { detail } = useContext(myContext);
  return <div>{detail ? <Profile /> : <Login />}</div>;
};

export default ProfilePage;
