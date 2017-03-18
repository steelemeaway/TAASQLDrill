INSERT INTO dbo.PUBLISHER (Name, Address, Phone)
VALUES ('Umbrella Publishing', '222 Umbrella Way', '222-222-2222'),
('Parasol Publishing', '333 Parasol Ave', '333-333-3333')

SET IDENTITY_INSERT dbo.BOOK ON
INSERT INTO dbo.BOOK (BookID, Title, PublisherName)
VALUES (1,'The Lost Tribe', 'Umbrella Publishing'),
(2, 'The Lost Tribe 2', 'Umbrella Publishing'),
(3, 'The Lost Tribe 3', 'Umbrella Publishing'),
(4, 'The Lost Tribe 4', 'Umbrella Publishing'),
(5, 'The Lost Tribe 5', 'Umbrella Publishing'),
(6, 'The Lost Tribe 6', 'UmbrellaPublishing'),
(7, 'The Lost Tribe 7', 'Umbrella Publishing'),
(8, 'The Lost Tribe 8', 'Umbrella Publishing'),
(9, 'The Lost Tribe 9', 'Umbrella Publishing'),
(10, 'The Lost Tribe 10', 'Umbrella Publishing'),
(11, 'The Found Tribe', 'Parasol Publishing'),
(12, 'The Found Tribe 2', 'Parasol Publishing'),
(13, 'The Found Tribe 3', 'Parasol Publishing'),
(14, 'The Found Tribe 4', 'Parasol Publishing'),
(15, 'The Found Tribe 5', 'Parsol Publishing'),
(16, 'The Found Tribe 6', 'Parasol Publishing'),
(17, 'The Found Tribe 7', 'Parasol Publishing'),
(18, 'The Found Tribe 8', 'Parasol Publishing'),
(19, 'The Found Tribe 9', 'Parasol Publishing'),
(20, 'The Found Tribe 10', 'Parasol Publishing')
SET IDENTITY_INSERT dbo.BOOK OFF

INSERT INTO dbo.BOOK_AUTHORS(BookID, AuthorName)
VALUES (1,'Stephen King'),
(2, 'Stephen King'),
(3, 'Joe King'),
(4, 'Joe King'),
(5, 'Moe King'),
(6, 'Moe King'),
(7, 'Flo King'),
(8, 'Flo King'),
(9, 'Whoa King'),
(10, 'Whoa King'),
(11, 'Yo King'),
(12, 'Yo King'),
(13, 'Zoe King'),
(14, 'Zoe King'),
(15, 'Roe King'),
(16, 'Roe King'),
(17, 'So King'),
(18, 'So King'),
(19, 'Toe King'),
(20, 'Toe King')


INSERT INTO dbo.BORROWER(CardNo, Name, Address, Phone)
VALUES (1,'Matt', '111 One Street', '503-111-1111'),
(2, 'Pat', '222 Two Street', '503-222-2222'),
(3, 'Kat', '333 Three Street', '503-333-3333'),
(4, 'Mel', '444 Four Street', '503-444-4444'),
(5, 'Kel', '555 Five Street', '503-555-5555'),
(6, 'Belle', '666 Six Street', '503-666-6666'),
(7, 'Ben', '777 Seven Street', '503-777-7777'),
(8, 'Wren', '888 Eight Street', '503-888-8888')


INSERT INTO dbo.LIBRARY_BRANCH(BranchID, Branchname, Address)
VALUES (1,'Sharpstown', '111 Sharpstown'),
(2, 'Central', '222 Central'),
(3, 'Midtown', '333 Midtown'),
(4, 'Downtown', '444 Downtown')

INSERT INTO dbo.BOOK_COPIES(BookID, BranchID, No_Of_Copies)
VALUES (1,1,5), (2,1,5), (3,1,5), (4,1,5), (5,1,5), (6,1,5), (7,1,5), (8,1,5), (9,1,5), (10,1,5),
(1,2,5), (2,2,5), (3,2,5), (4,2,5), (5,2,5), (6,2,5), (7,2,5), (8,2,5), (9,2,5), (10,2,5),
(1,3,5), (2,3,5), (3,3,5), (4,3,5), (5,3,5), (6,3,5), (7,3,5), (8,3,5), (9,3,5), (10,3,5),
(1,4,5), (2,4,5), (3,4,5), (4,4,5), (5,4,5), (6,4,5), (7,4,5), (8,4,5), (9,4,5), (10,4,5)

INSERT INTO dbo.BOOK_LOANS(BookID, BranchID, CardNo, DateOut, DueDate)
VALUES (1,1,1,'2017-01-01', '2017-06-01'), (2,1,1,'2017-01-01', '2017-06-01'),
(3,1,1,'2017-01-01', '2017-06-01'), (4,1,1,'2017-01-01', '2017-06-01'),
(5,1,1,'2017-01-01', '2017-06-01'), (6,1,1,'2017-01-01', '2017-06-01'),
(7,1,1,'2017-01-01', '2017-06-01'), (8,1,1,'2017-01-01', '2017-06-01'),
(9,1,1,'2017-01-01', '2017-06-01'), (10,1,1,'2017-01-01', '2017-06-01'),

(1,2,2,'2017-01-01', '2017-06-01'), (2,2,2,'2017-01-01', '2017-06-01'),
(3,2,2,'2017-01-01', '2017-06-01'), (4,2,2,'2017-01-01', '2017-06-01'),
(5,2,2,'2017-01-01', '2017-06-01'), (6,2,2,'2017-01-01', '2017-06-01'),
(7,2,2,'2017-01-01', '2017-06-01'), (8,2,2,'2017-01-01', '2017-06-01'),
(9,2,2,'2017-01-01', '2017-06-01'), (10,2,2,'2017-01-01', '2017-06-01'),

(1,3,3,'2017-01-01', '2017-06-01'), (2,3,3,'2017-01-01', '2017-06-01'),
(3,3,3,'2017-01-01', '2017-06-01'), (4,3,3,'2017-01-01', '2017-06-01'),
(5,3,3,'2017-01-01', '2017-06-01'), (6,3,3,'2017-01-01', '2017-06-01'),
(7,3,3,'2017-01-01', '2017-06-01'), (8,3,3,'2017-01-01', '2017-06-01'),
(9,3,3,'2017-01-01', '2017-06-01'), (10,3,3,'2017-01-01', '2017-06-01'),

(1,4,4,'2017-01-01', '2017-06-01'), (2,4,4,'2017-01-01', '2017-06-01'),
(3,4,4,'2017-01-01', '2017-06-01'), (4,4,4,'2017-01-01', '2017-06-01'),
(5,4,4,'2017-01-01', '2017-06-01'), (6,4,4,'2017-01-01', '2017-06-01'),
(7,4,4,'2017-01-01', '2017-06-01'), (8,4,4,'2017-01-01', '2017-06-01'),
(9,4,4,'2017-01-01', '2017-06-01'), (10,4,4,'2017-01-01', '2017-06-01'),

(1,3,5,'2017-01-01', '2017-06-01'), (2,1,7,'2017-01-01', '2017-06-01'),
(3,3,5,'2017-01-01', '2017-06-01'), (4,1,7,'2017-01-01', '2017-06-01'),
(5,2,6,'2017-01-01', '2017-06-01'), (6,1,7,'2017-01-01', '2017-06-01'),
(7,2,6,'2017-01-01', '2017-06-01'), (8,1,7,'2017-01-01', '2017-06-01'),
(9,2,6,'2017-01-01', '2017-06-01'), (10,4,7,'2017-01-01', '2017-06-01')
