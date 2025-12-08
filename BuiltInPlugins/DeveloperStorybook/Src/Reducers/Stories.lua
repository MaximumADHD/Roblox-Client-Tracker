--[[
	Holds on to a reference of components in the DevFramework.
	Also stores the ModuleScript instances for components and their tests.
]]

local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)
local Rodux = require(Main.Packages.Rodux)

local GuiService = game:GetService("GuiService")
local Dash = require(Main.Packages.Dash)
local forEach = Dash.forEach
local join = Dash.join
local joinDeep = Dash.joinDeep

local SelectStory = require(Main.Src.Actions.SelectStory)
local SelectTheme = require(Main.Src.Actions.SelectTheme)
local SelectPlatform = require(Main.Src.Actions.SelectPlatform)
local ToggleStory = require(Main.Src.Actions.ToggleStory)
local SetStories = require(Main.Src.Actions.SetStories)
local ToggleEmbedded = require(Main.Src.Actions.ToggleEmbedded)
local SetSearch = require(Main.Src.Actions.SetSearch)
local SetLive = require(Main.Src.Actions.SetLive)
local SetSettings = require(Main.Src.Actions.SetSettings)
local CollapseTree = require(Main.Src.Actions.CollapseTree)
local StoryTreeUtils = require(Main.Src.Util.StoryTreeUtils)

-- Outputs an expansion set into result of all the descendents of children, fully expanding the tree
local function expandAll(children: Types.Array<Types.StoryItem>, mut_result: { [Types.StoryItem]: boolean })
	forEach(children, function(child)
		mut_result[child] = true
		expandAll(child.Children, mut_result)
	end)
end

-- We store states separetely, so if you erase the filter we can restore the expansion you had before
local function getExpandedStoriesKey(state: State)
	local isSearching = #state.searchFilter > 0
	return isSearching and "expandedSearchStories" or "expandedStories"
end

export type State = {
	theme: string?,
	platform: string,
	settings: Types.Settings,
	embedded: boolean,
	searchFilter: string,
	searchStories: Types.Array<Types.StoryItem>,
	expandedSearchStories: { [Types.StoryItem]: boolean },
	stories: Types.Array<Types.StoryItem>,
	selectedStory: Types.StoryItem?,
	expandedStories: { [Types.StoryItem]: boolean },
}

return Rodux.createReducer({
	embedded = false,
	live = false,
	searchFilter = "",
	searchStories = {},
	theme = nil,
	platform = "Default",
	settings = {
		reducedMotion = false,
		preferredTransparency = 1,
		preferredTextSize = GuiService.PreferredTextSize,
		scale = 1,
	},
	expandedSearchStories = {},
	stories = {},
	selectedStory = nil,
	expandedStories = {},
}, {
	[ToggleEmbedded.name] = function(state: State): State
		return join(state, {
			embedded = not state.embedded,
		})
	end,
	[SetStories.name] = function(state: State, action: SetStories.Props): State
		local searchStories = StoryTreeUtils.applySearch(action.stories, state.searchFilter)
		local expandedSearchStories = {}
		expandAll(searchStories, expandedSearchStories)
		return join(state, {
			stories = action.stories,
			searchStories = searchStories,
			expandedSearchStories = expandedSearchStories,
		})
	end,
	[SetSearch.name] = function(state: State, action: SetSearch.Props): State
		local searchStories = StoryTreeUtils.applySearch(state.stories, action.searchFilter)
		local expandedSearchStories = {}
		expandAll(searchStories, expandedSearchStories)
		return join(state, {
			searchFilter = action.searchFilter,
			searchStories = searchStories,
			expandedSearchStories = expandedSearchStories,
		})
	end,
	[SelectStory.name] = function(state: State, action: SelectStory.Props): State
		local keyName = getExpandedStoriesKey(state)
		return joinDeep(
			join(state, {
				selectedStory = action.story,
			}),
			{
				[keyName] = {
					[action.story] = not state[keyName][action.story],
				},
			}
		)
	end,
	[ToggleStory.name] = function(state: State, action: ToggleStory.Props): State
		local keyName = getExpandedStoriesKey(state)
		return joinDeep(state, {
			[keyName] = action.change,
		})
	end,
	[CollapseTree.name] = function(state: State): State
		return join(state, {
			expandedStories = {},
		})
	end,
	[SelectTheme.name] = function(state: State, action: SelectTheme.Props): State
		return join(state, {
			theme = action.theme,
		})
	end,
	[SelectPlatform.name] = function(state: State, action: SelectPlatform.Props): State
		return join(state, {
			platform = action.platform,
		})
	end,
	[SetLive.name] = function(state: State, action: SetLive.Props): State
		return join(state, {
			live = action.live,
		})
	end,
	[SetSettings.name] = function(state: State, action: SetSettings.Props): State
		return join(state, {
			settings = action.settings,
		})
	end,
})
