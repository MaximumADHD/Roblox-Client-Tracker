local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent
local Assets = require(InGameMenu.Resources.Assets)
local CloseReportSentDialog = require(InGameMenu.Actions.CloseReportSentDialog)
local Constants = require(InGameMenu.Resources.Constants)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local InfoDialog = require(InGameMenu.Components.InfoDialog)

local FocusHandler = require(script.Parent.Parent.Connection.FocusHandler)

local REPORT_SENT_DIALOG_SELECTION_GROUP_NAME = "ReportSentDialogGroup"
local REPORT_SENT_DIALOG_SINK_ACTION = "ReporSentDialogSinkAction"

local validateProps = t.strictInterface({
	isReportSentOpen  = t.boolean,
	onDismiss = t.callback,
	inputType = t.optional(t.string),
})

local ReportSentDialog = Roact.PureComponent:extend("ReportSentDialog")

ReportSentDialog.validateProps = validateProps

function ReportSentDialog:init()
	self.buttonRef = Roact.createRef()
end

function ReportSentDialog:renderFocusHandler()
	return Roact.createElement(FocusHandler, {
		isFocused = self.props.inputType == Constants.InputType.Gamepad and self.props.isReportSentOpen,
		didFocus = function()
			GuiService:RemoveSelectionGroup(REPORT_SENT_DIALOG_SELECTION_GROUP_NAME)
			GuiService:AddSelectionParent(REPORT_SENT_DIALOG_SELECTION_GROUP_NAME, self.buttonRef:getValue())
			GuiService.SelectedCoreObject = self.buttonRef:getValue()

			ContextActionService:BindCoreAction(REPORT_SENT_DIALOG_SINK_ACTION, function(actionName, inputState)
				return Enum.ContextActionResult.Sink
			end, false, Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonY, Enum.KeyCode.ButtonX)
		end,
		didBlur = function()
			ContextActionService:UnbindCoreAction(REPORT_SENT_DIALOG_SINK_ACTION)
			GuiService:RemoveSelectionGroup(REPORT_SENT_DIALOG_SELECTION_GROUP_NAME)
		end
	})
end

function ReportSentDialog:render()
	return withLocalization({
		titleText = "CoreScripts.InGameMenu.Report.ThanksForReport",
		bodyText = "CoreScripts.InGameMenu.Report.WillReviewBody",
		dismissText = "CoreScripts.InGameMenu.Ok",
	})(function(localized)
		return Roact.createFragment({
			Dialog = Roact.createElement(InfoDialog, {
				titleText = localized.titleText,
				bodyText = localized.bodyText,
				dismissText = localized.dismissText,
				iconImage = Assets.Images.SuccessTick,
				buttonRef = self.buttonRef,
				onDismiss = self.props.onDismiss,
				visible = self.props.isReportSentOpen,
			}),
			FocusHandler = self:renderFocusHandler()
		})
	end)
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isReportSentOpen = state.report.reportSentOpen,
		inputType = state.displayOptions.inputType,
	}
end, function(dispatch)
	return {
		onDismiss = function()
			dispatch(CloseReportSentDialog())
		end,
	}
end)(ReportSentDialog)
