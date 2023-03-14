local root = script:FindFirstAncestor("root")

local Rodux = require(root.Packages.Rodux)
local Cryo = require(root.Packages.Cryo)

local SetEnabled = require(root.src.Actions.SetEnabled)
local SetCurrentScreen = require(root.src.Actions.SetCurrentScreen)
local SetMode = require(root.src.Actions.SetMode)
local SetId = require(root.src.Actions.SetId)
local SetRig = require(root.src.Actions.SetRig)

return Rodux.createReducer({
	enabled = false,
	currentScreen = nil,
	mode = nil,
	id = nil,
	rig = nil,
}, {
	[SetEnabled.name] = function(state, action)
		-- reset store
		if action.enabled then
			return {
				enabled = true,
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

	[SetMode.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			mode = action.mode,
		})
	end,

	[SetId.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			id = action.id,
		})
	end,

	[SetRig.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			rig = action.rig,
		})
	end,
})
