# SQL Datediff Function Error: Incompatible Data Types

This repository demonstrates a common SQL error involving the `datediff` function and incompatible data types. The `bug.sql` file contains a SQL query that attempts to calculate the difference between two timestamps using `datediff`, but fails due to type mismatch issues. The `bugSolution.sql` file provides a corrected version of the query.

## Problem

The provided `datediff` query may encounter errors if the input columns (`login_time`, `logout_time`) do not have the correct data types expected by the database system's `datediff` function.  Common errors include `invalid data type` or similar messages.

## Solution

The solution involves explicitly casting the input columns to compatible date or timestamp data types before using them with the `datediff` function.  The specific casting method might vary slightly depending on the database system you are using (MySQL, PostgreSQL, SQL Server, etc.).

## Usage

1. Clone the repository.
2. Inspect `bug.sql` to observe the problematic query.
3. Examine `bugSolution.sql` to understand how the issue is resolved.
4. Adapt the solution to your specific database and table schema.