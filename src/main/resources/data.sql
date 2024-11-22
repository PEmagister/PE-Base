truncate question, answer, speciality cascade;

-- Insert Groups
insert into speciality (id, speciality) values (1, 'technical');
insert into speciality (id, speciality) values (2, 'humanitarian');
insert into speciality (id, speciality) values (3, 'artistic');

-- Insert Question/Answers
insert into question (id, question, speciality_id) values (1, 'What does HTML stand for?', 1);
insert into answer (id, answer, correct, question_id) values (1, 'Hyperlinks and Text Markup Language', false, 1);
insert into answer (id, answer, correct, question_id) values (2, 'Home Tool Markup Language', false, 1);
insert into answer (id, answer, correct, question_id) values (3, 'Hyper Text Markup Language', true, 1);
insert into answer (id, answer, correct, question_id) values (4, 'Hyper Text Markup Leveler', false, 1);

insert into question (id, question, speciality_id) values (2, 'Which language is primarily used for Android app development?', 1);
insert into answer (id, answer, correct, question_id) values (5, 'Swift', false, 2);
insert into answer (id, answer, correct, question_id) values (6, 'Kotlin', true, 2);
insert into answer (id, answer, correct, question_id) values (7, 'JavaScript', false, 2);
insert into answer (id, answer, correct, question_id) values (8, 'C++', false, 2);

insert into question (id, question, speciality_id) values (3, 'Which protocol is used to retrieve email from a server?', 1);
insert into answer (id, answer, correct, question_id) values (9, 'SMTP', false, 3);
insert into answer (id, answer, correct, question_id) values (10, 'POP3', true, 3);
insert into answer (id, answer, correct, question_id) values (11, 'HTTP', false, 3);
insert into answer (id, answer, correct, question_id) values (12, 'FTP', false, 3);

insert into question (id, question, speciality_id) values (4, 'Which one of these is a NoSQL database?', 1);
insert into answer (id, answer, correct, question_id) values (13, 'MySQL', false, 4);
insert into answer (id, answer, correct, question_id) values (14, 'PostgreSQL', false, 4);
insert into answer (id, answer, correct, question_id) values (15, 'MongoDB', true, 4);
insert into answer (id, answer, correct, question_id) values (16, 'SQLite', false, 4);

insert into question (id, question, speciality_id) values (5, 'Which of the following is not a programming language?', 1);
insert into answer (id, answer, correct, question_id) values (17, 'Python', false, 5);
insert into answer (id, answer, correct, question_id) values (18, 'HTML', true, 5);
insert into answer (id, answer, correct, question_id) values (19, 'Java', false, 5);
insert into answer (id, answer, correct, question_id) values (20, 'C#', false, 5);

insert into question (id, question, speciality_id) values (6, 'Which of these is used for version control?', 1);
insert into answer (id, answer, correct, question_id) values (21, 'Git', true, 6);
insert into answer (id, answer, correct, question_id) values (22, 'Jenkins', false, 6);
insert into answer (id, answer, correct, question_id) values (23, 'Docker', false, 6);
insert into answer (id, answer, correct, question_id) values (24, 'Ansible', false, 6);

insert into question (id, question, speciality_id) values (7, 'Which CSS property is used to change text color?', 1);
insert into answer (id, answer, correct, question_id) values (25, 'text-color', false, 7);
insert into answer (id, answer, correct, question_id) values (26, 'font-color', false, 7);
insert into answer (id, answer, correct, question_id) values (27, 'color', true, 7);
insert into answer (id, answer, correct, question_id) values (28, 'background-color', false, 7);

insert into question (id, question, speciality_id) values (8, 'Which tag is used to create a hyperlink in HTML?', 1);
insert into answer (id, answer, correct, question_id) values (29, '<a>', true, 8);
insert into answer (id, answer, correct, question_id) values (30, '<link>', false, 8);
insert into answer (id, answer, correct, question_id) values (31, '<href>', false, 8);
insert into answer (id, answer, correct, question_id) values (32, '<hyper>', false, 8);

insert into question (id, question, speciality_id) values (9, 'What does SQL stand for?', 1);
insert into answer (id, answer, correct, question_id) values (33, 'Structured Query Language', true, 9);
insert into answer (id, answer, correct, question_id) values (34, 'Simple Query Language', false, 9);
insert into answer (id, answer, correct, question_id) values (35, 'Sequential Query Language', false, 9);
insert into answer (id, answer, correct, question_id) values (36, 'Scripted Query Language', false, 9);

insert into question (id, question, speciality_id) values (10, 'What is the purpose of the "div" tag in HTML?', 1);
insert into answer (id, answer, correct, question_id) values (37, 'To create a division or section', true, 10);
insert into answer (id, answer, correct, question_id) values (38, 'To add a line break', false, 10);
insert into answer (id, answer, correct, question_id) values (39, 'To italicize text', false, 10);
insert into answer (id, answer, correct, question_id) values (40, 'To insert a hyperlink', false, 10);

insert into question (id, question, speciality_id) values (11, 'Which of these is a front-end framework?', 1);
insert into answer (id, answer, correct, question_id) values (41, 'Django', false, 11);
insert into answer (id, answer, correct, question_id) values (42, 'Laravel', false, 11);
insert into answer (id, answer, correct, question_id) values (43, 'React', true, 11);
insert into answer (id, answer, correct, question_id) values (44, 'Flask', false, 11);

insert into question (id, question, speciality_id) values (12, 'Which JavaScript framework is used for building mobile apps?', 1);
insert into answer (id, answer, correct, question_id) values (45, 'Angular', false, 12);
insert into answer (id, answer, correct, question_id) values (46, 'Vue', false, 12);
insert into answer (id, answer, correct, question_id) values (47, 'React Native', true, 12);
insert into answer (id, answer, correct, question_id) values (48, 'Svelte', false, 12);

insert into question (id, question, speciality_id) values (13, 'Which of these is a Python web framework?', 1);
insert into answer (id, answer, correct, question_id) values (49, 'Laravel', false, 13);
insert into answer (id, answer, correct, question_id) values (50, 'Express', false, 13);
insert into answer (id, answer, correct, question_id) values (51, 'Django', true, 13);
insert into answer (id, answer, correct, question_id) values (52, 'Spring', false, 13);

insert into question (id, question, speciality_id) values (14, 'Which of these is not an operating system?', 1);
insert into answer (id, answer, correct, question_id) values (53, 'Windows', false, 14);
insert into answer (id, answer, correct, question_id) values (54, 'Linux', false, 14);
insert into answer (id, answer, correct, question_id) values (55, 'Oracle', true, 14);
insert into answer (id, answer, correct, question_id) values (56, 'MacOS', false, 14);

insert into question (id, question, speciality_id) values (15, 'Which language is used for web development?', 1);
insert into answer (id, answer, correct, question_id) values (57, 'C#', false, 15);
insert into answer (id, answer, correct, question_id) values (58, 'Java', false, 15);
insert into answer (id, answer, correct, question_id) values (59, 'JavaScript', true, 15);
insert into answer (id, answer, correct, question_id) values (60, 'Python', false, 15);

insert into question (id, question, speciality_id) values (16, 'Which method is used to parse a string into an integer in Java?', 1);
insert into answer (id, answer, correct, question_id) values (61, 'parseInt()', true, 16);
insert into answer (id, answer, correct, question_id) values (62, 'toInt()', false, 16);
insert into answer (id, answer, correct, question_id) values (63, 'Integer.parse()', false, 16);
insert into answer (id, answer, correct, question_id) values (64, 'convertInt()', false, 16);

insert into question (id, question, speciality_id) values (17, 'What does API stand for?', 1);
insert into answer (id, answer, correct, question_id) values (65, 'Application Programming Interface', true, 17);
insert into answer (id, answer, correct, question_id) values (66, 'Automated Programming Interface', false, 17);
insert into answer (id, answer, correct, question_id) values (67, 'Advanced Programming Interface', false, 17);
insert into answer (id, answer, correct, question_id) values (68, 'Accessible Programming Interface', false, 17);

insert into question (id, question, speciality_id) values (18, 'Which of the following is used to style web pages?', 1);
insert into answer (id, answer, correct, question_id) values (69, 'HTML', false, 18);
insert into answer (id, answer, correct, question_id) values (70, 'CSS', true, 18);
insert into answer (id, answer, correct, question_id) values (71, 'JavaScript', false, 18);
insert into answer (id, answer, correct, question_id) values (72, 'SQL', false, 18);

insert into question (id, question, speciality_id) values (19, 'Which of the following is not a database management system?', 1);
insert into answer (id, answer, correct, question_id) values (73, 'Oracle', false, 19);
insert into answer (id, answer, correct, question_id) values (74, 'MySQL', false, 19);
insert into answer (id, answer, correct, question_id) values (75, 'Apache', true, 19);
insert into answer (id, answer, correct, question_id) values (76, 'PostgreSQL', false, 19);

insert into question (id, question, speciality_id) values (20, 'Which programming language is known for its simplicity and readability?', 1);
insert into answer (id, answer, correct, question_id) values (77, 'C++', false, 20);
insert into answer (id, answer, correct, question_id) values (78, 'Java', false, 20);
insert into answer (id, answer, correct, question_id) values (79, 'Python', true, 20);
insert into answer (id, answer, correct, question_id) values (80, 'Assembly', false, 20);

insert into question (id, question, speciality_id) values (21, 'Which technology is used for containerization?', 1);
insert into answer (id, answer, correct, question_id) values (81, 'Docker', true, 21);
insert into answer (id, answer, correct, question_id) values (82, 'Git', false, 21);
insert into answer (id, answer, correct, question_id) values (83, 'Kubernetes', false, 21);
insert into answer (id, answer, correct, question_id) values (84, 'Jenkins', false, 21);

insert into question (id, question, speciality_id) values (22, 'Which of these is a distributed version control system?', 1);
insert into answer (id, answer, correct, question_id) values (85, 'Git', true, 22);
insert into answer (id, answer, correct, question_id) values (86, 'Subversion', false, 22);
insert into answer (id, answer, correct, question_id) values (87, 'Mercurial', false, 22);
insert into answer (id, answer, correct, question_id) values (88, 'CVS', false, 22);

insert into question (id, question, speciality_id) values (23, 'Which command is used to initialize a new Git repository?', 1);
insert into answer (id, answer, correct, question_id) values (89, 'git start', false, 23);
insert into answer (id, answer, correct, question_id) values (90, 'git init', true, 23);
insert into answer (id, answer, correct, question_id) values (91, 'git create', false, 23);
insert into answer (id, answer, correct, question_id) values (92, 'git begin', false, 23);

insert into question (id, question, speciality_id) values (24, 'What does CSS stand for?', 1);
insert into answer (id, answer, correct, question_id) values (93, 'Computer Style Sheets', false, 24);
insert into answer (id, answer, correct, question_id) values (94, 'Cascading Style Sheets', true, 24);
insert into answer (id, answer, correct, question_id) values (95, 'Creative Style Sheets', false, 24);
insert into answer (id, answer, correct, question_id) values (96, 'Colorful Style Sheets', false, 24);

insert into question (id, question, speciality_id) values (25, 'Which tool is used for continuous integration?', 1);
insert into answer (id, answer, correct, question_id) values (97, 'Docker', false, 25);
insert into answer (id, answer, correct, question_id) values (98, 'Kubernetes', false, 25);
insert into answer (id, answer, correct, question_id) values (99, 'Jenkins', true, 25);
insert into answer (id, answer, correct, question_id) values (100, 'Ansible', false, 25);

insert into question (id, question, speciality_id) values (26, 'Which language is used for machine learning and data science?', 1);
insert into answer (id, answer, correct, question_id) values (101, 'JavaScript', false, 26);
insert into answer (id, answer, correct, question_id) values (102, 'PHP', false, 26);
insert into answer (id, answer, correct, question_id) values (103, 'Python', true, 26);
insert into answer (id, answer, correct, question_id) values (104, 'C#', false, 26);

insert into question (id, question, speciality_id) values (27, 'Which database system uses document-based storage?', 1);
insert into answer (id, answer, correct, question_id) values (105, 'MySQL', false, 27);
insert into answer (id, answer, correct, question_id) values (106, 'PostgreSQL', false, 27);
insert into answer (id, answer, correct, question_id) values (107, 'MongoDB', true, 27);
insert into answer (id, answer, correct, question_id) values (108, 'SQLite', false, 27);

insert into question (id, question, speciality_id) values (28, 'Which of these is a type of cloud service?', 1);
insert into answer (id, answer, correct, question_id) values (109, 'IaaS', false, 28);
insert into answer (id, answer, correct, question_id) values (110, 'SaaS', false, 28);
insert into answer (id, answer, correct, question_id) values (111, 'PaaS', false, 28);
insert into answer (id, answer, correct, question_id) values (112, 'All of the above', true, 28);

insert into question (id, question, speciality_id) values (29, 'What does HTTP stand for?', 1);
insert into answer (id, answer, correct, question_id) values (113, 'Hypertext Transfer Protocol', true, 29);
insert into answer (id, answer, correct, question_id) values (114, 'Hyper Tool Protocol', false, 29);
insert into answer (id, answer, correct, question_id) values (115, 'Hypertext Transport Protocol', false, 29);
insert into answer (id, answer, correct, question_id) values (116, 'Hyperlink Text Protocol', false, 29);

insert into question (id, question, speciality_id) values (30, 'Which tool is used to automate infrastructure?', 1);
insert into answer (id, answer, correct, question_id) values (117, 'Docker', false, 30);
insert into answer (id, answer, correct, question_id) values (118, 'Terraform', true, 30);
insert into answer (id, answer, correct, question_id) values (119, 'Jenkins', false, 30);
insert into answer (id, answer, correct, question_id) values (120, 'Git', false, 30);

insert into question (id, question, speciality_id) values (31, 'Which of these is a backend framework?', 1);
insert into answer (id, answer, correct, question_id) values (121, 'React', false, 31);
insert into answer (id, answer, correct, question_id) values (122, 'Vue', false, 31);
insert into answer (id, answer, correct, question_id) values (123, 'Node.js', true, 31);
insert into answer (id, answer, correct, question_id) values (124, 'Angular', false, 31);

insert into question (id, question, speciality_id) values (32, 'Which protocol is used for secure communication over the Internet?', 1);
insert into answer (id, answer, correct, question_id) values (125, 'HTTP', false, 32);
insert into answer (id, answer, correct, question_id) values (126, 'FTP', false, 32);
insert into answer (id, answer, correct, question_id) values (127, 'SMTP', false, 32);
insert into answer (id, answer, correct, question_id) values (128, 'HTTPS', true, 32);

insert into question (id, question, speciality_id) values (33, 'What does JSON stand for?', 1);
insert into answer (id, answer, correct, question_id) values (129, 'JavaScript Object Notation', true, 33);
insert into answer (id, answer, correct, question_id) values (130, 'JavaScript Online Notation', false, 33);
insert into answer (id, answer, correct, question_id) values (131, 'Java Serialized Object Notation', false, 33);
insert into answer (id, answer, correct, question_id) values (132, 'JavaScript Offline Notation', false, 33);

insert into question (id, question, speciality_id) values (34, 'Which of the following is not a relational database?', 1);
insert into answer (id, answer, correct, question_id) values (133, 'MySQL', false, 34);
insert into answer (id, answer, correct, question_id) values (134, 'MongoDB', true, 34);
insert into answer (id, answer, correct, question_id) values (135, 'PostgreSQL', false, 34);
insert into answer (id, answer, correct, question_id) values (136, 'SQLite', false, 34);

insert into question (id, question, speciality_id) values (35, 'Who is the author of "War and Peace"?', 2);
insert into answer (id, answer, correct, question_id) values (137, 'Leo Tolstoy', true, 35);
insert into answer (id, answer, correct, question_id) values (138, 'Fyodor Dostoevsky', false, 35);
insert into answer (id, answer, correct, question_id) values (139, 'Anton Chekhov', false, 35);
insert into answer (id, answer, correct, question_id) values (140, 'Ivan Turgenev', false, 35);

insert into question (id, question, speciality_id) values (36, 'Which country is known as the "Land of the Rising Sun"?', 2);
insert into answer (id, answer, correct, question_id) values (141, 'China', false, 36);
insert into answer (id, answer, correct, question_id) values (142, 'Japan', true, 36);
insert into answer (id, answer, correct, question_id) values (143, 'South Korea', false, 36);
insert into answer (id, answer, correct, question_id) values (144, 'Thailand', false, 36);

insert into question (id, question, speciality_id) values (37, 'What is the main theme of George Orwell"s "1984"?', 2);
insert into answer (id, answer, correct, question_id) values (145, 'Totalitarianism', true, 37);
insert into answer (id, answer, correct, question_id) values (146, 'Romanticism', false, 37);
insert into answer (id, answer, correct, question_id) values (147, 'Individualism', false, 37);
insert into answer (id, answer, correct, question_id) values (148, 'Environmentalism', false, 37);

insert into question (id, question, speciality_id) values (38, 'Which philosopher is associated with the idea of the "social contract"?', 2);
insert into answer (id, answer, correct, question_id) values (149, 'Karl Marx', false, 38);
insert into answer (id, answer, correct, question_id) values (150, 'John Locke', false, 38);
insert into answer (id, answer, correct, question_id) values (151, 'Jean-Jacques Rousseau', true, 38);
insert into answer (id, answer, correct, question_id) values (152, 'Immanuel Kant', false, 38);

insert into question (id, question, speciality_id) values (39, 'Who painted the "Mona Lisa"?', 2);
insert into answer (id, answer, correct, question_id) values (153, 'Pablo Picasso', false, 39);
insert into answer (id, answer, correct, question_id) values (154, 'Leonardo da Vinci', true, 39);
insert into answer (id, answer, correct, question_id) values (155, 'Vincent van Gogh', false, 39);
insert into answer (id, answer, correct, question_id) values (156, 'Michelangelo', false, 39);

insert into question (id, question, speciality_id) values (40, 'What is the capital of France?', 2);
insert into answer (id, answer, correct, question_id) values (157, 'Paris', true, 40);
insert into answer (id, answer, correct, question_id) values (158, 'Berlin', false, 40);
insert into answer (id, answer, correct, question_id) values (159, 'Madrid', false, 40);
insert into answer (id, answer, correct, question_id) values (160, 'Rome', false, 40);

insert into question (id, question, speciality_id) values (41, 'Who is the author of "The Odyssey"?', 2);
insert into answer (id, answer, correct, question_id) values (161, 'Sophocles', false, 41);
insert into answer (id, answer, correct, question_id) values (162, 'Euripides', false, 41);
insert into answer (id, answer, correct, question_id) values (163, 'Homer', true, 41);
insert into answer (id, answer, correct, question_id) values (164, 'Aristophanes', false, 41);

insert into question (id, question, speciality_id) values (42, 'Which war was fought between the North and South regions in the United States?', 2);
insert into answer (id, answer, correct, question_id) values (165, 'World War I', false, 42);
insert into answer (id, answer, correct, question_id) values (166, 'The Revolutionary War', false, 42);
insert into answer (id, answer, correct, question_id) values (167, 'The Civil War', true, 42);
insert into answer (id, answer, correct, question_id) values (168, 'The Korean War', false, 42);

insert into question (id, question, speciality_id) values (43, 'What is the main religion in India?', 2);
insert into answer (id, answer, correct, question_id) values (169, 'Christianity', false, 43);
insert into answer (id, answer, correct, question_id) values (170, 'Islam', false, 43);
insert into answer (id, answer, correct, question_id) values (171, 'Hinduism', true, 43);
insert into answer (id, answer, correct, question_id) values (172, 'Buddhism', false, 43);

insert into question (id, question, speciality_id) values (44, 'Which document outlines the fundamental rights of U.S. citizens?', 2);
insert into answer (id, answer, correct, question_id) values (173, 'The Magna Carta', false, 44);
insert into answer (id, answer, correct, question_id) values (174, 'The Declaration of Independence', false, 44);
insert into answer (id, answer, correct, question_id) values (175, 'The Constitution', true, 44);
insert into answer (id, answer, correct, question_id) values (176, 'The Bill of Rights', false, 44);

insert into question (id, question, speciality_id) values (45, 'Who was the first female Prime Minister of the United Kingdom?', 2);
insert into answer (id, answer, correct, question_id) values (177, 'Margaret Thatcher', true, 45);
insert into answer (id, answer, correct, question_id) values (178, 'Queen Elizabeth II', false, 45);
insert into answer (id, answer, correct, question_id) values (179, 'Theresa May', false, 45);
insert into answer (id, answer, correct, question_id) values (180, 'Angela Merkel', false, 45);

insert into question (id, question, speciality_id) values (46, 'Which civilization built the pyramids in Egypt?', 2);
insert into answer (id, answer, correct, question_id) values (181, 'Romans', false, 46);
insert into answer (id, answer, correct, question_id) values (182, 'Greeks', false, 46);
insert into answer (id, answer, correct, question_id) values (183, 'Sumerians', false, 46);
insert into answer (id, answer, correct, question_id) values (184, 'Egyptians', true, 46);

insert into question (id, question, speciality_id) values (47, 'Who is the playwright behind "Romeo and Juliet"?', 2);
insert into answer (id, answer, correct, question_id) values (185, 'Christopher Marlowe', false, 47);
insert into answer (id, answer, correct, question_id) values (186, 'Ben Jonson', false, 47);
insert into answer (id, answer, correct, question_id) values (187, 'William Shakespeare', true, 47);
insert into answer (id, answer, correct, question_id) values (188, 'John Milton', false, 47);

insert into question (id, question, speciality_id) values (48, 'Which continent is the Sahara Desert located in?', 2);
insert into answer (id, answer, correct, question_id) values (189, 'Asia', false, 48);
insert into answer (id, answer, correct, question_id) values (190, 'Africa', true, 48);
insert into answer (id, answer, correct, question_id) values (191, 'South America', false, 48);
insert into answer (id, answer, correct, question_id) values (192, 'Australia', false, 48);

insert into question (id, question, speciality_id) values (49, 'What does the term "Renaissance" mean?', 2);
insert into answer (id, answer, correct, question_id) values (193, 'Rebirth', true, 49);
insert into answer (id, answer, correct, question_id) values (194, 'Enlightenment', false, 49);
insert into answer (id, answer, correct, question_id) values (195, 'Discovery', false, 49);
insert into answer (id, answer, correct, question_id) values (196, 'Revolution', false, 49);

insert into question (id, question, speciality_id) values (50, 'What is the longest river in the world?', 2);
insert into answer (id, answer, correct, question_id) values (197, 'Amazon', false, 50);
insert into answer (id, answer, correct, question_id) values (198, 'Nile', true, 50);
insert into answer (id, answer, correct, question_id) values (199, 'Yangtze', false, 50);
insert into answer (id, answer, correct, question_id) values (200, 'Mississippi', false, 50);

insert into question (id, question, speciality_id) values (51, 'Who is the author of "The Republic"?', 2);
insert into answer (id, answer, correct, question_id) values (201, 'Plato', true, 51);
insert into answer (id, answer, correct, question_id) values (202, 'Aristotle', false, 51);
insert into answer (id, answer, correct, question_id) values (203, 'Socrates', false, 51);
insert into answer (id, answer, correct, question_id) values (204, 'Epicurus', false, 51);

insert into question (id, question, speciality_id) values (52, 'Which event started World War I?', 2);
insert into answer (id, answer, correct, question_id) values (205, 'The assassination of Archduke Franz Ferdinand', true, 52);
insert into answer (id, answer, correct, question_id) values (206, 'The invasion of Poland', false, 52);
insert into answer (id, answer, correct, question_id) values (207, 'The sinking of the Lusitania', false, 52);
insert into answer (id, answer, correct, question_id) values (208, 'The signing of the Treaty of Versailles', false, 52);

insert into question (id, question, speciality_id) values (53, 'Which ancient philosopher is known for his method of questioning?', 2);
insert into answer (id, answer, correct, question_id) values (209, 'Socrates', true, 53);
insert into answer (id, answer, correct, question_id) values (210, 'Plato', false, 53);
insert into answer (id, answer, correct, question_id) values (211, 'Aristotle', false, 53);
insert into answer (id, answer, correct, question_id) values (212, 'Pythagoras', false, 53);

insert into question (id, question, speciality_id) values (54, 'What is the national language of Brazil?', 2);
insert into answer (id, answer, correct, question_id) values (213, 'Spanish', false, 54);
insert into answer (id, answer, correct, question_id) values (214, 'Portuguese', true, 54);
insert into answer (id, answer, correct, question_id) values (215, 'French', false, 54);
insert into answer (id, answer, correct, question_id) values (216, 'English', false, 54);

insert into question (id, question, speciality_id) values (55, 'Who was the first President of the United States?', 2);
insert into answer (id, answer, correct, question_id) values (217, 'Thomas Jefferson', false, 55);
insert into answer (id, answer, correct, question_id) values (218, 'John Adams', false, 55);
insert into answer (id, answer, correct, question_id) values (219, 'George Washington', true, 55);
insert into answer (id, answer, correct, question_id) values (220, 'Abraham Lincoln', false, 55);

insert into question (id, question, speciality_id) values (56, 'Which country was Nelson Mandela the president of?', 2);
insert into answer (id, answer, correct, question_id) values (221, 'Kenya', false, 56);
insert into answer (id, answer, correct, question_id) values (222, 'South Africa', true, 56);
insert into answer (id, answer, correct, question_id) values (223, 'Nigeria', false, 56);
insert into answer (id, answer, correct, question_id) values (224, 'Zimbabwe', false, 56);

insert into question (id, question, speciality_id) values (57, 'Which Greek city-state is known for its military prowess?', 2);
insert into answer (id, answer, correct, question_id) values (225, 'Athens', false, 57);
insert into answer (id, answer, correct, question_id) values (226, 'Sparta', true, 57);
insert into answer (id, answer, correct, question_id) values (227, 'Corinth', false, 57);
insert into answer (id, answer, correct, question_id) values (228, 'Thebes', false, 57);

insert into question (id, question, speciality_id) values (58, 'Who wrote "The Divine Comedy"?', 2);
insert into answer (id, answer, correct, question_id) values (229, 'Dante Alighieri', true, 58);
insert into answer (id, answer, correct, question_id) values (230, 'Geoffrey Chaucer', false, 58);
insert into answer (id, answer, correct, question_id) values (231, 'John Milton', false, 58);
insert into answer (id, answer, correct, question_id) values (232, 'Virgil', false, 58);

insert into question (id, question, speciality_id) values (59, 'Which U.S. President is associated with the Gettysburg Address?', 2);
insert into answer (id, answer, correct, question_id) values (233, 'George Washington', false, 59);
insert into answer (id, answer, correct, question_id) values (234, 'Abraham Lincoln', true, 59);
insert into answer (id, answer, correct, question_id) values (235, 'Theodore Roosevelt', false, 59);
insert into answer (id, answer, correct, question_id) values (236, 'Franklin D. Roosevelt', false, 59);

insert into question (id, question, speciality_id) values (60, 'Which empire was ruled by Julius Caesar?', 2);
insert into answer (id, answer, correct, question_id) values (237, 'The Persian Empire', false, 60);
insert into answer (id, answer, correct, question_id) values (238, 'The Roman Empire', true, 60);
insert into answer (id, answer, correct, question_id) values (239, 'The Ottoman Empire', false, 60);
insert into answer (id, answer, correct, question_id) values (240, 'The Byzantine Empire', false, 60);

insert into question (id, question, speciality_id) values (61, 'Which event marked the beginning of the Great Depression?', 2);
insert into answer (id, answer, correct, question_id) values (241, 'The Dust Bowl', false, 61);
insert into answer (id, answer, correct, question_id) values (242, 'The Stock Market Crash of 1929', true, 61);
insert into answer (id, answer, correct, question_id) values (243, 'The Treaty of Versailles', false, 61);
insert into answer (id, answer, correct, question_id) values (244, 'World War II', false, 61);

insert into question (id, question, speciality_id) values (62, 'Who was the ancient Egyptian queen who was the last ruler of Egypt?', 2);
insert into answer (id, answer, correct, question_id) values (245, 'Nefertiti', false, 62);
insert into answer (id, answer, correct, question_id) values (246, 'Cleopatra', true, 62);
insert into answer (id, answer, correct, question_id) values (247, 'Hatshepsut', false, 62);
insert into answer (id, answer, correct, question_id) values (248, 'Ankhesenamun', false, 62);

insert into question (id, question, speciality_id) values (63, 'Which famous scientist developed the theory of relativity?', 2);
insert into answer (id, answer, correct, question_id) values (249, 'Isaac Newton', false, 63);
insert into answer (id, answer, correct, question_id) values (250, 'Galileo Galilei', false, 63);
insert into answer (id, answer, correct, question_id) values (251, 'Albert Einstein', true, 63);
insert into answer (id, answer, correct, question_id) values (252, 'Marie Curie', false, 63);

insert into question (id, question, speciality_id) values (64, 'Who was the leader of the Soviet Union during World War II?', 2);
insert into answer (id, answer, correct, question_id) values (253, 'Lenin', false, 64);
insert into answer (id, answer, correct, question_id) values (254, 'Khrushchev', false, 64);
insert into answer (id, answer, correct, question_id) values (255, 'Stalin', true, 64);
insert into answer (id, answer, correct, question_id) values (256, 'Trotsky', false, 64);

insert into question (id, question, speciality_id) values (65, 'Which country is the Eiffel Tower located in?', 2);
insert into answer (id, answer, correct, question_id) values (257, 'Italy', false, 65);
insert into answer (id, answer, correct, question_id) values (258, 'France', true, 65);
insert into answer (id, answer, correct, question_id) values (259, 'Germany', false, 65);
insert into answer (id, answer, correct, question_id) values (260, 'Spain', false, 65);

insert into question (id, question, speciality_id) values (66, 'Which famous writer created the character of Sherlock Holmes?', 2);
insert into answer (id, answer, correct, question_id) values (261, 'Agatha Christie', false, 66);
insert into answer (id, answer, correct, question_id) values (262, 'Arthur Conan Doyle', true, 66);
insert into answer (id, answer, correct, question_id) values (263, 'Edgar Allan Poe', false, 66);
insert into answer (id, answer, correct, question_id) values (264, 'Mark Twain', false, 66);

insert into question (id, question, speciality_id) values (67, 'Which political system is based on the ideas of Karl Marx?', 2);
insert into answer (id, answer, correct, question_id) values (265, 'Communism', true, 67);
insert into answer (id, answer, correct, question_id) values (266, 'Democracy', false, 67);
insert into answer (id, answer, correct, question_id) values (267, 'Monarchy', false, 67);
insert into answer (id, answer, correct, question_id) values (268, 'Fascism', false, 67);

insert into question (id, question, speciality_id) values (68, 'Who painted the ceiling of the Sistine Chapel?', 3);
insert into answer (id, answer, correct, question_id) values (269, 'Michelangelo', true, 68);
insert into answer (id, answer, correct, question_id) values (270, 'Leonardo da Vinci', false, 68);
insert into answer (id, answer, correct, question_id) values (271, 'Raphael', false, 68);
insert into answer (id, answer, correct, question_id) values (272, 'Donatello', false, 68);

insert into question (id, question, speciality_id) values (69, 'Which artist is known for the painting "Starry Night"?', 3);
insert into answer (id, answer, correct, question_id) values (273, 'Pablo Picasso', false, 69);
insert into answer (id, answer, correct, question_id) values (274, 'Vincent van Gogh', true, 69);
insert into answer (id, answer, correct, question_id) values (275, 'Claude Monet', false, 69);
insert into answer (id, answer, correct, question_id) values (276, 'Edvard Munch', false, 69);

insert into question (id, question, speciality_id) values (70, 'What art movement is Salvador Dalí associated with?', 3);
insert into answer (id, answer, correct, question_id) values (277, 'Impressionism', false, 70);
insert into answer (id, answer, correct, question_id) values (278, 'Surrealism', true, 70);
insert into answer (id, answer, correct, question_id) values (279, 'Cubism', false, 70);
insert into answer (id, answer, correct, question_id) values (280, 'Baroque', false, 70);

insert into question (id, question, speciality_id) values (71, 'Who composed the opera "The Marriage of Figaro"?', 3);
insert into answer (id, answer, correct, question_id) values (281, 'Ludwig van Beethoven', false, 71);
insert into answer (id, answer, correct, question_id) values (282, 'Wolfgang Amadeus Mozart', true, 71);
insert into answer (id, answer, correct, question_id) values (283, 'Johann Sebastian Bach', false, 71);
insert into answer (id, answer, correct, question_id) values (284, 'Franz Schubert', false, 71);

insert into question (id, question, speciality_id) values (72, 'Which of these is a ballet composed by Pyotr Tchaikovsky?', 3);
insert into answer (id, answer, correct, question_id) values (285, 'The Nutcracker', true, 72);
insert into answer (id, answer, correct, question_id) values (286, 'Carmen', false, 72);
insert into answer (id, answer, correct, question_id) values (287, 'Don Giovanni', false, 72);
insert into answer (id, answer, correct, question_id) values (288, 'Fidelio', false, 72);

insert into question (id, question, speciality_id) values (73, 'Which artist is famous for painting water lilies?', 3);
insert into answer (id, answer, correct, question_id) values (289, 'Edgar Degas', false, 73);
insert into answer (id, answer, correct, question_id) values (290, 'Claude Monet', true, 73);
insert into answer (id, answer, correct, question_id) values (291, 'Paul Cézanne', false, 73);
insert into answer (id, answer, correct, question_id) values (292, 'Henri Matisse', false, 73);

insert into question (id, question, speciality_id) values (74, 'Who is the composer of the musical "The Phantom of the Opera"?', 3);
insert into answer (id, answer, correct, question_id) values (293, 'Andrew Lloyd Webber', true, 74);
insert into answer (id, answer, correct, question_id) values (294, 'Stephen Sondheim', false, 74);
insert into answer (id, answer, correct, question_id) values (295, 'Leonard Bernstein', false, 74);
insert into answer (id, answer, correct, question_id) values (296, 'George Gershwin', false, 74);

insert into question (id, question, speciality_id) values (75, 'Which of these paintings was created by Pablo Picasso?', 3);
insert into answer (id, answer, correct, question_id) values (297, 'Guernica', true, 75);
insert into answer (id, answer, correct, question_id) values (298, 'The Persistence of Memory', false, 75);
insert into answer (id, answer, correct, question_id) values (299, 'Girl with a Pearl Earring', false, 75);
insert into answer (id, answer, correct, question_id) values (300, 'The Last Supper', false, 75);

insert into question (id, question, speciality_id) values (76, 'Which artist is known for the technique of pointillism?', 3);
insert into answer (id, answer, correct, question_id) values (301, 'Paul Gauguin', false, 76);
insert into answer (id, answer, correct, question_id) values (302, 'Georges Seurat', true, 76);
insert into answer (id, answer, correct, question_id) values (303, 'Henri Rousseau', false, 76);
insert into answer (id, answer, correct, question_id) values (304, 'Paul Signac', false, 76);

insert into question (id, question, speciality_id) values (77, 'What style of art is Jackson Pollock famous for?', 3);
insert into answer (id, answer, correct, question_id) values (305, 'Realism', false, 77);
insert into answer (id, answer, correct, question_id) values (306, 'Impressionism', false, 77);
insert into answer (id, answer, correct, question_id) values (307, 'Abstract Expressionism', true, 77);
insert into answer (id, answer, correct, question_id) values (308, 'Futurism', false, 77);

insert into question (id, question, speciality_id) values (78, 'Who wrote the play "Hamlet"?', 3);
insert into answer (id, answer, correct, question_id) values (309, 'Christopher Marlowe', false, 78);
insert into answer (id, answer, correct, question_id) values (310, 'Ben Jonson', false, 78);
insert into answer (id, answer, correct, question_id) values (311, 'William Shakespeare', true, 78);
insert into answer (id, answer, correct, question_id) values (312, 'John Webster', false, 78);

insert into question (id, question, speciality_id) values (79, 'Which artist is known for his Blue Period?', 3);
insert into answer (id, answer, correct, question_id) values (313, 'Henri Matisse', false, 79);
insert into answer (id, answer, correct, question_id) values (314, 'Pablo Picasso', true, 79);
insert into answer (id, answer, correct, question_id) values (315, 'Vincent van Gogh', false, 79);
insert into answer (id, answer, correct, question_id) values (316, 'Edvard Munch', false, 79);

insert into question (id, question, speciality_id) values (80, 'Which instrument family does the violin belong to?', 3);
insert into answer (id, answer, correct, question_id) values (317, 'Brass', false, 80);
insert into answer (id, answer, correct, question_id) values (318, 'Percussion', false, 80);
insert into answer (id, answer, correct, question_id) values (319, 'Woodwind', false, 80);
insert into answer (id, answer, correct, question_id) values (320, 'String', true, 80);

insert into question (id, question, speciality_id) values (81, 'Who composed the opera "Carmen"?', 3);
insert into answer (id, answer, correct, question_id) values (321, 'Georges Bizet', true, 81);
insert into answer (id, answer, correct, question_id) values (322, 'Giuseppe Verdi', false, 81);
insert into answer (id, answer, correct, question_id) values (323, 'Richard Wagner', false, 81);
insert into answer (id, answer, correct, question_id) values (324, 'Claudio Monteverdi', false, 81);

insert into question (id, question, speciality_id) values (82, 'What is the art of folding paper into shapes called?', 3);
insert into answer (id, answer, correct, question_id) values (325, 'Papercraft', false, 82);
insert into answer (id, answer, correct, question_id) values (326, 'Collage', false, 82);
insert into answer (id, answer, correct, question_id) values (327, 'Origami', true, 82);
insert into answer (id, answer, correct, question_id) values (328, 'Decoupage', false, 82);

insert into question (id, question, speciality_id) values (83, 'Which dance style originated in Argentina?', 3);
insert into answer (id, answer, correct, question_id) values (329, 'Tango', true, 83);
insert into answer (id, answer, correct, question_id) values (330, 'Samba', false, 83);
insert into answer (id, answer, correct, question_id) values (331, 'Waltz', false, 83);
insert into answer (id, answer, correct, question_id) values (332, 'Foxtrot', false, 83);

insert into question (id, question, speciality_id) values (84, 'Who is the architect of the Guggenheim Museum in Bilbao?', 3);
insert into answer (id, answer, correct, question_id) values (333, 'Frank Lloyd Wright', false, 84);
insert into answer (id, answer, correct, question_id) values (334, 'Zaha Hadid', false, 84);
insert into answer (id, answer, correct, question_id) values (335, 'Frank Gehry', true, 84);
insert into answer (id, answer, correct, question_id) values (336, 'Le Corbusier', false, 84);

insert into question (id, question, speciality_id) values (85, 'Which artist painted "The Birth of Venus"?', 3);
insert into answer (id, answer, correct, question_id) values (337, 'Michelangelo', false, 85);
insert into answer (id, answer, correct, question_id) values (338, 'Leonardo da Vinci', false, 85);
insert into answer (id, answer, correct, question_id) values (339, 'Sandro Botticelli', true, 85);
insert into answer (id, answer, correct, question_id) values (340, 'Caravaggio', false, 85);

insert into question (id, question, speciality_id) values (86, 'Which playwright wrote "A Streetcar Named Desire"?', 3);
insert into answer (id, answer, correct, question_id) values (341, 'Arthur Miller', false, 86);
insert into answer (id, answer, correct, question_id) values (342, 'Tennessee Williams', true, 86);
insert into answer (id, answer, correct, question_id) values (343, 'Eugene O"Neill', false, 86);
insert into answer (id, answer, correct, question_id) values (344, 'Thornton Wilder', false, 86);

insert into question (id, question, speciality_id) values (87, 'What is the technique of painting on wet plaster called?', 3);
insert into answer (id, answer, correct, question_id) values (345, 'Mosaic', false, 87);
insert into answer (id, answer, correct, question_id) values (346, 'Fresco', true, 87);
insert into answer (id, answer, correct, question_id) values (347, 'Tempera', false, 87);
insert into answer (id, answer, correct, question_id) values (348, 'Acrylic', false, 87);

insert into question (id, question, speciality_id) values (88, 'Who composed the symphony "New World Symphony"?', 3);
insert into answer (id, answer, correct, question_id) values (349, 'Ludwig van Beethoven', false, 88);
insert into answer (id, answer, correct, question_id) values (350, 'Antonín Dvořák', true, 88);
insert into answer (id, answer, correct, question_id) values (351, 'Johannes Brahms', false, 88);
insert into answer (id, answer, correct, question_id) values (352, 'Franz Liszt', false, 88);

insert into question (id, question, speciality_id) values (89, 'Which painter is known for his works featuring ballerinas?', 3);
insert into answer (id, answer, correct, question_id) values (353, 'Claude Monet', false, 89);
insert into answer (id, answer, correct, question_id) values (354, 'Édouard Manet', false, 89);
insert into answer (id, answer, correct, question_id) values (355, 'Edgar Degas', true, 89);
insert into answer (id, answer, correct, question_id) values (356, 'Gustave Courbet', false, 89);

insert into question (id, question, speciality_id) values (90, 'Which opera contains the famous "Ride of the Valkyries"?', 3);
insert into answer (id, answer, correct, question_id) values (357, 'Carmen', false, 90);
insert into answer (id, answer, correct, question_id) values (358, 'The Magic Flute', false, 90);
insert into answer (id, answer, correct, question_id) values (359, 'Die Walküre', true, 90);
insert into answer (id, answer, correct, question_id) values (360, 'La Traviata', false, 90);

insert into question (id, question, speciality_id) values (91, 'Who sculpted "David"?', 3);
insert into answer (id, answer, correct, question_id) values (361, 'Michelangelo', true, 91);
insert into answer (id, answer, correct, question_id) values (362, 'Donatello', false, 91);
insert into answer (id, answer, correct, question_id) values (363, 'Gian Lorenzo Bernini', false, 91);
insert into answer (id, answer, correct, question_id) values (364, 'Auguste Rodin', false, 91);

insert into question (id, question, speciality_id) values (92, 'Which artist is famous for the painting "American Gothic"?', 3);
insert into answer (id, answer, correct, question_id) values (365, 'Grant Wood', true, 92);
insert into answer (id, answer, correct, question_id) values (366, 'Edward Hopper', false, 92);
insert into answer (id, answer, correct, question_id) values (367, 'Norman Rockwell', false, 92);
insert into answer (id, answer, correct, question_id) values (368, 'Georgia O"Keeffe', false, 92);

insert into question (id, question, speciality_id) values (93, 'Who is known for designing the Louvre Pyramid?', 3);
insert into answer (id, answer, correct, question_id) values (369, 'I. M. Pei', true, 93);
insert into answer (id, answer, correct, question_id) values (370, 'Frank Gehry', false, 93);
insert into answer (id, answer, correct, question_id) values (371, 'Norman Foster', false, 93);
insert into answer (id, answer, correct, question_id) values (372, 'Renzo Piano', false, 93);

insert into question (id, question, speciality_id) values (94, 'Which of these is a famous sculpture by Auguste Rodin?', 3);
insert into answer (id, answer, correct, question_id) values (373, 'The Thinker', true, 94);
insert into answer (id, answer, correct, question_id) values (374, 'David', false, 94);
insert into answer (id, answer, correct, question_id) values (375, 'Pietà', false, 94);
insert into answer (id, answer, correct, question_id) values (376, 'Venus de Milo', false, 94);

insert into question (id, question, speciality_id) values (95, 'Which artist painted "The Scream"?', 3);
insert into answer (id, answer, correct, question_id) values (377, 'Vincent van Gogh', false, 95);
insert into answer (id, answer, correct, question_id) values (378, 'Edvard Munch', true, 95);
insert into answer (id, answer, correct, question_id) values (379, 'Paul Gauguin', false, 95);
insert into answer (id, answer, correct, question_id) values (380, 'Frida Kahlo', false, 95);

insert into question (id, question, speciality_id) values (96, 'Which period in art history is associated with the use of light and shadow?', 3);
insert into answer (id, answer, correct, question_id) values (381, 'Renaissance', false, 96);
insert into answer (id, answer, correct, question_id) values (382, 'Baroque', true, 96);
insert into answer (id, answer, correct, question_id) values (383, 'Impressionism', false, 96);
insert into answer (id, answer, correct, question_id) values (384, 'Neoclassicism', false, 96);

insert into question (id, question, speciality_id) values (97, 'Who composed the ballet "Swan Lake"?', 3);
insert into answer (id, answer, correct, question_id) values (385, 'Igor Stravinsky', false, 97);
insert into answer (id, answer, correct, question_id) values (386, 'Sergei Prokofiev', false, 97);
insert into answer (id, answer, correct, question_id) values (387, 'Pyotr Tchaikovsky', true, 97);
insert into answer (id, answer, correct, question_id) values (388, 'Nikolai Rimsky-Korsakov', false, 97);

insert into question (id, question, speciality_id) values (98, 'Which architect is known for designing Fallingwater?', 3);
insert into answer (id, answer, correct, question_id) values (389, 'Frank Gehry', false, 98);
insert into answer (id, answer, correct, question_id) values (390, 'Frank Lloyd Wright', true, 98);
insert into answer (id, answer, correct, question_id) values (391, 'Mies van der Rohe', false, 98);
insert into answer (id, answer, correct, question_id) values (392, 'Le Corbusier', false, 98);

insert into question (id, question, speciality_id) values (99, 'Who composed the opera "La Bohème"?', 3);
insert into answer (id, answer, correct, question_id) values (393, 'Giuseppe Verdi', false, 99);
insert into answer (id, answer, correct, question_id) values (394, 'Giacomo Puccini', true, 99);
insert into answer (id, answer, correct, question_id) values (395, 'Richard Wagner', false, 99);
insert into answer (id, answer, correct, question_id) values (396, 'Franz Schubert', false, 99);

insert into question (id, question, speciality_id) values (100, 'What technique did Andy Warhol famously use in his art?', 3);
insert into answer (id, answer, correct, question_id) values (397, 'Impressionism', false, 100);
insert into answer (id, answer, correct, question_id) values (398, 'Pointillism', false, 100);
insert into answer (id, answer, correct, question_id) values (399, 'Pop Art', true, 100);
insert into answer (id, answer, correct, question_id) values (400, 'Surrealism', false, 100);
