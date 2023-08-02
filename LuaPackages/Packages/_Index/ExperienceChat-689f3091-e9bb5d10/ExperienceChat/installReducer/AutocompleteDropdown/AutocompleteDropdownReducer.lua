local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Actions = ExperienceChat.Actions
local AutocompleteDropdownActivated = require(Actions.AutocompleteDropdownActivated)
local AutocompleteDropdownResultsChanged = require(Actions.AutocompleteDropdownResultsChanged)
local AutocompleteDropdownSelectionChanged = require(Actions.AutocompleteDropdownSelectionChanged)

export type State = {
	activated: boolean,
	results: { string },
	selectedIndex: number,
}

local defaultState: State = {
	activated = false,
	results = {},
	selectedIndex = 1,
}

return Rodux.createReducer(defaultState, {
	[AutocompleteDropdownActivated.name] = function(state: State, action: AutocompleteDropdownActivated.Action)
		return Dictionary.join(state, { activated = action.activated })
	end :: any,
	[AutocompleteDropdownResultsChanged.name] = function(state: State, action: AutocompleteDropdownResultsChanged.Action)
		return Dictionary.join(state, {
			results = action.results,
			selectedIndex = 1,
		})
	end :: any,
	[AutocompleteDropdownSelectionChanged.name] = function(state: State, action: AutocompleteDropdownSelectionChanged.Action)
		return Dictionary.join(state, { selectedIndex = action.selectedIndex })
	end :: any,
})
