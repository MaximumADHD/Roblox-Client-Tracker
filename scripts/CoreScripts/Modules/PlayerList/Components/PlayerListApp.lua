local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local StatsUtils = require(RobloxGui.Modules.Stats.StatsUtils)

local Presentation = script.Parent.Presentation
local PlayerScrollList = require(Presentation.PlayerScrollList)
local TopBarLeaderstats = require(Presentation.TopBarLeaderstats)
local PlayerEntry = require(Presentation.PlayerEntry)

local Connection = script.Parent.Connection
local EventConnections = require(Connection.EventConnections)
local ContextActionsBinder = require(Connection.ContextActionsBinder)
local TopStatConnector = require(Connection.TopStatConnector)
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerListApp = Roact.PureComponent:extend("PlayerListApp")

function PlayerListApp:render()
	return WithLayoutValues(function(layoutValues)
		local containerPosition = layoutValues.ContainerPosition
		local containerSize = layoutValues.ContainerSize
		local anchorPoint = layoutValues.AnchorPoint
		if not layoutValues.IsTenFoot and self.props.displayOptions.performanceStatsVisible then
			containerPosition = containerPosition + UDim2.new(0, 0, 0, StatsUtils.ButtonHeight)
		end

		local leaderstatsCount = math.min(#self.props.gameStats, layoutValues.MaxLeaderstats)
		if leaderstatsCount > 0 then
			local statOffsetX = layoutValues.StatEntrySizeX + layoutValues.EntryPadding
			containerSize = containerSize + UDim2.new(0, statOffsetX * leaderstatsCount, 0, 0)
		end

		local childElements = {}

		if layoutValues.IsTenFoot then
			for _, player in ipairs(self.props.players) do
				if player == Players.LocalPlayer then
					childElements["TitlePlayerEntry"] = Roact.createElement(PlayerEntry, {
						player = player,
						playerStats = self.props.playerStats[player.UserId],
						playerIconInfo = self.props.playerIconInfo[player.UserId],
						playerRelationship = self.props.playerRelationship[player.UserId],
						titlePlayerEntry = true,
						gameStats = self.props.gameStats,
					})
					break
				end
			end
		else
			childElements["TopBarLeaderstats"] = Roact.createElement(TopBarLeaderstats)
		end

		childElements["PlayerScrollList"] = Roact.createElement(PlayerScrollList)
		childElements["EventConnections"] = Roact.createElement(EventConnections)
		childElements["ContextActionsBindings"] = Roact.createElement(ContextActionsBinder)
		childElements["TopStatConnector"] = Roact.createElement(TopStatConnector)

		return Roact.createElement("Frame", {
			Position = containerPosition,
			AnchorPoint = anchorPoint,
			Size = containerSize,
			BackgroundTransparency = 1,
			Visible = self.props.displayOptions.isVisible,
		}, childElements)
	end)
end

local function mapStateToProps(state)
	return {
		displayOptions = state.displayOptions,
		players = state.players,
		playerStats = state.playerStats,
		playerIconInfo = state.playerIconInfo,
		playerRelationship = state.playerRelationship,
		gameStats = state.gameStats,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(PlayerListApp)