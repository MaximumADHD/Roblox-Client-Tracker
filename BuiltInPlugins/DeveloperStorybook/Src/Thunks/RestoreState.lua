--[[
	Restore the state after the reload of the storybook
]]
local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)

local SetStories = require(Main.Src.Actions.SetStories)
local SelectStory = require(Main.Src.Actions.SelectStory)
local SetSearch = require(Main.Src.Actions.SetSearch)
local SelectColorMode = require(Main.Src.Actions.SelectColorMode)
local SelectThemeName = require(Main.Src.Actions.SelectThemeName)

local Framework = require(Main.Packages.Framework)
local ThemeSwitcher = Framework.Style.ThemeSwitcher

local StoryTreeUtils = require(Main.Src.Util.StoryTreeUtils)
local findStorybooks = require(Main.Src.Util.findStorybooks)

local function findFirstByName(children: { Types.StoryItem }, name: string): Types.StoryItem?
	if not name or name == "" then
		return if #children > 0 then children[1] else nil
	end

	return StoryTreeUtils.findFirst(children, function(item)
		return #item.Children == 0 and item.Name == name
	end)
end

return function(state)
	return function(store: Types.RoduxStore)
		local stories = findStorybooks()
		store:dispatch(SetStories(stories))
		store:dispatch(SetSearch(state.searchFilter))
		local lastStory = findFirstByName(stories, state.lastStoryName)
		if lastStory then
			store:dispatch(SelectStory(lastStory))
		end

		local colorMode = state.colorMode or state.theme
		if colorMode == "Light" or colorMode == "Dark" then
			ThemeSwitcher.setTheme(colorMode)
			store:dispatch(SelectColorMode(colorMode))
		end
		if state.themeName then
			store:dispatch(SelectThemeName(state.themeName))
		end
	end
end
