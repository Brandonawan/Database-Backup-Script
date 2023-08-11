# Database Backup Script

This script allows you to create backups of your MySQL, PostgreSQL, and MongoDB databases.

## Usage

1. Clone this repository or download the script.

2. Make the script executable: e.g

    ```bash
    chmod +x backup_mysql.sh
    ```
3. Run the script:
    
        ```bash
        ./backup_mysql.sh
        ```
4. Follow the instructions on the screen.

5. Backups will be saved in the specified backup directory.

## Restore Instructions

### PostgreSQL

To restore a PostgreSQL database from a backup file, use the following command:

```bash
psql -U username -d database_name -f backup_file
```

### MongoDB

To restore a MongoDB database from a backup file, use the following command:

```bash
mongorestore --db database_name path_to_bson_file
```

### MySQL

```bash
mysql -u username -p database_name < backup_file
```
or 

```bash
mysql -u username database_name < backup_file
```

## Note

- Ensure that you have the necessary permissions and credentials to access the databases and perform backup/restore operations.
- Make sure to adjust backup and restore commands based on your specific setup and configurations.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

