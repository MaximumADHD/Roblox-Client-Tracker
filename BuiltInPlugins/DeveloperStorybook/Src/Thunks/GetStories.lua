--[[
	Discover the storybooks & their corresponding stories in the data model.
]]

local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)
local findStorybooks = require(Main.Src.Util.findStorybooks)

local SetStories = require(Main.Src.Actions.SetStories)

return function()
	return function(store: Types.RoduxStore)
		store:dispatch(SetStories(findStorybooks()))
	end
end
