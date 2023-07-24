--[[
	Select a story in the story tree.
]]
local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)
local Framework = require(Main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	settings: Types.Settings,
}

return Action(script.Name, function(settings: Types.Settings)
	return {
		settings = settings,
	}
end)
