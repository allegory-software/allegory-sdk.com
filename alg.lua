--go@ x:\sdk\bin\windows\luajit alg.lua -vv run

local function alg_schema()

	tables.bla = {

	}

end

local xapp = require'$xapp'

local alg = xapp('alg', ...)

alg.schema:import(alg_schema)

cmd('install [forealz]', 'Install or migrate app', function(doit)
	create_db()
	local dry = doit ~= 'forealz'
	db():sync_schema(alg.schema, {dry = dry})
	if not dry then
		create_user()
	end
	say'Install done.'
end)

return alg:run()
