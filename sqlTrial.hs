
import Database.Sqlite

printRows stmt = do
    row <- step stmt
    if row == Done then
        return ()
    else do
        col <- column stmt 0
        print col
        printRows stmt

main = do
    conn <- open "database.db"

    stmt <- prepare conn "DROP TABLE IF EXISTS MyFirstTable;"
    step stmt
    finalize stmt

    stmt <- prepare conn "CREATE TABLE IF NOT EXISTS MyFirstTable (FirstName VARCHAR(20), LastName VARCHAR(20));"
    step stmt
    finalize stmt

    stmt <- prepare conn "INSERT INTO MyFirstTable(FirstName, LastName) VALUES('Pranav', 'Jain');"
    step stmt
    finalize stmt

    stmt <- prepare conn "INSERT INTO MyFirstTable(FirstName, LastName) VALUES('Dovah', 'Kiin');"
    step stmt
    finalize stmt

    stmt <- prepare conn "SELECT * FROM MyFirstTable;"
    printRows stmt
    finalize stmt

    close conn
