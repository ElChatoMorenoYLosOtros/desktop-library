INSERT INTO "client" ("name", "lastName", "address", "email", "phoneNumber", "typeUser") VALUES
('Juan', 'Perez', 'Calle 1', 'juan.perez@gmail.com', 1234567, 'Student'),
('Maria', 'Gomez', 'Calle 2', 'maria.gomez@gmail.com', 1234568, 'Student'),
('Pedro', 'Garcia', 'Calle 3', 'pedro.garcia@gmail.com', 1234569, 'Student'),
('Ana', 'Martinez', 'Calle 4', 'ana.martinez@gmail.com', 1234570, 'Student'),
('Carlos', 'Lopez', 'Calle 5', 'carlos.lopez@gmail.com', 1234571, 'Student'),
('Laura', 'Rodriguez', 'Calle 6', 'laura.rodriguez@gmail.com', 1234572, 'Student'),
('Luis', 'Sanchez', 'Calle 7', 'luis.sanchez@gmail.com', 1234573, 'Student'),
('Sofia', 'Fernandez', 'Calle 8', 'sofia.fernandez@gmail.com', 1234574, 'Student'),
('Diego', 'Ramirez', 'Calle 9', 'diego.ramirez@gmail.com', 1234575, 'Student'),
('Valentina', 'Luna', 'Calle 10', 'valentina.luna@gmail.com', 1234576, 'Student'),
('Manuel', 'Diaz', 'Calle 11', 'manuel.diaz@gmail.com', 1234577, 'Student'),
('Isabella', 'Torres', 'Calle 12', 'isabella.torres@gmail.com', 1234578, 'Student'),
('Andres', 'Ortega', 'Calle 13', 'andres.ortega@gmail.com', 1234579, 'Student'),
('Camila', 'Cruz', 'Calle 14', 'camila.cruz@gmail.com', 1234580, 'Student'),
('Javier', 'Jimenez', 'Calle 15', 'javier.jimenez@gmail.com', 123458, 'Student'),
('John', 'Smith', '123 Main St', 'john.smith@gmail.com', 1234567890, 'Teacher'),
('Alice', 'Johnson', '456 Elm St', 'alice.johnson@gmail.com', 987654, 'Teacher'),
('Robert', 'Williams', '789 Oak St', 'robert.williams@gmail.com', 55555, 'Teacher'),
('Emily', 'Brown', '101 Pine St', 'emily.brown@gmail.com', 111111, 'Teacher'),
('Michael', 'Davis', '202 Maple St', 'michael.davis@gmail.com', 222222, 'Teacher'),
('Sarah', 'Miller', '303 Cedar St', 'sarah.miller@gmail.com', 33333, 'Teacher');

INSERT INTO "material" ("title", "author", "category", "isbn", "publicationYear", "pageCount", "quantity", "available", "type_material") VALUES
('El Gran Gatsby', 'F. Scott Fitzgerald', 'Novela', '978-0141182636', 1925, 218, 20, true, 'Book'),
('Crimen y Castigo', 'Fiodor Dostoievski', 'Novela', '978-8420609064', 1866, 672, 15, true, 'Book'),
('Los Juegos del Hambre', 'Suzanne Collins', 'Ciencia Ficción', '978-8427202135', 2008, 396, 12, true, 'Book'),
('Orgullo y Prejuicio', 'Jane Austen', 'Romance', '978-8491050390', 1813, 416, 18, true, 'Book'),
('El Hobbit', 'J.R.R. Tolkien', 'Fantasía', '978-8445071659', 1937, 320, 25, true, 'Book'),
('National Geographic', 'Varios autores', 'Ciencia y Naturaleza', '555-1234', 2023, 64, 30, true, 'Revista'),
('Time Magazine', 'Varios autores', 'Actualidad', '123-5678', 2023, 48, 25, true, 'Revista'),
('Scientific American', 'Varios autores', 'Ciencia', '123-4567', 2023, 72, 40, true, 'Revista'),
('National Geographic Traveler', 'Varios autores', 'Viajes', '555-5678', 2023, 56, 20, true, 'Revista'),
('La Odisea', 'Homero', 'Épica', '978-0140449112', -800, 560, 10, true, 'Book'),
('1984', 'George Orwell', 'Ciencia Ficción', '978-0451524935', 1949, 328, 22, true, 'Book'),
('Cien años de soledad', 'Gabriel García Márquez', 'Realismo mágico', '978-0307350481', 1967, 432, 20, true, 'Book'),
('Harry Potter y la piedra filosofal', 'J.K. Rowling', 'Fantasía', '978-8478884454', 1997, 256, 30, true, 'Book'),
('Moby-Dick', 'Herman Melville', 'Aventura', '978-0142437247', 1851, 720, 12, true, 'Book'),
('National Geographic Kids', 'Varios autores', 'Infantil', '555-9999', 2023, 32, 40, true, 'Revista'),
('Smithsonian Magazine', 'Varios autores', 'Cultura', '987-6543', 2023, 60, 18, true, 'Revista'),
('New Scientist', 'Varios autores', 'Tecnología', '456-7890', 2023, 68, 15, true, 'Revista'),
('Lonely Planet Traveller', 'Varios autores', 'Viajes', '555-9876', 2023, 50, 22, true, 'Revista');

INSERT INTO "office" ("name")
VALUES ('Development');
INSERT INTO "loan" ("clientId", "materialId", "returnDate", "returned") VALUES
(1, 1, '2023-09-10 10:00:00', true),
(2, 2, '2023-09-11 11:00:00', true),
(3, 3, '2023-09-12 12:00:00', true),
(4, 4, '2023-09-13 13:00:00', true),
(5, 5, '2023-09-14 14:00:00', true),
(6, 6, '2023-09-15 15:00:00', true),
(7, 7, '2023-09-16 16:00:00', true),
(8, 8, '2023-09-17 17:00:00', true),
(9, 9, '2023-09-18 18:00:00', true),
(10, 10, '2023-09-19 19:00:00', true),
(11, 11, '2023-09-20 20:00:00', true),
(12, 12, '2023-09-21 21:00:00', true),
(13, 13, '2023-09-22 22:00:00', true),
(14, 14, '2023-09-23 23:00:00', true),
(15, 15, '2023-09-24 00:00:00', true),
(16, 16, '2023-09-25 01:00:00', true),
(17, 17, '2023-09-26 02:00:00', true),
(18, 18, '2023-09-27 03:00:00', true);
