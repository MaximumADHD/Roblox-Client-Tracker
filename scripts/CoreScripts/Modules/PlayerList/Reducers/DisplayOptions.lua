local CorePackages = game:GetService("CorePackages")
local VRService = game:GetService("VRService")
local GuiService = game:GetService("GuiService")

local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)

local Actions = script.Parent.Parent.Actions
local SetPlayerListVisibility = require(Actions.SetPlayerListVisibility)
local SetPlayerListEnabled = require(Actions.SetPlayerListEnabled)
local SetTempHideKey = require(Actions.SetTempHideKey)
local SetPerformanceStatsVisible = require(Actions.SetPerformanceStatsVisible)
local SetSmallTouchDevice = require(Actions.SetSmallTouchDevice)
local SetTenFootInterface = require(Actions.SetTenFootInterface)
local SetInspectMenuEnabled = require(Actions.SetInspectMenuEnabled)
local SetIsUsingGamepad = require(Actions.SetIsUsingGamepad)
local SetHasPermissionToVoiceChat = require(Actions.SetHasPermissionToVoiceChat)
local SetMinimized = require(Actions.SetMinimized)
local SetSubjectToChinaPolicies = require(Actions.SetSubjectToChinaPolicies)

local initialDisplayOptions = {
	isMinimized = false,
	setVisible = true, --If the user wants the leaderboard visible or not
	isVisible = true, --Visiblity based on all other display options
	isSmallTouchDevice = false,
	performanceStatsVisible = false,
	vrEnabled = VRService.VREnabled,
	inspectMenuEnabled = GuiService:GetInspectMenuEnabled(),
	playerlistCoreGuiEnabled = true,
	isTenFootInterface = false,
	isUsingGamepad = false,
	hasPermissionToVoiceChat = false,
	tempHideKeys = {},
	subjectToChinaPolicies = true,
}

local function updateIsVisible(state)
	state.isVisible = state.setVisible
	-- Leaderboard visiblity is independent of coreGui options on console.
	if not state.isTenFootInterface then
		state.isVisible = state.isVisible
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
		local newSetVisible = state.setVisible
		if action.isTenFootInterface then
			newSetVisible = false
		end
		return updateIsVisible(Cryo.Dictionary.join(state, {
			isTenFootInterface = action.isTenFootInterface,
			setVisible = newSetVisible,
		}))
	end,

	[SetInspectMenuEnabled.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			inspectMenuEnabled = action.enabled,
		})
	end,

	[SetIsUsingGamepad.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isUsingGamepad = action.isUsingGamepad,
		})
	end,

	[SetHasPermissionToVoiceChat.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			hasPermissionToVoiceChat = action.hasPermissionToVoiceChat,
		})
	end,

	[SetMinimized.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isMinimized = action.isMinimized,
		})
	end,

	[SetSubjectToChinaPolicies.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			subjectToChinaPolicies = action.subjectToChinaPolicies,
		})
	end,
})

return DisplayOptions
