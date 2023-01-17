DROP TABLE IF EXISTS projects;

CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL, 
    project_picture_url TEXT NOT NULL,
     /* tags TEXT[], */
    about TEXT NOT NULL,
    more_pictures TEXT[],
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO projects(project_name, project_picture_url, about)
VALUES ('Marie, das Damwildbaby', '/media/Andere1.JPG', 
'Tatsächlich handelt es sich hier um ein Hirschbaby!');


INSERT INTO projects(project_name, project_picture_url, about)
VALUES ('Kleines Eichhörnchenbaby', '/media/Eichhörnchen5.jpg', 
'Sehr junges Eichhörnchenbaby, nur wenige Tage alt.');

INSERT INTO projects(project_name, project_picture_url, about)
VALUES ('Zutraulicher Waschbär', '/media/Waschbär1.JPG', 
'Flaschenkinder vergessen ihre Zieheltern niemals :-)');

INSERT INTO projects(project_name, project_picture_url, about)
VALUES ('Eichhörnchen beim Trinken auf dem Rücken', '/media/Eichhörnchen1.JPG', 
'Die Rückenlage beim Trinken sollte vermieden werden - außer in Ausnahmefällen, wenn das Tier z.B. ausschließlich in dieser Position trinkt.');

INSERT INTO projects(project_name, project_picture_url, about)
VALUES ('Rehkitz', '/media/Andere2.JPG', 
'Ist das Rehkitz nicht süß?');

INSERT INTO projects(project_name, project_picture_url, about)
VALUES ('Eichhörnchen greift beim Trinken', '/media/Eichhörnchen2.JPG', 
'Viele Eichhörnchen halten die Flasche beim Trinken fest.');

INSERT INTO projects(project_name, project_picture_url, about)
VALUES ('Eichhörnchen beim Trinken', '/media/Eichhörnchen3.JPG' , 
'Jedes Eichhörnchen trinkt ein bisschen anders.');

INSERT INTO projects(project_name, project_picture_url, about)
VALUES ('Fred & Frieda 4', '/media/Waschbär6.jpg', 
'Das kitzelt ganz schön :-)');

INSERT INTO projects(project_name, project_picture_url, about)
VALUES ('Eichhörnchen in der Tasse', '/media/Eichhörnchen4.JPG', 
'Nanu? Eigentlich wollte ich ja einen Kaffee trinken...');

INSERT INTO projects(project_name, project_picture_url, about)
VALUES ('Eichhörnchen schläft', '/media/Eichhörnchen6.jpg', 
'Eichhörnchenkinder machen es sich gerne bei ihren Zieheltern gemütlich.');

