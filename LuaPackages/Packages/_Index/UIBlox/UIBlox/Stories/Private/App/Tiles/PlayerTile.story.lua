local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = ReplicatedStorage.Packages
local UIBlox = Packages.UIBlox
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local PlayerTile = require(UIBlox.App.Tile.PlayerTile.PlayerTile)
local withStyle = require(UIBlox.Core.Style.withStyle)
local Images = require(UIBlox.App.ImageSet.Images)

local PlayerTileStory = Roact.PureComponent:extend("PlayerTileStory")

function PlayerTileStory:init()
	self.state = {
		tiles = {
			{
				thumbnail = nil,
				name = nil,
				username = nil,
				tileSize = UDim2.new(0, 150, 0, 150),
				buttons = {},
				relevancyInfo = {},
			},
			{
				thumbnail = nil,
				name = nil,
				username = nil,
				tileSize = UDim2.new(0, 150, 0, 150),
				buttons = {},
				relevancyInfo = {},
			},
			{
				thumbnail = nil,
				name = nil,
				username = nil,
				tileSize = UDim2.new(0, 150, 0, 150),
				buttons = {},
				relevancyInfo = {},
			},
			{
				thumbnail = nil,
				name = nil,
				username = nil,
				tileSize = UDim2.new(0, 150, 0, 150),
				buttons = {},
				relevancyInfo = {},
			},
			{
				thumbnail = nil,
				name = nil,
				username = nil,
				tileSize = UDim2.new(0, 150, 0, 150),
				buttons = {},
				relevancyInfo = {},
			},
			{
				thumbnail = nil,
				name = nil,
				username = nil,
				tileSize = UDim2.new(0, 150, 0, 150),
				buttons = {},
				relevancyInfo = {},
			},
		},
	}
end

function PlayerTileStory:didMount()
	-- Simulate component load
	spawn(function()
		wait(2.0)
		self:setState({
			tiles = {
				{
					thumbnail = "rbxthumb://type=Avatar&id=693018&w=150&h=150",
					title = "DisplayName",
					subtitle = "@username",
					tileSize = UDim2.new(0, 150, 0, 150),
					onActivated = function()
						print("Tile Pressed")
					end,
					buttons = {
						{
							icon = Images["icons/actions/friends/friendAdd"],
							onActivated = function()
								print("Button Pressed")
							end,
						},
					},
					relevancyInfo = {
						text = "5 mutual friends",
						icon = Images["icons/status/player/friend"],
					},
				},
				{
					thumbnail = "rbxthumb://type=Avatar&id=693018&w=150&h=150",
					title = "DisplayName",
					subtitle = "@username",
					tileSize = UDim2.new(0, 150, 0, 150),
					onActivated = function()
						print("Tile Pressed")
					end,
					buttons = {
						{
							icon = Images["icons/actions/reject"],
							onActivated = function()
								print("Button Pressed")
							end,
							isSecondary = true,
						},
						{
							icon = Images["icons/actions/friends/friendAdd"],
							onActivated = function()
								print("Button Pressed")
							end,
						},
					},
					relevancyInfo = {
						text = "You are following",
						icon = Images["icons/status/player/following"],
					},
				},
				{
					thumbnail = "rbxthumb://type=Avatar&id=693018&w=150&h=150",
					title = "DisplayName",
					subtitle = "@username",
					tileSize = UDim2.new(0, 150, 0, 150),
					onActivated = function()
						print("Tile Pressed")
					end,
					buttons = {
						{
							icon = Images["icons/actions/friends/friendpending"],
							onActivated = function()
								print("Button Pressed")
							end,
							isSecondary = true,
						},
					},
					relevancyInfo = {
						text = "Adopt Me",
						icon = Images["icons/common/play"],
						onActivated = function()
							print("Relevancy Info Pressed")
						end,
					},
				},
				{
					thumbnail = "rbxthumb://type=Avatar&id=693018&w=150&h=150",
					title = "LONGNAMEMWMWMWMWMWMWMWMW",
					subtitle = "@LONGNAMEMWMWMWMWMWMWMWMW",
					tileSize = UDim2.new(0, 150, 0, 150),
					onActivated = function()
						print("Tile Pressed")
					end,
					buttons = {},
					relevancyInfo = {
						text = "Relevancy info is two lines max",
						icon = Images["icons/placeholder/placeholderOn"],
					},
				},
				{
					thumbnail = "rbxthumb://type=Avatar&id=693018&w=150&h=150",
					title = "DisplayName",
					subtitle = "@username",
					tileSize = UDim2.new(0, 150, 0, 150),
					onActivated = function()
						print("Tile Pressed")
					end,
					buttons = {},
					relevancyInfo = {},
				},
				{
					thumbnail = "rbxthumb://type=Avatar&id=693018&w=150&h=150",
					title = "DisplayName",
					subtitle = "@username",
					tileSize = UDim2.new(0, 150, 0, 150),
					onActivated = function()
						print("Tile Pressed")
					end,
					buttons = {},
					relevancyInfo = {
						text = "This demonstrates overwritten relevancy text for cases such as presence",
						iconSize = UDim2.fromOffset(12, 12),
						icon = Images["component_assets/circle_29"],
						iconColor = Color3.fromRGB(22, 222, 22),
						iconTransparency = 0,
					},
				},
				{
					thumbnail = "rbxthumb://type=Avatar&id=693018&w=150&h=150",
					title = "APlayerName",
					subtitle = "@username",
					tileSize = UDim2.new(0, 150, 0, 150),
					onActivated = function()
						print("Tile Pressed")
					end,
					buttons = {},
					relevancyInfo = {
						text = "This demonstrates overwritten relevancy text for cases such as presence",
						iconSize = UDim2.fromOffset(12, 12),
						icon = Images["component_assets/circle_29"],
						iconColor = Color3.fromRGB(22, 222, 22),
						iconTransparency = 0,
						fontStyle = {
							Font = Enum.Font.Gotham,
							RelativeSize = 1,
							RelativeMinSize = 1,
						},
					},
				},
			},
		})
	end)
end

function PlayerTileStory:render()
	local playerTiles = self.state.tiles
	local tiles = Cryo.List.map(playerTiles, function(tile)
		return Roact.createElement(PlayerTile, tile)
	end)
	table.insert(
		tiles,
		Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 20),
			PaddingTop = UDim.new(0, 20),
		})
	)
	table.insert(
		tiles,
		Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 20),
		})
	)

	return withStyle(function()
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, tiles)
	end)
end

return {
	name = "Player Tile",
	summary = "",
	controls = {},
	story = PlayerTileStory,
}
