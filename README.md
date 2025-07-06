SQL Stored Procedures & Functions – LibraryDB
This project explores how to create and use Stored Procedures and Functions in SQL using the LibraryDB schema. These reusable logic blocks enhance code modularity, simplify data operations, and improve performance by moving logic closer to the database engine.

🎯 Objective
Create Stored Procedures to perform reusable operations with input parameters

Write SQL Functions to return computed values inside queries

Apply conditional logic to enhance flexibility

Modularize and secure frequently-used operations

🗃️ Schema Used: LibraryDB
Tables Involved:

Author(AuthorID, Name, Country)

Publisher(PublisherID, Name, City)

Book(BookID, Title, Genre, AuthorID, PublisherID)

Member(MemberID, Name, Email, JoinDate)

Loan(LoanID, BookID, MemberID, LoanDate, ReturnDate)
