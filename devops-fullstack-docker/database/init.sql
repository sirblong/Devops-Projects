-- Tạo bảng activities
CREATE TABLE IF NOT EXISTS activities (
    id SERIAL PRIMARY KEY,
    activity VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Chèn dữ liệu mẫu
INSERT INTO activities (activity) VALUES ('Running');
INSERT INTO activities (activity) VALUES ('Swimming');
INSERT INTO activities (activity) VALUES ('Cycling');