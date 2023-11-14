local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Actions = ExperienceChat.Actions
local AutocompleteDropdownActivated = require(Actions.AutocompleteDropdownActivated)
local AutocompleteDropdownResultsChanged = require(Actions.AutocompleteDropdownResultsChanged)
local AutocompleteDropdownSelectionChanged = require(Actions.AutocompleteDropdownSelectionChanged)
local AutocompleteDropdownTypeChanged = require(Actions.AutocompleteDropdownTypeChanged)
local AutocompleteDropdownDeactivated = require(Actions.AutocompleteDropdownDeactivated)

export type State = {
	activated: boolean,
	results: { string },
	selectedIndex: number,
	autocompleteType: "emojis" | "commands" | "none",
}

local defaultState: State = {
	activated = false,
	results = {},
	selectedIndex = 1,
	autocompleteType = "none",
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
	[AutocompleteDropdownTypeChanged.name] = function(state: State, action: AutocompleteDropdownTypeChanged.Action)
		if action.autocompleteType ~= state.autocompleteType then
			return Dictionary.join(state, {
				autocompleteType = action.autocompleteType,
				activated = false,
				results = {},
				selectedIndex = 1,
			})
		end
		return state
	end :: any,
	[AutocompleteDropdownDeactivated.name] = function(state: State, _)
		return Dictionary.join(state, {
			autocompleteType = "none",
			activated = false,
			results = {},
			selectedIndex = 1,
		})
	end :: any,
})
