--[[
	Holds on to a reference of components in the DevFramework.
	Also stores the ModuleScript instances for components and their tests.
]]

local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)
local Rodux = require(Main.Packages.Rodux)

local Framework = require(Main.Packages.Framework)
local Dash = Framework.Dash
local collectArray = Dash.collectArray
local copy = Dash.copy
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

-- Copy the input tree of children, returning a filtered tree of items whose names match the filter
-- string passed in, or items which have descendendants that do.
local function applySearch(children: Types.Array<Types.StoryItem>, filter: string): Types.Array<Types.StoryItem>?
	if filter == "" then
		return children
	end
	return collectArray(children, function(_index: number, child: Types.StoryItem)
		local nextChild = copy(child)
		nextChild.Children = applySearch(nextChild.Children, filter)
		local ok, include = pcall(function()
			return #nextChild.Children > 0 or nextChild.Name:lower():match(filter:lower())
		end)
		if ok and include then
			return nextChild
		else
			return nil
		end
	end)
end

-- Outputs an expansion set into result of all the descendents of children, fully expanding the tree
local function expandAll(children: Types.Array<Types.StoryItem>, mut_result: { [Types.StoryItem]: boolean })
	forEach(children, function(child)
		mut_result[child] = true
		expandAll(child.Children, mut_result)
	end)
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
		return join(state, {
			stories = action.stories,
			searchStories = applySearch(action.stories, state.searchFilter),
		})
	end,
	[SetSearch.name] = function(state: State, action: SetSearch.Props): State
		local searchStories = applySearch(state.stories, action.searchFilter)
		local expandedSearchStories = {}
		expandAll(searchStories, expandedSearchStories)
		return join(state, {
			searchFilter = action.searchFilter,
			searchStories = searchStories,
			expandedSearchStories = expandedSearchStories,
		})
	end,
	[SelectStory.name] = function(state: State, action: SelectStory.Props): State
		local isSearching = #state.searchFilter > 0
		local keyName = isSearching and "expandedSearchStories" or "expandedStories"
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
		local isSearching = #state.searchFilter > 0
		local keyName = isSearching and "expandedSearchStories" or "expandedStories"
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
