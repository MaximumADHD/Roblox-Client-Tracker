--[[
	FeedbackApp.lua
	Element encapsulating other visible parts of the module
	NOTE: This app should be functionalized as soon as possible prior to global release.
	https://roblox.atlassian.net/browse/UC-5861
]]

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local FeedbackModule = script.Parent.Parent

local withStyle = UIBlox.Core.Style.withStyle

-- Actions
local SetFeedbackFlowState = require(FeedbackModule.Actions.SetFeedbackFlowState)
local SetScreenSize = require(FeedbackModule.Actions.SetScreenSize)

-- Localization
local withLocalization = require(CorePackages.Workspace.Packages.Localization).withLocalization

-- Assets
local Assets = require(FeedbackModule.Resources.Assets)

-- Components
local FeedbackReportDialog = require(FeedbackModule.Components.FeedbackReportDialog)
local RefinedFeedbackBar = require(FeedbackModule.Components.RefinedFeedbackBar)
local FeedbackSubmissionToast = require(FeedbackModule.Components.FeedbackSubmissionToast)
local HelpModal = require(FeedbackModule.Components.HelpModal)
local OnboardingModal = require(FeedbackModule.Components.OnboardingModal)

local FeedbackApp = Roact.PureComponent:extend("FeedbackApp")

FeedbackApp.validateProps = t.strictInterface({
	setScreenGuiSize = t.callback,
})

function FeedbackApp:render()
	return Roact.createElement(UIBlox.Core.Style.Provider, {}, {
		Gui = Roact.createElement("ScreenGui", {
			AutoLocalize = false,
			IgnoreGuiInset = true,
			OnTopOfCoreBlur = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			[Roact.Change.AbsoluteSize] = self.props.setScreenGuiSize,
		}, {
			-- Frame that covers the entire screen such that underlying
			-- component positions are relative to the whole screen
			ScreenFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 10,
			}, {
				FeedbackSubmissionToast = Roact.createElement(FeedbackSubmissionToast),
				HelpModal = Roact.createElement(HelpModal),
				OnboardingModal = Roact.createElement(OnboardingModal),
				FeedbackReportDialog = Roact.createElement(FeedbackReportDialog),
			}),
			RefinedFeedbackBar = withLocalization({
				feedbackBarText = "CoreScripts.Feedback.FeedbackBar.MainLabel",
			})(function(localized)
				return withStyle(function(style)
					local fonts: { BaseSize: number, Body: { RelativeSize: number } } = style.Font
					return Roact.createElement(RefinedFeedbackBar, {
						leftHint = {
							text = localized.feedbackBarText,
							hintTextSize = fonts.BaseSize * fonts.Body.RelativeSize,
							maxWidth = 200,
							icon = Assets.Images.FeedbackBarHintIcon,
						},
					}, {})
				end)
			end),
		}),
	})
end

return RoactRodux.connect(function() end, function(dispatch)
	return {
		setScreenGuiSize = function(rbx)
			dispatch(SetScreenSize(rbx.AbsoluteSize))
		end,
		setFeedbackFlowState = function(newFeedbackFlowState)
			dispatch(function(store)
				store:dispatch(SetFeedbackFlowState(newFeedbackFlowState))
			end)
		end,
	}
end)(FeedbackApp)
