local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Rodux = InGameMenuDependencies.Rodux
local Cryo = InGameMenuDependencies.Cryo

local InGameMenu = script.Parent.Parent

local OpenReportDialog = require(InGameMenu.Actions.OpenReportDialog)
local CloseReportDialog = require(InGameMenu.Actions.CloseReportDialog)
local OpenReportSentDialog = require(InGameMenu.Actions.OpenReportSentDialog)
local CloseReportSentDialog = require(InGameMenu.Actions.CloseReportSentDialog)

return Rodux.createReducer({
	dialogOpen = false,
	reportSentOpen = false,
	userId = nil, --Nil if reporting the game
	userName = nil,
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
			reportSentOpen = true,
		})
	end,
	[CloseReportSentDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			reportSentOpen = false,
		})
	end,
})