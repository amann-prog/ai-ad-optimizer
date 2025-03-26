-- 1. Creating 'videos' table
CREATE TABLE videos (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    url TEXT NOT NULL,
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Creating 'video_frames' table
CREATE TABLE video_frames (
    id SERIAL PRIMARY KEY,
    video_id INT REFERENCES videos(id) ON DELETE CASCADE,
    frame_path TEXT NOT NULL,
    timestamp FLOAT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Creating 'sentiment_analysis' table
CREATE TABLE sentiment_analysis (
    id SERIAL PRIMARY KEY,
    frame_id INT REFERENCES video_frames(id) ON DELETE CASCADE,
    sentiment_score FLOAT NOT NULL,
    engagement_score FLOAT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
