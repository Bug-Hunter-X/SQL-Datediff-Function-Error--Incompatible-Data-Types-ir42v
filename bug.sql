The following SQL query attempts to use a function 'datediff' to calculate the difference between two timestamps, but it fails due to an incompatibility between the function and the input data types. The 'datediff' function in some SQL databases may expect specific date or time data types and may throw an error if the inputs are of different types or are not dates/times.

```sql
SELECT datediff(minute, login_time, logout_time) AS diff FROM user_sessions;
```

The issue is that 'login_time' and 'logout_time' might be stored as strings, timestamps, or other incompatible data types instead of the expected data type for 'datediff'.  This could lead to an error like 'invalid data type' or a similar message.