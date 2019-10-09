--[[
	Fired when the tab is changed
]]
local Action = require(script.Parent.Action)

-- tabName : (string) which tab is open
return Action(script.Name, function(tabName)
	if tabName then
		assert(type(tabName) == "string", string.format("Expected tabName to be a string, received %s", type(tabName)))
	end
	return {
		tabName = tabName
	}
end)