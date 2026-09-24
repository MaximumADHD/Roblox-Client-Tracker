--[[
	Sets the color mode used by Foundation and stories.
	Pass nil to clear it and follow Studio's color mode instead.
]]

local Main = script.Parent.Parent.Parent
local Util = require(Main.Packages.Framework).Util
local Action = Util.Action

export type Props = {
	colorMode: string?,
}

return Action(script.Name, function(colorMode: string?): Props
	return {
		colorMode = colorMode,
	}
end)
