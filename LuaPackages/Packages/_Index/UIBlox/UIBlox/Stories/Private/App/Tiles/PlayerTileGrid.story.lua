local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = ReplicatedStorage.Packages
local UIBlox = Packages.UIBlox
local Roact = require(Packages.Roact)

local PlayerTile = require(UIBlox.App.Tile.PlayerTile.PlayerTile)
local Images = require(UIBlox.App.ImageSet.Images)
local DefaultMetricsGridView = require(UIBlox.App.Grid.DefaultMetricsGridView)
local GridMetrics = require(UIBlox.App.Grid.GridMetrics)

local PlayerTileGridStory = Roact.PureComponent:extend("PlayerTileGridStory")

function PlayerTileGridStory:init()
	self.tiles = {}
	for i = 1, 16 do
		self.tiles[i] = i
	end
end

function PlayerTileGridStory:render()
	return Roact.createElement(DefaultMetricsGridView, {
		renderItem = function(i)
			return Roact.createElement(PlayerTile, {
				thumbnail = "rbxthumb://type=Avatar&id=693018&w=150&h=150",
				onActivated = function() end,
				title = "DisplayName",
				subtitle = "@username",
				Size = UDim2.new(1, 0, 1, 0),
				PlayerContext = {
					text = "This demonstrates overwritten relevancy text for cases such as presence",
					iconSize = UDim2.fromOffset(i, i),
					icon = Images["component_assets/circle_29"],
					iconColor = Color3.fromRGB(22, 222, 22),
					iconTransparency = 0,
				},
			})
		end,
		getItemHeight = function(width)
			return width + 80
		end,
		getItemMetrics = GridMetrics.getSmallMetrics,
		itemPadding = Vector2.new(12, 12),
		items = self.tiles,
		maxHeight = 1000,
	})
end

return PlayerTileGridStory
