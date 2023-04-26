local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent

local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local Page = require(InGameMenu.Components.Page)
local ReportList = require(script.ReportList)

local GetFFlagEnableIGMv2VoiceReportFlows =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableIGMv2VoiceReportFlows

local function getReportablePlayers()
	-- Replace with {[number]: Player} whem GetFFlagEnableIGMv2VoiceReportFlows is removed
	local players:{[number]: Player} | {[number]: {Id: string, Username: string}} = {}

	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= Players.LocalPlayer then
			if GetFFlagEnableIGMv2VoiceReportFlows() then table.insert(players, player) else
				table.insert(players, {
					Id = player.UserId,
					Username = player.Name,
				})
			end
		end
	end

	return players
end

local ReportPage = Roact.PureComponent:extend("ReportPage")
ReportPage.validateProps = t.strictInterface({
	pageTitle = t.string,
})

function ReportPage:init()
	self:setState({
		players = getReportablePlayers(),
	})
end

function ReportPage:render()
	return Roact.createElement(Page, {
		pageTitle = self.props.pageTitle,
	}, {
		PlayerList = Roact.createElement(ReportList, {
			players = self.state.players,
		}),
		Watcher = Roact.createElement(PageNavigationWatcher, {
			desiredPage = "Report",
			onNavigateTo = function()
				self:setState({
					players = getReportablePlayers(),
				})
			end,
		})
	})
end

return ReportPage
