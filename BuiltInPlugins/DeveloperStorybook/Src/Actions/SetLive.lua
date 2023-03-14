--[[
	Sets the current search filter
]]

local Main = script.Parent.Parent.Parent
local Util = require(Main.Packages.Framework).Util
local Action = Util.Action

export type Props = {
	live: boolean,
}

return Action(script.Name, function(live: boolean): Props
	return {
		live = live,
	}
end)
