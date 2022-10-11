--[[
	Sets whether or not PreviewViewportFrame is docked into the tool or in its own window
]]

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(docked)
	return {
		docked = docked,
	}
end)