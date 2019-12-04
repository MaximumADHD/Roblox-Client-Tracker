local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local Cryo = InGameMenuDependencies.Cryo

local InGameMenu = script.Parent.Parent.Parent

local PlayerLabel = require(InGameMenu.Components.PlayerLabel)
local Divider = require(InGameMenu.Components.Divider)
local BarOnTopScrollingFrame = require(InGameMenu.Components.BarOnTopScrollingFrame)
local GameLabel = require(script.Parent.GameLabel)
local ReportButton = require(script.Parent.ReportButton)

local OpenReportDialog = require(InGameMenu.Actions.OpenReportDialog)

local ReportList = Roact.PureComponent:extend("ReportList")

local DIVIDER_INDENT = 80
local PLAYER_LABEL_HEIGHT = 70

ReportList.validateProps = t.strictInterface({
	placeName = t.string,
	players = t.array(t.strictInterface({
		Id = t.integer,
		Username = t.string
	})),
	dispatchOpenReportDialog = t.callback,
})

local function sortPlayers(p1, p2)
	return p1.Username:lower() < p2.Username:lower()
end

function ReportList:renderListEntries()
	local sortedPlayers = Cryo.List.sort(self.props.players, sortPlayers)

	local playersCount = #sortedPlayers
	local layoutOrder = 3

	local listComponents = {}

	listComponents.ListLayout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
	})

	listComponents.GameReport = Roact.createElement(GameLabel, {
		gameId = game.GameId,
		gameName = self.props.placeName,
		LayoutOrder = 1,

		onActivated = function()
			self.props.dispatchOpenReportDialog()
		end
	}, {
		ReportButton = Roact.createElement(ReportButton, {
			LayoutOrder = 1,
		})
	})

	if #sortedPlayers > 0 then
		listComponents["divider_" .. layoutOrder] = Roact.createElement(Divider, {
			LayoutOrder = 2,
			Size = UDim2.new(1, -DIVIDER_INDENT, 0, 1)
		})
	end

	for index, playerInfo in pairs(sortedPlayers) do
		listComponents["player_"..index] = Roact.createElement(PlayerLabel, {
			username = playerInfo.Username,
			userId = playerInfo.Id,
			isOnline = true,
			isSelected = false,
			LayoutOrder = layoutOrder,

			onActivated = function()
				self.props.dispatchOpenReportDialog(playerInfo.Id, playerInfo.Username)
			end
		}, {
			ReportButton = Roact.createElement(ReportButton, {
				userId = playerInfo.Id,
				userName = playerInfo.Username,
				LayoutOrder = 1,
			})
		})

		layoutOrder = layoutOrder + 1

		if index < playersCount then
			listComponents["divider_" .. layoutOrder] = Roact.createElement(Divider, {
				LayoutOrder = layoutOrder,
				Size = UDim2.new(1, -DIVIDER_INDENT, 0, 1)
			})

			layoutOrder = layoutOrder + 1
		end
	end

	return listComponents
end

function ReportList:render()
	return Roact.createElement(BarOnTopScrollingFrame, {
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
		CanvasSize = UDim2.new(1, 0, 0, #self.props.players * (PLAYER_LABEL_HEIGHT + 1)),
		scrollBarOffset = 4,
	}, self:renderListEntries())
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			placeName = state.localization.currentGameName,
		}
	end,
	function(dispatch)
		return {
			dispatchOpenReportDialog = function(userId, userName)
				dispatch(OpenReportDialog(userId, userName))
			end,
		}
	end
)(ReportList)