--[[
	Sets the stories being displayed by the story tree.
]]
local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)
local Util = require(Main.Packages.Framework).Util
local Action = Util.Action

export type Props = {
	stories: Types.Array<Types.StoryItem>,
}

return Action(script.Name, function(stories: Types.Array<Types.StoryItem>): Props
	return {
		stories = stories,
	}
end)
