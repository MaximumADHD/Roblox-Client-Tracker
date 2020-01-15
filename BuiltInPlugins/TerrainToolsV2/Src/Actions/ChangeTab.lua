--[[
	Fired when the tab is changed
]]
local Action = require(script.Parent.Action)

-- tabName : (string) which tab is open
return Action(script.Name, function(tabName)
	assert(type(tabName) == "string", ("Expected tabName to be a string, received %s"):format(type(tabName)))

	return {
		tabName = tabName,
	}
end)
