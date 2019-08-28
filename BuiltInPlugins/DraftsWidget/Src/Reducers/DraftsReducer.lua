--[[
	Holds onto all drafts in a dictionary using the form of	[script] = stateDictionary
	stateDictionary contains state metadata for all states in DraftState.lua
	getDraftDefaultState contains the default values for these states
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local DraftState = require(Plugin.Src.Symbols.DraftState)
local CommitState = require(Plugin.Src.Symbols.CommitState)
local AutosaveState = require(Plugin.Src.Symbols.AutosaveState)

local function getDraftDefaultState(draft)
	return {
		[DraftState.Outdated] = false,
		[DraftState.Deleted] = draft.Parent == nil,
		[DraftState.Committed] = CommitState.Uncommitted,
		[DraftState.Autosaved] = AutosaveState.Saved,
	}
end

local DraftsReducer = Rodux.createReducer({},
{
	DraftAddedAction = function(state, action)
		local draft = action.Draft

		return Cryo.Dictionary.join(state, {
			[draft] = getDraftDefaultState(draft),
		})
	end,

	DraftRemovedAction = function(state, action)
		local draft = action.Draft

		return Cryo.Dictionary.join(state, {
			[draft] = Cryo.None,
		})
	end,

	DraftsLoadedAction = function(state, action)
		local drafts = action.Drafts

		local new = {}
		for _,draft in ipairs(drafts) do
			new[draft] = getDraftDefaultState(draft)
		end

		return Cryo.Dictionary.join(state, new)
	end,

	DraftStateChangedAction = function(state, action)
		local draft = action.Draft
		local stateType = action.StateType
		local stateValue = action.StateValue

		assert(state[draft] ~= nil, "Attempt to modify uninitialized state for draft '"..draft.Name.."'")
		return Cryo.Dictionary.join(state, {
			[draft] = Cryo.Dictionary.join(state[draft], {
				[stateType] = stateValue,
			})
		})
	end,
})

return DraftsReducer