
using System.Data.SQLite;

public class DatabaseConnector {
    static private SQLiteConnection conn;

    public SQLiteConnection Db() {
        if (conn==null) {
            conn = new SQLiteConnection("Data Source=/home/ujoimro/doc/university/sje/2023-24_Osz/dbs/csop2/04IdentityManagement/UserDB.sqlite3");
        }
        return conn;
    }
}