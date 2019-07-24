local CorePackages = game:GetService("CorePackages")
local VRService = game:GetService("VRService")
local GuiService = game:GetService("GuiService")

local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)

local Actions = script.Parent.Parent.Actions
local SetPlayerListVisibility = require(Actions.SetPlayerListVisibility)
local SetPlayerListEnabled = require(Actions.SetPlayerListEnabled)
local SetTopBarEnabled = require(Actions.SetTopBarEnabled)
local SetTempHideKey = require(Actions.SetTempHideKey)
local SetPerformanceStatsVisible = require(Actions.SetPerformanceStatsVisible)
local SetSmallTouchDevice = require(Actions.SetSmallTouchDevice)
local SetTenFootInterface = require(Actions.SetTenFootInterface)
local SetInspectMenuEnabled = require(Actions.SetInspectMenuEnabled)

local initialDisplayOptions = {
	setVisible = true, --If the user wants the leaderboard visible or not
	isVisible = true, --Visiblity based on all other display options
	isSmallTouchDevice = false,
	performanceStatsVisible = false,
	vrEnabled = VRService.VREnabled,
	inspectMenuEnabled = GuiService:GetInspectMenuEnabled(),
	playerlistCoreGuiEnabled = true,
	topbarEnabled = true,
	isTenFootInterface = false,
	tempHideKeys = {},
}

local function updateIsVisible(state)
	state.playerlistCoreGuiEnabled = state.playerlistCoreGuiEnabled and state.topbarEnabled
	state.isVisible = state.setVisible
	-- Leaderboard visiblity is independent of coreGui options on console.
	if not state.isTenFootInterface then
		state.isVisible = state.isVisible and state.playerlistCoreGuiEnabled
			and (not state.isSmallTouchDevice) and (not state.vrEnabled)
	end
	state.isVisible = state.isVisible and Cryo.isEmpty(state.tempHideKeys)
	return state
end

local DisplayOptions = Rodux.createReducer(initialDisplayOptions, {
	[SetPlayerListVisibility.name] = function(state, action)
		return updateIsVisible(Cryo.Dictionary.join(state, {
			setVisible = action.isVisible,
		}))
	end,

	[SetPlayerListEnabled.name] = function(state, action)
		return updateIsVisible(Cryo.Dictionary.join(state, {
			playerlistCoreGuiEnabled = action.isEnabled,
		}))
	end,

	[SetTopBarEnabled.name] = function(state, action)
		return updateIsVisible(Cryo.Dictionary.join(state, {
			topbarEnabled = action.isEnabled,
		}))
	end,

	[SetTempHideKey.name] = function(state, action)
		local tempHideValue = action.tempHideValue
		if tempHideValue == nil then
			tempHideValue = Cryo.None
		end
		return updateIsVisible(Cryo.Dictionary.join(state, {
			tempHideKeys = Cryo.Dictionary.join(state.tempHideKeys, {
				[action.tempHideKey] = tempHideValue,
			}),
		}))
	end,

	[SetPerformanceStatsVisible.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			performanceStatsVisible = action.isVisible,
		})
	end,

	[SetSmallTouchDevice.name] = function(state, action)
		return updateIsVisible(Cryo.Dictionary.join(state, {
			isSmallTouchDevice = action.isSmallTouchDevice,
		}))
	end,

	[SetTenFootInterface.name] = function(state, action)
		return updateIsVisible(Cryo.Dictionary.join(state, {
			isTenFootInterface = action.isTenFootInterface,
		}))
	end,

	[SetInspectMenuEnabled.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			inspectMenuEnabled = action.enabled,
		})
	end,
})

return DisplayOptions
