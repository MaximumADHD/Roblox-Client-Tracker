--[[
	Sets the Foundation theme name used by stories.
]]

local Main = script.Parent.Parent.Parent
local Util = require(Main.Packages.Framework).Util
local Action = Util.Action

export type Props = {
	themeName: string,
}

return Action(script.Name, function(themeName: string): Props
	return {
		themeName = themeName,
	}
end)
