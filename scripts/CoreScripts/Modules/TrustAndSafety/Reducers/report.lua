--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local TnsModule = script.Parent.Parent

local OpenReportMenu = require(TnsModule.Actions.OpenReportMenu)
local CloseReportMenu = require(TnsModule.Actions.CloseReportMenu)
local OpenReportDialog = require(TnsModule.Actions.OpenReportDialog)
local CloseReportDialog = require(TnsModule.Actions.CloseReportDialog)
local OpenReportSentDialog = require(TnsModule.Actions.OpenReportSentDialog)
local CloseReportSentDialog = require(TnsModule.Actions.CloseReportSentDialog)
local OpenBlockPlayerDialog = require(TnsModule.Actions.OpenBlockPlayerDialog)
local CloseBlockPlayerDialog = require(TnsModule.Actions.CloseBlockPlayerDialog)

return Rodux.createReducer({
	isReportMenuOpen = false,
	isReportDialogOpen = false,
	isReportSentOpen = false,
	isBlockPlayerOpen = false,
	reportType = nil,
	targetPlayer = nil,
	onGoBackFromReportDialog = nil,
}, {
	[OpenReportMenu.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isReportMenuOpen = true,
		})
	end,
	[CloseReportMenu.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isReportMenuOpen = false,
		})
	end,
	[OpenReportDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isReportMenuOpen = false,
			isReportDialogOpen = true,
			reportType = action.reportType,
			targetPlayer = action.targetPlayer or Cryo.None,
			onGoBackFromReportDialog = action.onGoBack or Cryo.None,
		})
	end,
	[CloseReportDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isReportDialogOpen = false,
		})
	end,
	[OpenReportSentDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isReportSentOpen = true,
			reportType = action.reportType,
			targetPlayer = action.targetPlayer or Cryo.None,
		})
	end,
	[CloseReportSentDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isReportSentOpen = false,
		})
	end,
	[OpenBlockPlayerDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isBlockPlayerOpen = true,
		})
	end,
	[CloseBlockPlayerDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isBlockPlayerOpen = false,
		})
	end,
})
