--[[
	Sets which platform is currently being used.
]]

local Main = script.Parent.Parent.Parent
local Util = require(Main.Packages.Framework).Util
local Action = Util.Action

export type Props = {
	platform: string,
}

return Action(script.Name, function(platform: string): Props
	return {
		platform = platform,
	}
end)
