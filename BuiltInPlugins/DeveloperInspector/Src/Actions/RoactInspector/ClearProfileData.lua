--[[
	Clear the profile data displayed in the event log.
]]
local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(data)
	return {
		data = data,
	}
end)
