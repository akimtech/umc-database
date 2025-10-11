# umc-database
```bash
# To run everything in MySQL
# Step 1 – Create the database and tables
psql -U postgres -f postgresql/1_create_tables.sql

# Step 2 – Insert sample data
psql -U postgres -d umc_db -f postgresql/2_insert_data.sql

# Step 3 – Run example SELECT queries
psql -U postgres -d umc_db -f postgresql/3_select_examples.sql
```
