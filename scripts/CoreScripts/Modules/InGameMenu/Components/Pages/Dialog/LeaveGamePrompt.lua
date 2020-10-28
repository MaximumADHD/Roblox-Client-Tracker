local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local LeavePrompt = require(script.Parent.LeavePrompt)

local InGameMenu = script.Parent.Parent.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)

local Constants = require(InGameMenu.Resources.Constants)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)

local GetDefaultQualityLevel = require(RobloxGui.Modules.Common.GetDefaultQualityLevel)


local LeaveToAppPrompt = Roact.PureComponent:extend("LeaveToAppPrompt")

function LeaveToAppPrompt:init()
	self.leaveGameConfirm = function()
		SendAnalytics(Constants.AnalyticsInGameMenuName, Constants.AnalyticsLeaveGameName,
						{confirmed = Constants.AnalyticsConfirmedName})
		RunService.Heartbeat:Wait()
		game:Shutdown()
		settings().Rendering.QualityLevel = GetDefaultQualityLevel()
	end
end

function LeaveToAppPrompt:render()
	return withLocalization({
		titleText = "CoreScripts.InGameMenu.Prompt.LeaveGameTitle",
		bodyText = "CoreScripts.InGameMenu.Prompt.LeaveGameBodyText",
		confirmText = "CoreScripts.InGameMenu.Prompt.LeaveGame",
		cancelText = "CoreScripts.InGameMenu.Prompt.ResumeGame",
	})(function(localized)
		return Roact.createElement(LeavePrompt, {
			titleText = localized.titleText,
			bodyText = localized.bodyText,
			confirmText = localized.confirmText,
			cancelText = localized.cancelText,
			onConfirm = self.leaveGameConfirm,
			onCancel = self.props.closeMenu,
		})
	end)
	end

return RoactRodux.UNSTABLE_connect2(
	nil,
	function(dispatch)
		return {
			closeMenu = function()
				-- Since we dont have a navigation stack we will just close the menu for now.
				dispatch(CloseMenu)
				SendAnalytics(Constants.AnalyticsInGameMenuName, Constants.AnalyticsLeaveGameName, {confirmed = Constants.AnalyticsCancelledName})
			end,
		}
	end
)(LeaveToAppPrompt)
