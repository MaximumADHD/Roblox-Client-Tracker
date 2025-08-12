--[[
    Help modal that opens up when entering feedback mode.
    Also expected to open when the feedback bar's help button is clicked
    dismiss by clicking out
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Signals = require(CorePackages.Packages.Signals)
local Display = require(CorePackages.Workspace.Packages.Display)

-- Components
local FeedbackModule = script.Parent.Parent
local ThemedTextLabel = require(FeedbackModule.Components.PortedComponents.ThemedTextLabel)
local ModalDialog = require(FeedbackModule.Components.ModalDialog)

-- Thunks
local ShowHelpModalThunk = require(FeedbackModule.Thunks.ShowHelpModalThunk)

-- Localization
local withLocalization = require(CorePackages.Workspace.Packages.Localization).withLocalization

local HelpModal = Roact.PureComponent:extend("HelpModal")

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeScreenSize = CoreGuiCommon.Flags.FFlagTopBarSignalizeScreenSize

local MAX_HEIGHT = 130
local MAX_WIDTH = 540

function HelpModal:init()
	self.onDismiss = function()
		self.props.showHelpModal(false)
	end

	if FFlagTopBarSignalizeScreenSize then
		local getViewportSize = Display.GetDisplayStore(false).getViewportSize

		self.disposeScreenSize = Signals.createEffect(function(scope)
			self:setState({
				screenSize = getViewportSize(scope),
			})
		end)
	end
end

function HelpModal:willUnmount()
	if FFlagTopBarSignalizeScreenSize then
		self.disposeScreenSize()
	end
end

function HelpModal:render()
	return withLocalization({
		mainHeader = "CoreScripts.Feedback.Help.MainHeader",
		instructionLabel = "CoreScripts.Feedback.Help.Instructions",
	})(function(localized)
		return Roact.createElement(ModalDialog, {
			visible = self.props.visible,
			screenSize = if FFlagTopBarSignalizeScreenSize then self.state.screenSize else self.props.screenSize,
			titleText = localized.mainHeader,
			maxHeight = MAX_HEIGHT,
			maxWidth = MAX_WIDTH,
			showCloseButton = true,
			contents = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 24),
					PaddingRight = UDim.new(0, 24),
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
		screenSize = if FFlagTopBarSignalizeScreenSize then nil else state.displayOptions.screenSize,
		visible = state.common.showHelpModal,
	}
end, function(dispatch)
	return {
		showHelpModal = function(newShowHelpModalStatus)
			dispatch(ShowHelpModalThunk(newShowHelpModalStatus))
		end,
	}
end)(HelpModal)
