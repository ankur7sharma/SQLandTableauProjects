-- All the tables with relationships created here
USE instagram;
CREATE TABLE IF NOT EXISTS users
(
	user_id INT AUTO_INCREMENT PRIMARY KEY ,
    username VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS photos
(
	photo_id INT AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY fk_photos_users (user_id) 
		REFERENCES users (user_id)
		ON UPDATE CASCADE
        ON DELETE NO ACTION
);
CREATE TABLE IF NOT EXISTS comments
(
	comment_id INT AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY fk_comments_users (user_id)
		REFERENCES users (user_id)
		ON UPDATE CASCADE
        ON DELETE NO ACTION,
	FOREIGN KEY fk_comments_photos (photo_id)
		REFERENCES photos (photo_id)
		ON UPDATE CASCADE
        ON DELETE NO ACTION
);
CREATE TABLE IF NOT EXISTS likes
(	-- no like id as it won't be used anywhere else
	user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY fk_likes_users (user_id)
		REFERENCES users (user_id)
		ON UPDATE CASCADE
        ON DELETE NO ACTION,
	FOREIGN KEY fk_likes_photos (photo_id)
		REFERENCES photos (photo_id)
		ON UPDATE CASCADE
        ON DELETE NO ACTION,
	PRIMARY KEY (user_id, photo_id) -- so only 1 unique combination possible for user id and photo id, hence 1 like per user
);
CREATE TABLE IF NOT EXISTS follows
(
	follower_id INT NOT NULL,
    followee_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY fk_follows_users1 (follower_id)
		REFERENCES users (user_id)
        ON UPDATE CASCADE
        ON DELETE NO ACTION,
	FOREIGN KEY fk_follows_users2 (followee_id)
		REFERENCES users (user_id)
        ON UPDATE CASCADE
        ON DELETE NO ACTION,
        -- now we want only 1 of the foreign key relationship, so if user id 1 is following user id 2, it can happen only once
        -- hence we use primary key here. Sequence doesn't matter
	PRIMARY KEY (follower_id, followee_id)
);
CREATE TABLE IF NOT EXISTS tags
(
	tag_id INT AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS photo_tags
(
	photo_id INT NOT NULL,
    tag_id INT NOT NULL,
    FOREIGN KEY fk_photo_tags_photos (photo_id)
		REFERENCES photos (photo_id)
        ON UPDATE CASCADE
        ON DELETE NO ACTION,
	FOREIGN KEY fk_photo_tags_tags (tag_id)
		REFERENCES tags (tag_id)
        ON UPDATE CASCADE
        ON DELETE NO ACTION,
    PRIMARY KEY (photo_id, tag_id)
);
