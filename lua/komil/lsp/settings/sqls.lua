return {
	root_dir = function()
		return vim.loop.cwd()
	end, -- run lsp for javascript in any directory
  command = 'sqls',
  filetypes = { 'sql' },
	settings = {
		sqls = {
			connections = {
        {
          driver = 'postgresql',
          dataSourceName = 'postgres://postgres@localhost/postgres?sslmode=disable'
        }
				--[[ {
          host = "127.0.0.1",
					driver = "postgresql",
					proto = "unix",
					user = "postgres",
					passwd = "komil008I",
					dbName = "postgres",
          port = 5432,
				},
				{
          host = "127.0.0.1",
					driver = "postgresql",
					proto = "unix",
					user = "postgres",
					passwd = "komil008I",
          port = 5432,
					dbName = "pg_insta",
				},
				{
          host = "127.0.0.1",
					driver = "postgresql",
					proto = "unix",
					user = "postgres",
					passwd = "komil008I",
					dbName = "pg_cities",
          port = 5432
				}, ]]
			},
		},
	},
}
