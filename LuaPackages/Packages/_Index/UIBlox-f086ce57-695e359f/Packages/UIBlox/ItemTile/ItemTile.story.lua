local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Roact = require(ReplicatedStorage.Packages.Roact)
local ItemTileRoot = script.Parent
local UIBloxRoot = ItemTileRoot.Parent

local StyleProvider = require(UIBloxRoot.Style.StyleProvider)
local StyleRoot = UIBloxRoot.Style
local testStyle = require(StyleRoot.Validator.TestStyle)
local ItemTile = require(ItemTileRoot.ItemTile)

local ItemTileComponent = Roact.PureComponent:extend("ItemTileComponent")

local FOOTER_HEIGHT = 50

local function createFooter()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, FOOTER_HEIGHT),
	}, {
		TextLabel = Roact.createElement("TextLabel", {
			Text = "Your custom footer goes here.",
			Size = UDim2.new(1, 0, 1, 0),
		})
	})
end

function ItemTileComponent:init()
	self.state = {
		image = nil,
		longerLoadImage = nil,
		name = nil,
	}
end

function ItemTileComponent:didMount()
	-- Simulate component load
	spawn(function()
		wait(2.0)
		self:setState({
			image = "rbxassetid://924320031",
			name = "Item Name",
		})
		wait(2.0)
		self:setState({
			longerLoadImage = "rbxassetid://924320031",
		})
	end)
end

function ItemTileComponent:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, FOOTER_HEIGHT),
		BackgroundTransparency = 1,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 20),
		}),
		FullItemTile = Roact.createElement(ItemTile, {
			footer = createFooter(),
			footerHeight = FOOTER_HEIGHT,
			LayoutOrder = 0,
			name = self.state.name,
			onActivated = function() end,
			thumbnail = self.state.image,
			width = 200,
		}),
		ThumbnailLongerLoadItemTile = Roact.createElement(ItemTile, {
			footer = createFooter(),
			footerHeight = FOOTER_HEIGHT,
			LayoutOrder = 1,
			name = self.state.name,
			onActivated = function() end,
			thumbnail = self.state.longerLoadImage,
			width = 200,
		}),
		FooterlessItemTile = Roact.createElement(ItemTile, {
			LayoutOrder = 2,
			name = self.state.name,
			onActivated = function() end,
			thumbnail = self.state.image,
			width = 200,
		}),
	})
end

return function(target)
	local styleProvider = Roact.createElement(StyleProvider, {
		style = testStyle,
	}, {
		Roact.createElement(ItemTileComponent)
	})
	local handle = Roact.mount(styleProvider, target, "ItemTileComponent")
	return function()
		Roact.unmount(handle)
	end
end