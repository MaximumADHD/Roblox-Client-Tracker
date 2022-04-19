local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Rodux = InGameMenuDependencies.Rodux
local Cryo = InGameMenuDependencies.Cryo

local TrustAndSafety = script.Parent.Parent

local OpenReportDialog = require(TrustAndSafety.Actions.OpenReportDialog)
local CloseReportDialog = require(TrustAndSafety.Actions.CloseReportDialog)
local OpenReportSentDialog = require(TrustAndSafety.Actions.OpenReportSentDialog)
local CloseReportSentDialog = require(TrustAndSafety.Actions.CloseReportSentDialog)

return Rodux.createReducer({
	dialogOpen = false,
	reportSentOpen = false,
	userId = nil, --Nil if reporting the game
	userName = nil,
	placeName = nil,
}, {
	[OpenReportDialog.name] = function(state, action)
		return {
			dialogOpen = true,
			reportSentOpen = state.reportSentOpen,
			userId = action.userId,
			userName = action.userName,
			placeName = action.placeName,
		}
	end,
	[CloseReportDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			dialogOpen = false,
		})
	end,
	[OpenReportSentDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			reportSentOpen = true,
		})
	end,
	[CloseReportSentDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			reportSentOpen = false,
		})
	end,
})