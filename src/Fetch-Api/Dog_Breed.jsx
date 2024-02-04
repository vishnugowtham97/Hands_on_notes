import React, { useEffect, useState } from "react";
import axios from "axios";

function Dog_Breed() {
  const [data, setData] = useState([]);
  const [filteredData, setFilteredData] = useState([]);

  useEffect(() => {
    axios
      .get("https://dog.ceo/api/breeds/list/all")
      .then((res) => {
        setData(res.data.message);
      })
      .catch((err) => {
        console.error(err);
      });
  }, []);

  const handleSearch = (event) => {
    const breed = event.target.value.trim().toLowerCase();
    if (!breed) {
      setFilteredData([]);
      return;
    }

    const findBreed = Object.entries(data).filter(([breedName]) =>
      breedName.toLowerCase().includes(breed)
    );

    setFilteredData(findBreed);
  };

  const breedsToDisplay =
    filteredData.length > 0 ? filteredData : Object.entries(data);

  return (
    <div className="container">
      <h1>Fetching API's</h1>
      <input type="text" placeholder="Enter the breed" onKeyUp={handleSearch} />
      <table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Sub-breeds Count</th>
          </tr>
        </thead>
        <tbody>
          {breedsToDisplay.map(([breedName, subBreeds]) => (
            <tr key={breedName}>
              <td>{breedName}</td>
              <td>{subBreeds.length}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}

export default Dog_Breed;
