--[[
	Select a story in the story tree.
]]
local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)
local Framework = require(Main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	story: Types.StoryItem,
}

return Action(script.Name, function(story: Types.StoryItem)
	return {
		story = story,
	}
end)
