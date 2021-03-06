-- This file was automatically generated for the LuaDist project.

package = "luasql-postgres"
version = "2.3.5-2"
-- LuaDist source
source = {
  tag = "2.3.5-2",
  url = "git://github.com/LuaDist-testing/luasql-postgres.git"
}
-- Original source
-- source = {
--   url = "git://github.com/keplerproject/luasql.git",
--   branch = "v2.3.5",
-- }
description = {
   summary = "Database connectivity for Lua (Postgres driver)",
   detailed = [[
      LuaSQL is a simple interface from Lua to a DBMS. It enables a
      Lua program to connect to databases, execute arbitrary SQL statements
      and retrieve results in a row-by-row cursor fashion.
   ]],
   license = "MIT/X11",
   homepage = "http://keplerproject.github.io/luasql/"
}
dependencies = {
   "lua >= 5.0"
}
external_dependencies = {
   PGSQL = {
      header = "libpq-fe.h"
   }
}
build = {
   type = "builtin",
   modules = {
     ["luasql.postgres"] = {
       sources = { "src/luasql.c", "src/ls_postgres.c" },
       libraries = { "pq" },
       incdirs = { "$(PGSQL_INCDIR)" },
       libdirs = { "$(PGSQL_LIBDIR)" }
     }
   }
}