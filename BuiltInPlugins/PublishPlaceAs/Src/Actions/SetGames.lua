
local Action = require(script.Parent.Action)

return Action(script.Name, function(games)
	games = games or {}

	local errmsg = "Expected games to add to be a table, received %s"
	assert(type(games) == "table", string.format(errmsg, tostring(games)))

	return {
		games = games
	}
end)
