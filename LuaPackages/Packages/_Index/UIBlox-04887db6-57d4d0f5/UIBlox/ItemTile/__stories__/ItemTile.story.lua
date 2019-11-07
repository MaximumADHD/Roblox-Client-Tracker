local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Roact = require(ReplicatedStorage.Packages.Roact)
local ItemTileRoot = script.Parent.Parent
local UIBloxRoot = ItemTileRoot.Parent

local StyleProvider = require(UIBloxRoot.Style.StyleProvider)
local StyleRoot = UIBloxRoot.Style
local testStyle = require(StyleRoot.Validator.TestStyle)
local ItemTile = require(ItemTileRoot.ItemTile)

local ItemTileComponent = Roact.PureComponent:extend("ItemTileComponent")

local PADDING = 20
local FOOTER_HEIGHT = 50
local NAME_HEIGHT = 20

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
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		UIPadding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 20),
			PaddingTop = UDim.new(0, 20),
		}),
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 20),
		}),
		FullItemTileContainer = Roact.createElement("Frame", {
			Size = UDim2.new(0, 200, 0, 200 + NAME_HEIGHT + PADDING + FOOTER_HEIGHT),
			Transparency = 1,
			LayoutOrder = 0,
		}, {
			FullItemTile = Roact.createElement(ItemTile, {
				footer = createFooter(),
				name = self.state.name,
				onActivated = function() end,
				thumbnail = self.state.image,
			}),
		}),
		LongerLoadItemTileContainer = Roact.createElement("Frame", {
			Size = UDim2.new(0, 200, 0, 200 + NAME_HEIGHT + PADDING+ FOOTER_HEIGHT),
			Transparency = 1,
			LayoutOrder = 1,
		}, {
			ThumbnailLongerLoadItemTile = Roact.createElement(ItemTile, {
				footer = createFooter(),
				name = self.state.name,
				onActivated = function() end,
				thumbnail = self.state.longerLoadImage,
			}),
		}),
		FooterlessItemTileContainer = Roact.createElement("Frame", {
			Size = UDim2.new(0, 200, 0, 200 + NAME_HEIGHT),
			Transparency = 1,
			LayoutOrder = 2,
		}, {
			FooterlessItemTile = Roact.createElement(ItemTile, {
				name = self.state.name,
				onActivated = function() end,
				thumbnail = self.state.image,
			}),
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