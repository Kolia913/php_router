CREATE TABLE listings (
    id INT AUTO_INCREMENT,
    user_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description LONGTEXT NULL,
    salary VARCHAR(45) NULL,
    tags VARCHAR(255) NULL,
    company VARCHAR(45) NULL,
    address VARCHAR(255) NULL,
    city VARCHAR(45) NULL,
    state VARCHAR(45) NULL,
    phone VARCHAR(45) NULL,
    email VARCHAR(45) NULL,
    requirements LONGTEXT NULL,
    benefits LONGTEXT NULL,
    created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

ALTER TABLE workopia.listings ADD CONSTRAINT fk_listings_users
    FOREIGN KEY (user_id) REFERENCES workopia.users (id) ON DELETE CASCADE
    ON UPDATE CASCADE;

ALTER TABLE workopia.listings
    ADD INDEX fk_listings_users_idx (user_id ASC) VISIBLE;


CREATE TABLE users (
    id INT AUTO_INCREMENT,
    name VARCHAR(255) NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    city VARCHAR(45) NULL,
    state VARCHAR(45) NULL,
    created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

INSERT INTO users (name, email, password, city, state)
VALUES ('John Doe', 'user1@gmail.com', '123456', 'Boston', 'MA');

INSERT INTO users (name, email, password, city, state)
VALUES ('Jane Doe', 'user2@gmail.com', '123456', 'San Francisco', 'CA');

INSERT INTO users (name, email, password, city, state)
VALUES ('Steve Smith', 'user3@gmail.com', '123456', 'Chicago', 'IL');

SELECT * FROM users;

INSERT INTO listings (user_id, title, description, salary, tags, company, address, city, state, phone, email, requirements, benefits)
VALUES (1, 'Software Engineer', 'We are seeking a skilled software engineer to develop high-quality software solutions', '90000', 'development, coding, java, python', 'Tech Solutions Inc.', '123 Main St', 'Albany', 'NY', '348-334-3949', 'info@techsolutions.com', 'Bachelors degree in Computer Science or related field, 3+ years of software development experience', 'Healthcare, 401(k) matching, flexible work hours');

INSERT INTO listings (user_id, title, description, salary, tags, company, address, city, state, phone, email, requirements, benefits)
VALUES (2, 'Marketing Specialist', 'We are looking for a Marketing Specialist to create and manage marketing campaigns', '70000', 'marketing, advertising', 'Marketing Pros', '456 Market St', 'San Francisco', 'CA', '454-344-3344', 'info@marketingpros.com', 'Bachelors degree in Marketing or related field, experience in digital marketing', 'Health and dental insurance, paid time off, remote work options');

INSERT INTO listings (user_id, title, description, salary, tags, company, address, city, state, phone, email, requirements, benefits)
VALUES (3, 'Web Developer', 'Join our team as a Web Developer and create amazing web applications', '85000', 'web development, programming', 'WebTech Solutions', '789 Web Ave', 'Chicago', 'IL', '456-876-5432', 'info@webtechsolutions.com', 'Bachelors degree in Computer Science or related field, proficiency in HTML, CSS, JavaScript', 'Competitive salary, professional development opportunities, friendly work environment');

INSERT INTO listings (user_id, title, description, salary, tags, company, address, city, state, phone, email, requirements, benefits)
VALUES (1, 'Data Analyst', 'We are hiring a Data Analyst to analyze and interpret data for insights', '75000', 'data analysis, statistics', 'Data Insights LLC', '101 Data St', 'Chicago', 'IL', '444-555-5555', 'info@datainsights.com', 'Bachelors degree in Data Science or related field, strong analytical skills', 'Health benefits, remote work options, casual dress code');

INSERT INTO listings (user_id, title, description, salary, tags, company, address, city, state, phone, email, requirements, benefits)
VALUES (1, 'Data Scientist', 'We\'re looking for a Data Scientist to analyze complex data and generate insights', '100000', 'data science, machine learning', 'DataGenius Corp', '567 Data Drive', 'Boston', 'MA', '684-789-1234', 'info@datagenius.com', 'Masters or Ph.D. in Data Science or related field, experience with machine learning algorithms', 'Competitive salary, remote work options, professional development');

INSERT INTO listings (user_id, title, description, salary, tags, company, address, city, state, phone, email, requirements, benefits)
VALUES (2, 'Graphic Designer', 'Join our creative team as a Graphic Designer and bring ideas to life', '70000', 'graphic design, creative', 'CreativeWorks Inc.', '234 Design Blvd', 'Albany', 'NY', '499-321-9876', 'info@creativeworks.com', 'Bachelors degree in Graphic Design or related field, proficiency in Adobe Creative Suite', 'Flexible work hours, creative work environment, opportunities for growth');

SELECT * FROM listings;