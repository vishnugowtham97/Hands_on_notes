import React, { useState } from "react";
import "./Video.css";
import { videoData } from "./VideoContainer";

export function Video(props) {
  const [searchQuery, setSearchQuery] = useState("");
  const [selectedVideo, setSelectedVideo] = useState(null);

  const filteredVideos = videoData.filter(
    (video) =>
      video.title.toLowerCase().includes(searchQuery.toLowerCase()) ||
      video.description.toLowerCase().includes(searchQuery.toLowerCase())
  );

  const handleVideoClick = (video) => {
    setSelectedVideo(video);
  };

  return (
    <div>
      <div className="search-bar">
        <input
          type="text"
          placeholder="Search videos..."
          value={searchQuery}
          onChange={(e) => setSearchQuery(e.target.value)}
        />
      </div>
      <div className="video-gallery">
        {filteredVideos.map((video, index) => (
          <div
            key={index}
            className="video-card"
            onClick={() => handleVideoClick(video)}
          >
            <img
              src={video.thumbnail}
              alt={video.title}
              className="thumbnail"
            />
            <div className="video-info">
              <div className="video-title">{video.title}</div>
              <div className="video-description">{video.description}</div>
            </div>
          </div>
        ))}
      </div>
      {selectedVideo && (
        <div className="video-player">
          <h2>{selectedVideo.title}</h2>
          <video controls width="640" height="360">
            <source src={selectedVideo.videoUrl} type="video/mp4" />
            Your browser does not support the video tag.
          </video>
        </div>
      )}
    </div>
  );
}
