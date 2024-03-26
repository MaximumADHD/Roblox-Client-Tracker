--[[
    Modal that opens up when entering feedback mode.
    dismiss by clicking out
]]
local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.UIBlox)
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

-- Services
local ExperienceStateCaptureService = game:GetService("ExperienceStateCaptureService")

-- Components
local FeedbackModule = script.Parent.Parent
local ThemedTextLabel = require(FeedbackModule.Components.PortedComponents.ThemedTextLabel)
local ModalDialog = require(FeedbackModule.Components.ModalDialog)
local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
-- Thunks
local ShowOnboardingModalThunk = require(FeedbackModule.Thunks.ShowOnboardingModalThunk)

-- Localization
local withLocalization = require(CorePackages.Workspace.Packages.Localization).withLocalization
local OnboardingModal = Roact.PureComponent:extend("OnboardingModal")

local HEIGHT = 200
local WIDTH = 540
local BUTTON_HEIGHT = 36

function OnboardingModal:init()
	self.onDismiss = function()
		self.props.showOnboardingModal(false)
	end

	self.onCancel = function()
		ExperienceStateCaptureService:ToggleCaptureMode()
	end
end

function OnboardingModal:render()
	return withLocalization({
		mainHeader = "CoreScripts.Feedback.Onboarding.MainHeader",
		instructionLabel = "CoreScripts.Feedback.Onboarding.Instructions",
		cancel = "CoreScripts.Feedback.Onboarding.Cancel",
		start = "CoreScripts.Feedback.Onboarding.Start",
	})(function(localized)
		return Roact.createElement(ModalDialog, {
			visible = self.props.visible,
			screenSize = self.props.screenSize,
			titleText = localized.mainHeader,
			maxHeight = HEIGHT,
			maxWidth = WIDTH,
			showCloseButton = true,
			actionButtons = Roact.createElement(ButtonStack, {
				buttonHeight = BUTTON_HEIGHT,
				buttons = {
					{
						buttonType = ButtonType.Secondary,
						props = {
							onActivated = self.onCancel,
							text = localized.cancel,
						},
					},
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							isDisabled = false,
							onActivated = self.onDismiss,
							text = localized.start,
						},
					},
				},
			}),
			contents = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 24),
					PaddingRight = UDim.new(0, 24),
					PaddingBottom = UDim.new(0, 24),
				}),
				Layout = Roact.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Top,
				}),
				InstructionLabel = Roact.createElement(ThemedTextLabel, {
					LayoutOrder = 1,
					fontKey = "Body",
					themeKey = "TextDefault",
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(0, 76, 0.5, 0),
					Size = UDim2.new(1, 0, 0.4, 36),
					Text = localized.instructionLabel,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
			}),
			onDismiss = self.onDismiss,
		})
	end)
end

return RoactRodux.connect(function(state)
	return {
		screenSize = state.displayOptions.screenSize,
		visible = state.common.showOnboardingModal,
	}
end, function(dispatch)
	return {
		showOnboardingModal = function(newShowOnboardingModalStatus)
			dispatch(ShowOnboardingModalThunk(newShowOnboardingModalStatus))
		end,
	}
end)(OnboardingModal)
