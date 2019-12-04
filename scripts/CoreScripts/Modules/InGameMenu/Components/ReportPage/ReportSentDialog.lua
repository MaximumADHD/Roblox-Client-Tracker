local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)
local CloseReportSentDialog = require(InGameMenu.Actions.CloseReportSentDialog)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local GlobalConfig = require(InGameMenu.GlobalConfig)

local InfoDialog = require(InGameMenu.Components.InfoDialog)

local validateProps = t.strictInterface({
	isReportSentOpen  = t.boolean,
	onDismiss = t.callback,
})

local function ReportSentDialog(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return withLocalization({
		titleText = "CoreScripts.InGameMenu.Report.ThanksForReport",
		bodyText = "CoreScripts.InGameMenu.Report.WillReviewBody",
		dismissText = "CoreScripts.InGameMenu.Ok",
	})(function(localized)
		return Roact.createElement(InfoDialog, {
			titleText = localized.titleText,
			bodyText = localized.bodyText,
			dismissText = localized.dismissText,
			iconImage = Assets.Images.SuccessTick,

			onDismiss = props.onDismiss,
			visible = props.isReportSentOpen,
		})
	end)
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isReportSentOpen = state.report.reportSentOpen,
	}
end, function(dispatch)
	return {
		onDismiss = function()
			dispatch(CloseReportSentDialog())
		end,
	}
end)(ReportSentDialog)