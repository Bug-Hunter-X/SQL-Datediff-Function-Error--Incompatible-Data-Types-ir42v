The solution is to explicitly cast the login_time and logout_time columns to the appropriate data type before using them in the datediff function.  The exact casting method depends on your specific SQL dialect. This example shows casting to DATETIME, but you might need to adjust it based on your database:

```sql
SELECT datediff(minute, CAST(login_time AS DATETIME), CAST(logout_time AS DATETIME)) AS diff FROM user_sessions;
```

Alternatively, ensure your database table columns are already of the correct data type to avoid casting. For better error handling, you could also add error checking or use a CASE statement to handle potential NULL values or incompatible data types more gracefully.