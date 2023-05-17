local App = script:FindFirstAncestor("App")
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)

local t = require(Packages.t)
local Roact = require(Packages.Roact)

local InteractableList = require(Core.Control.InteractableList)
local SelectionMode = require(Core.Control.Enum.SelectionMode)
local validateImage = require(Core.ImageSet.Validator.validateImage)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local IconButton = require(script.Parent.IconButton)
local Colors = require(App.Style.Colors)

local LOGO_SIZE_DEFAULT = IconSize.Large
local LOGO_PADDING_DEFAULT = 12

local noOpt = function() end

--[[
	A InteractableList component to render a list of Logo items.

	A list of Logo Item consisting of a type and a image icon is expected in props and the logos
	will be rendered in the order of the itemList.
]]

local LogoTray = Roact.Component:extend("LogoTray")

LogoTray.validateProps = t.strictInterface({
	-- List of items to be rendered. Note that we specifically make it a List here
	-- so the order of the items could be preserved
	itemList = t.array(t.strictInterface({
		-- Key for current logo. Note that this will be used as the child element name in InteractableList
		-- so it shall be unique.
		key = t.string,
		-- Logo image.
		logo = validateImage,
	})),
	-- LayoutOrder of the LogoTray component in parent container
	layoutOrder = t.integer,
	-- Padding of the LogoTray component
	padding = t.optional(t.UDim),
	-- A callback function for the click event on a Logo item
	handleItemClick = t.optional(t.callback),
})

LogoTray.defaultProps = {
	padding = UDim.new(0, LOGO_PADDING_DEFAULT),
	handleItemClick = noOpt,
}

function LogoTray:init()
	self.getInteractableItemTable = function()
		local itemTable = {}
		Cryo.List.map(self.props.itemList, function(v)
			assert(itemTable[v.key] == nil, "Duplicate logo key is not allowed.")
			itemTable[v.key] = v
		end)
		return itemTable
	end

	self.getMeasuredItemSize = function()
		local measuredSize = getIconSize(LOGO_SIZE_DEFAULT)
		return UDim2.fromOffset(measuredSize, measuredSize)
	end

	self.renderItem = function(logoItem)
		assert(logoItem.logo ~= nil, "Invalid icon: " .. logoItem.key)
		local index = Cryo.List.find(self.props.itemList, logoItem)
		local extraProps = {
			LayoutOrder = index,
		}
		local item = Roact.createElement(IconButton, {
			icon = logoItem.logo,
			size = self.getMeasuredItemSize(),
			iconColor3 = Colors.White,
			iconSize = LOGO_SIZE_DEFAULT,
			onActivated = function()
				self.props.handleItemClick(logoItem.key)
			end,
		})
		return item, extraProps
	end
end

function LogoTray:render()
	local measuredItemSize = self.getMeasuredItemSize()
	return Roact.createElement(InteractableList, {
		fillDirection = Enum.FillDirection.Horizontal,
		horizontalAlignment = Enum.HorizontalAlignment.Left,
		sortOrder = Enum.SortOrder.LayoutOrder,
		padding = self.props.padding,
		size = UDim2.new(1, 0, 0, measuredItemSize.Y.Offset),
		itemList = self.getInteractableItemTable(),
		itemSize = measuredItemSize,
		layoutOrder = self.props.layoutOrder,
		renderItem = self.renderItem,
		selectionMode = SelectionMode.None,
	})
end

return LogoTray
