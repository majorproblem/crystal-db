module DB
  # Identifies the SQL/CQL flavor a connection speaks.
  #
  # `Other` is reserved for connections whose backend is not a member of this enum.
  # Such connections should still populate `DB::Connection::Info#name` with the server-reported identifier.
  enum Dialect
    Postgres
    MySQL
    SQLite
    MSSQL
    Cassandra
    ODBC
    Other

    # Convenience alias of `#my_sql?`.
    def mysql?
      self.my_sql?
    end

    # Convenience alias of `#sq_lite?`.
    def sqlite?
      self.sq_lite?
    end
  end
end
