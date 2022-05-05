local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local TrustAndSafety = script.Parent.Parent

local OpenReportDialog = require(TrustAndSafety.Actions.OpenReportDialog)
local CloseReportDialog = require(TrustAndSafety.Actions.CloseReportDialog)
local OpenReportSentDialog = require(TrustAndSafety.Actions.OpenReportSentDialog)
local CloseReportSentDialog = require(TrustAndSafety.Actions.CloseReportSentDialog)

return Rodux.createReducer({
	dialogOpen = false,
	userId = nil, --Nil if reporting the game
	userName = nil,
	isReportSentOpen = false,
	reportType = nil,
	targetPlayer = nil,
}, {
	[OpenReportDialog.name] = function(state, action)
		return {
			dialogOpen = true,
			reportSentOpen = state.reportSentOpen,
			userId = action.userId,
			userName = action.userName,
		}
	end,
	[CloseReportDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			dialogOpen = false,
		})
	end,
	[OpenReportSentDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isReportSentOpen = true,
			reportType = action.reportType,
			targetPlayer = action.targetPlayer,
		})
	end,
	[CloseReportSentDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isReportSentOpen = false,
		})
	end,
})
