--!nonstrict
local ContextActionService = game:GetService("ContextActionService")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local TnsModule = script.Parent.Parent
local Dependencies = require(TnsModule.Dependencies)
local FocusHandler = require(Dependencies.FocusHandler)
local playerInterface = require(Dependencies.playerInterface)
local ThemedTextLabel = require(Dependencies.ThemedTextLabel)
local withLocalization = require(Dependencies.withLocalization)

local PrimarySystemButton = UIBlox.App.Button.PrimarySystemButton

local BlockPlayerItem = require(TnsModule.Components.BlockPlayerItem)
local EndReportFlow = require(TnsModule.Actions.EndReportFlow)
local OpenBlockPlayerDialog = require(TnsModule.Actions.OpenBlockPlayerDialog)
local Constants = require(TnsModule.Resources.Constants)
local ModalDialog = require(TnsModule.Components.ModalDialog)

local SELECTION_GROUP_NAME = "ReportSentDialogGroup"
local SINK_ACTION = "ReporSentDialogSinkAction"

local ReportSentDialog = Roact.PureComponent:extend("ReportSentDialog")

ReportSentDialog.validateProps = t.strictInterface({
	isReportSentOpen = t.boolean,
	screenSize = t.Vector2,
	inputType = t.optional(t.string),
	reportType = t.optional(t.valueOf(Constants.ReportType)),
	targetPlayer = t.optional(playerInterface),
	closeDialog = t.callback,
	openBlockPlayerDialog = t.callback,
})

function ReportSentDialog:init()
	self:clearState()
	self.buttonRef = Roact.createRef()
	-- Toggle the checkbox.
	self.onCheckBoxActivated = function(selected)
		self:setState({
			isCheckBoxSelected = selected,
		})
	end
	-- Press the "Done" button.
	self.onConfirm = function()
		local playerReport = self:isReportingPlayer()
		if playerReport and self.state.isCheckBoxSelected then
			self.props.openBlockPlayerDialog(self.props.targetPlayer)
		elseif not playerReport then
			self.props.closeDialog()
		end
		self:clearState()
	end
	-- Press the transparent background.
	self.onCancel = function()
		self.props.closeDialog()
		self:clearState()
	end
end

function ReportSentDialog:clearState()
	self:setState({
		isCheckBoxSelected = false,
	})
end

function ReportSentDialog:isReportingPlayer()
	return (self.props.reportType == Constants.ReportType.Player and self.props.targetPlayer ~= nil)
end

function ReportSentDialog:renderFocusHandler()
	return Roact.createElement(FocusHandler, {
		isFocused = ((self.props.inputType == Constants.InputType.Gamepad) and self.props.isReportSentOpen),
		didFocus = function()
			GuiService:RemoveSelectionGroup(SELECTION_GROUP_NAME)
			GuiService:AddSelectionParent(SELECTION_GROUP_NAME, self.buttonRef:getValue())
			GuiService.SelectedCoreObject = self.buttonRef:getValue()

			ContextActionService:BindCoreAction(SINK_ACTION, function(actionName, inputState)
				return Enum.ContextActionResult.Sink
			end, false, Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonY, Enum.KeyCode.ButtonX)
		end,
		didBlur = function()
			ContextActionService:UnbindCoreAction(SINK_ACTION)
			GuiService:RemoveSelectionGroup(SELECTION_GROUP_NAME)
		end
	})
end

function ReportSentDialog:renderBlockFrame()
	if not self:isReportingPlayer() then
		return nil
	end
	return withLocalization({
		otherStepsText = "CoreScripts.InGameMenu.Report.OtherActionsHeader",
		blockPlayerText = {
			"CoreScripts.InGameMenu.Report.BlockDisplayName",
			DISPLAY_NAME = self.props.targetPlayer.DisplayName,
			RBX_NAME = self.props.targetPlayer.Name,
		},
	})(function(localized)
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			Size = UDim2.new(1, 0, 0, 70),
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			OtherStepsText = Roact.createElement(ThemedTextLabel, {
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, 0),
				Text = localized.otherStepsText,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			BlockPlayerItem = Roact.createElement(BlockPlayerItem, {
				layoutOrder = 2,
				size = UDim2.new(1, 0, 0, 56),
				text = localized.blockPlayerText,
				isCheckBoxSelected = self.state.isCheckBoxSelected,
				onCheckBoxActivated = self.onCheckBoxActivated,
			}),
		})
	end)
end

function ReportSentDialog:renderContents()
	return withLocalization({
		bodyText = "CoreScripts.InGameMenu.Report.ReceivedReportBody",
	})(function(localized)
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 24),
			}),
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 35),
				PaddingBottom = UDim.new(0, 35),
				PaddingLeft = UDim.new(0, 24),
				PaddingRight = UDim.new(0, 24),
			}),
			BodyText = Roact.createElement(ThemedTextLabel, {
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, 0),
				Text = localized.bodyText,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			BlockFrame = self:renderBlockFrame(),
		})
	end)
end

function ReportSentDialog:render()
	return withLocalization({
		titleText = "CoreScripts.InGameMenu.Report.ThanksForReport",
		dismissText = "CoreScripts.InGameMenu.Report.Done",
	})(function(localized)
		return Roact.createFragment({
			ModalDialog = Roact.createElement(ModalDialog, {
				visible = self.props.isReportSentOpen,
				screenSize = self.props.screenSize,
				titleText = localized.titleText,
				contents = self:renderContents(),
				actionButtons = Roact.createElement(PrimarySystemButton, {
					size = UDim2.new(1, 0, 1, 0),
					onActivated = self.onConfirm,
					text = localized.dismissText,
					[Roact.Ref] = self.buttonRef,
				}),
				onDismiss = self.onCancel,
			}),
			FocusHandler = self:renderFocusHandler()
		})
	end)
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isReportSentOpen = state.report.currentPage == Constants.Page.ReportSent,
		reportType = state.report.reportType,
		targetPlayer = state.report.targetPlayer,
		screenSize = state.displayOptions.screenSize,
		--TODO: integrate inputType
	}
end, function(dispatch)
	return {
		closeDialog = function()
			dispatch(EndReportFlow())
		end,
		openBlockPlayerDialog = function(player)
			dispatch(OpenBlockPlayerDialog(player))
		end,
	}
end)(ReportSentDialog)
