local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local LeavePrompt = require(script.Parent.LeavePrompt)

local InGameMenu = script.Parent.Parent.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)

local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)

local LeaveToAppPrompt = Roact.PureComponent:extend("LeaveToAppPrompt")
local Constants = require(InGameMenu.Resources.Constants)

function LeaveToAppPrompt:init()
	self.goToHomePage = function()
		-- Right now it this will only return to the last place in app and not directly to the home page yet
		-- TODO: deep link into home page
		-- https://jira.rbx.com/browse/MOBLUAPP-2597

		SendAnalytics(Constants.AnalyticsLeaveToHomeName, Constants.AnalyticsLeaveToHomeName,
			{confirmed = Constants.AnalyticsLeaveToHomeName})


		-- Shutting down the game DM on mobile can take a little bit,
		-- and without this it would look as if the app just froze for a few seconds instead of actually processing the tap.
		RunService.Heartbeat:Wait()

		game:Shutdown()
	end
end

function LeaveToAppPrompt:render()
	return withLocalization({
		titleText = "CoreScripts.InGameMenu.Prompt.LeaveGameTitle",
		bodyText = "CoreScripts.InGameMenu.Prompt.LeaveGameBodyText",
		confirmText = "CoreScripts.InGameMenu.Prompt.BackToHome",
		cancelText = "CoreScripts.InGameMenu.Prompt.ResumeGame",
	})(function(localized)
		return Roact.createElement(LeavePrompt, {
			titleText = localized.titleText,
			bodyText = localized.bodyText,
			confirmText = localized.confirmText,
			cancelText = localized.cancelText,
			onConfirm = self.goToHomePage,
			onCancel = self.props.closeMenu,
		})
	end)
end

return RoactRodux.UNSTABLE_connect2(
	nil,
	function(dispatch)
		return {
			closeMenu = function()
				dispatch(CloseMenu)
			end,
		}
	end
)(LeaveToAppPrompt)
