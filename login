import React, { useState } from "react";
const App = () => {
  const [data, setData] = useState({
    Username: "",
    Password: ""
  });
  const { username, Password } = data;
  const changeHandler = (e) => {
    setData({ ...data, [e.target.name]: [e.target.value] });
  };
  const submitHandler = (e) => {
    e.preventDefault();
    console.log(data);
  };
  return (
    <div>
      <center>
        <form onSubmit={submitHandler}>
          <input
            type="text"
            name="Username"
            value={username}
            onChange={changeHandler}
          />
          <br />
          <br />
          <input
            type="password"
            name="Password"
            value={Password}
            onChange={changeHandler}
          />
          <br />
          <br />
          <input type="submit" name="Submit" />
        </form>
      </center>
    </div>
  );
};
export default App;
