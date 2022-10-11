--[[
	Sets which theme is currently being used.
]]

local Main = script.Parent.Parent.Parent
local Util = require(Main.Packages.Framework).Util
local Action = Util.Action

export type Props = {
	theme: string,
}

return Action(script.Name, function(theme: string): Props
	return {
		theme = theme,
	}
end)
