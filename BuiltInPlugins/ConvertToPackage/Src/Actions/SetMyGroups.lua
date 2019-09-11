local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(groupsArray)
	local errmsg = "groupsArray arg must be a table, received %s"
	assert(type(groupsArray) == "table", string.format(errmsg, tostring(groupsArray)))
	return {
		groupsArray= groupsArray,
	}
end)
