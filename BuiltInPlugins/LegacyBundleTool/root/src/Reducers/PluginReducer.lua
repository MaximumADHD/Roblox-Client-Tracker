local root = script:FindFirstAncestor("root")

local Rodux = require(root.lib.Rodux)
local Cryo = require(root.lib.Cryo)

local SetEnabled = require(root.src.Actions.SetEnabled)
local SetCurrentScreen = require(root.src.Actions.SetCurrentScreen)
local SetRig = require(root.src.Actions.SetRig)
local SetBundleId = require(root.src.Actions.SetBundleId)

local constants = require(root.src.constants)

return Rodux.createReducer({
	enabled = false,
	currentScreen = nil,

	rig = nil,
	bundleId = nil,
}, {
	[SetEnabled.name] = function(state, action)
		-- reset store
		if action.enabled then
			return {
				enabled = true,
				currentScreen = constants.FIRST_SCREEN,
			}
		else
			return {
				enabled = false,
				-- forces all pages to remount
				currentScreen = nil,
			}
		end
	end,

	[SetCurrentScreen.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentScreen = action.screen,
		})
	end,

	[SetRig.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			rig = action.rig,
		})
	end,

	[SetBundleId.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			bundleId = action.bundleId,
		})
	end,
})
