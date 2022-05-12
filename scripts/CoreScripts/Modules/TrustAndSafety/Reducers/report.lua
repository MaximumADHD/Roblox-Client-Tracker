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

return Rodux.createReducer({
	dialogOpen = false,
	userId = nil, --Nil if reporting the game
	userName = nil,
	isReportMenuOpen = false,
	isReportSentOpen = false,
	reportType = nil,
	targetPlayer = nil,
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
