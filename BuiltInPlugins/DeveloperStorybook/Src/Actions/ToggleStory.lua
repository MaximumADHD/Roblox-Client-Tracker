--[[
	Toggle a story in the story tree.
]]
local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)
local Framework = require(Main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	change: { [Types.StoryItem]: boolean },
}

return Action(script.Name, function(change: { [Types.StoryItem]: boolean })
	return {
		change = change,
	}
end)
