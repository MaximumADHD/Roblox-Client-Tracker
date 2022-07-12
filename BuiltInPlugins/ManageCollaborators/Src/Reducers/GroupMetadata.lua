local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local SetGroupMetadata = require(Actions.SetGroupMetadata)
local SetCurrentGroupMetadata = require(Actions.SetCurrentGroupMetadata)

local isEqualCheck = require(Plugin.Src.Util.IsEqualCheck)

local function getDefaultState()
	return {
		CurrentGroupMetadata = {},
	}
end

return Rodux.createReducer(getDefaultState(), {
	ResetStore = function(state, action)
		return getDefaultState()
	end,

	[SetGroupMetadata.name] = function(state, action)
		local newGroupMetadata = action.newGroupMetadata
		assert(type(newGroupMetadata) == "table")

		if isEqualCheck(state.CurrentGroupMetadata, newGroupMetadata) then
			newGroupMetadata = Cryo.None
		end

		return Cryo.Dictionary.join(state, {
			NewGroupMetadata = newGroupMetadata
		})
	end,
	
	[SetCurrentGroupMetadata.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			CurrentGroupMetadata = action.currentGroupMetadata
		})
	end,
})
