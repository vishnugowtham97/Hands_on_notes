import React, { useState, useEffect } from "react";

const Movie_api = () => {
  const [movie, setMovie] = useState([]);
  const [filterdata, setFilterdata] = useState([]);
  const [selectedMovie, setSelectedMovie] = useState(null);
  const [startYear, setStartYear] = useState("");
  const [endYear, setEndYear] = useState("");
  const [selectedGenre, setSelectedGenre] = useState("");
  const [selectedYear, setSelectedYear] = useState("");

  const api =
    "https://gitlab.com/gvanderput/gerard-movie-filtering/-/raw/master/data/movies.json";

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    try {
      const res = await fetch(api);
      if (!res.ok) {
        throw new Error(`Http request error, status ${res.status}`);
      }
      const data = await res.json();
      setMovie(data);
    } catch (error) {
      console.error("fetch error", error);
    }
  };

  const handleMovie = (event) => {
    const movienme = event.target.value.trim().toLowerCase();
    if (!movienme) {
      setFilterdata(movie);
      return;
    }
    const findMovie = movie.filter((val) =>
      val.title.toLowerCase().startsWith(movienme)
    );
    setFilterdata(findMovie);
  };

  const handleYear = (event) => {
    const movieyrs = event.target.value;
    if (!movieyrs) {
      setFilterdata(movie);
      return;
    }
    const findYear = movie.filter((val) => val.year === Number(movieyrs));
    setFilterdata(findYear);
  };

  const handleYear_X_Y = () => {
    if (!startYear || !endYear) {
      setFilterdata([]);
      return;
    }

    const startYearValue = parseInt(startYear);
    const endYearValue = parseInt(endYear);

    if (
      isNaN(startYearValue) ||
      isNaN(endYearValue) ||
      startYearValue > endYearValue
    ) {
      setFilterdata([]);
      return;
    }

    const moviesBetweenYears = movie.filter(
      (val) => val.year >= startYearValue && val.year <= endYearValue
    );

    setFilterdata(moviesBetweenYears);
  };

  const handleGeners_X_after_Y = () => {
    if (!selectedGenre || !selectedYear) {
      setFilterdata([]);
      return;
    }

    const genreValue = parseInt(selectedGenre);
    const yearValue = parseInt(selectedYear);

    if (isNaN(genreValue) || isNaN(yearValue)) {
      setFilterdata([]);
      return;
    }

    const moviesMatchingGenreAndYear = movie.filter(
      (val) => val.genreIds.includes(genreValue) && val.year > yearValue
    );

    setFilterdata(moviesMatchingGenreAndYear);
  };

  const handleDetails = (movie) => {
    setSelectedMovie(movie);
  };

  return (
    <div>
      <h2>Fetch api</h2>
      <input type="text" placeholder="enter the movie" onKeyUp={handleMovie} />
      <input
        type="number"
        placeholder="enter the movie year"
        onKeyUp={handleYear}
      />
      <div>
        <input
          type="number"
          placeholder="start year"
          value={startYear}
          onChange={(e) => setStartYear(e.target.value)}
        />
        <input
          type="number"
          placeholder="end year"
          value={endYear}
          onChange={(e) => setEndYear(e.target.value)}
        />
        <button onClick={handleYear_X_Y}>Year between X & Y</button>
      </div>
      <div>
        <input
          type="number"
          placeholder="enter the movie generIds"
          value={selectedGenre}
          onChange={(e) => setSelectedGenre(e.target.value)}
        />
        <input
          type="number"
          placeholder="enter the movie year"
          value={selectedYear}
          onChange={(e) => setSelectedYear(e.target.value)}
        />
        <button onClick={handleGeners_X_after_Y}>
          Gerner x after the year Y
        </button>
      </div>
      <table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Year</th>
            <th>Votes</th>
            <th>Gener</th>
            <th>Description</th>
            <th>Action</th>
          </tr>
        </thead>
        {filterdata && filterdata.length > 0 ? (
          <tbody>
            {filterdata.map((val, ind) => {
              return (
                <tr key={ind}>
                  <td>{val.title}</td>
                  <td>{val.year}</td>
                  <td>{val.votes}</td>
                  <td>{val.genreIds.join(",")}</td>
                  <td>{val.description}</td>
                  <td>
                    <button onClick={() => handleDetails(val)}>
                      Show Details
                    </button>
                  </td>
                </tr>
              );
            })}
          </tbody>
        ) : (
          <tbody>
            <tr>
              <td colSpan="6">Data Loading</td>
            </tr>
          </tbody>
        )}
      </table>

      {selectedMovie && (
        <div>
          <h3>Selected Movie Details</h3>
          <p>Name: {selectedMovie.title}</p>
          <p>Year: {selectedMovie.year}</p>
          <p>Votes: {selectedMovie.votes}</p>
          <p>Gener: {selectedMovie.genreIds.join(",")}</p>
          <p>Description: {selectedMovie.description}</p>
        </div>
      )}
    </div>
  );
};

export default Movie_api;
