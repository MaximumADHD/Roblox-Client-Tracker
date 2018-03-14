local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local Constants = require(Modules.LuaApp.Constants)
local Device = require(Modules.LuaChat.Device)
local FramePopOut = require(Modules.LuaApp.Components.FramePopOut)
local FramePopup = require(Modules.LuaApp.Components.FramePopup)
local ListPicker = require(Modules.LuaApp.Components.ListPicker)

local DROPDOWN_HEIGHT = 38
local DROPDOWN_ARROW_MARGIN = 7
local DROPDOWN_ARROW_SIZE = 12
local DROPDOWN_TEXT_MARGIN = 10

local DEFAULT_TEXT_COLOR = Constants.Color.GRAY1
local DEFAULT_TEXT_FONT = Enum.Font.SourceSans
local DEFAULT_TEXT_SIZE = 18

local DEFAULT_ITEM_TEXT_COLOR = Constants.Color.GRAY1
local DEFAULT_ITEM_TEXT_FONT = Enum.Font.SourceSans
local DEFAULT_ITEM_TEXT_SIZE = 23

local ITEM_HEIGHT = 54
local ITEM_WIDTH = 320
local VISIBLE_ITEMS = 5.58

local DropDownList = Roact.Component:extend("DropDownList")

-- Set up some default state for this control:
function DropDownList:init()
	self.state = {
		isOpen = false,
	}
end

-- The user just selected an item, change to it:
function DropDownList:onValueChange(index)
	-- Fire our callback to notify parent of the new index + value:
	if self.props.onSelected then
		self.props.onSelected(index)
	end

	-- Close the selector and use the new text value:
	self:setState({
		isOpen = false,
	})
end

function DropDownList:render()
	local anchorPoint = self.props.anchorPoint
	local formFactor = self.props.formFactor
	local height = self.props.height or DROPDOWN_HEIGHT
	local itemHeight = self.props.itemHeight or ITEM_HEIGHT
	local items = self.props.items
	local itemSelected = self.props.itemSelected
	local itemTextColor = self.props.itemTextColor or DEFAULT_ITEM_TEXT_COLOR
	local itemTextFont = self.props.itemFont or DEFAULT_ITEM_TEXT_FONT
	local itemTextSize = self.props.itemTextSize or DEFAULT_ITEM_TEXT_SIZE
	local itemWidth = self.props.itemWidth or ITEM_WIDTH
	local layoutOrder = self.props.layoutOrder
	local screenShape = self.state.screenShape
	local size = self.props.size or UDim2.new(1, 0, 0, height)
	local textColor = self.props.textColor or DEFAULT_TEXT_COLOR
	local textFont = self.props.font or DEFAULT_TEXT_FONT
	local textSize = self.props.textSize or DEFAULT_TEXT_SIZE

	local currentItem = items[itemSelected] or ""
	local displayText = currentItem.text or ""
	local isTablet = (formFactor == Device.FormFactor.TABLET)

	-- Build up our drop-down items here for display inside our main element:
	local dropdownItems = nil

	-- Show the drop down if it is enabled:
	if self.state.isOpen then
		local callbackSelect = function(index)
			self:onValueChange(index)
		end
		local callbackCancel = function()
			self:setState({ isOpen = false })
		end

		-- For phones, we want the width to stretch to the screen size.
		-- For tablets, we want the width from the parent.
		local listContentsWidth = 0
		if isTablet then
			listContentsWidth = itemWidth
		end
		local itemCount = #items
		local listContents = {
			ListPicker = Roact.createElement(ListPicker, {
				onSelectItem = callbackSelect,
				items = items,

				itemHeight = itemHeight,
				itemWidth = listContentsWidth,

				textColor = itemTextColor,
				textFont = itemTextFont,
				textSize = itemTextSize,
			}),
		}

		-- Show a different style of dropdown on tablets:
		local portalContents
		if isTablet then
			portalContents = Roact.createElement(FramePopOut, {
				heightAllItems = itemHeight * itemCount,
				itemWidth = itemWidth,
				onCancel = callbackCancel,
				parentShape = screenShape,
			}, listContents)
		else
			portalContents = Roact.createElement(FramePopup, {
				heightAllItems = itemHeight * itemCount,
				heightScrollContainer = itemHeight * math.min(itemCount, VISIBLE_ITEMS),
				onCancel = callbackCancel,
			}, listContents)
		end

		-- Show our contents as topmost via a portal:
		dropdownItems = Roact.createElement(Roact.Portal, {
			target = CoreGui,
		}, {
			PortalUI = Roact.createElement("ScreenGui", {
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			}, {
				Contents = portalContents
			})
		})

	end

	-- Note: Padding doesn't work on text controls, so manually calculate this.
	-- The size needs to fill the available space but leave room for the
	-- dropdown icon and margins:
	local textPadding = -((DROPDOWN_TEXT_MARGIN * 2) + DROPDOWN_ARROW_SIZE + DROPDOWN_ARROW_MARGIN)

	-- Create and return the main control itself:
	return Roact.createElement("ImageButton", {
		AnchorPoint = anchorPoint,
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ClipsDescendants = false,
		Image = "rbxasset://textures/ui/LuaChat/9-slice/input-default.png",
		LayoutOrder = layoutOrder,
		ScaleType = Enum.ScaleType.Slice,
		Size = size,
		SliceCenter = Rect.new(3, 3, 4, 4),
		[Roact.Event.MouseButton1Click] = function(rbx)
			-- We need to know the size of the screen, so we can position the
			-- popout component appropriately. So we climb up the object
			-- heirachy until we find the current ScreenGui:
			local screenWidth = 0
			local screenHeight = 0
			local screenGui = rbx
			while (screenGui ~= nil) and not screenGui:IsA("ScreenGui") do
				screenGui = screenGui.parent
			end
			if screenGui ~= nil then
				screenWidth = screenGui.AbsoluteSize.x
				screenHeight = screenGui.AbsoluteSize.y
			end

			self:setState({
				isOpen = true,
				screenShape = {
					x = rbx.AbsolutePosition.x,
					y = rbx.AbsolutePosition.y,
					width = rbx.AbsoluteSize.x,
					height = rbx.AbsoluteSize.y,
					parentWidth = screenWidth,
					parentHeight = screenHeight,
				},
			})
		end,
	}, {
		Text = Roact.createElement("TextLabel", {
			BackgroundColor3 = Constants.Color.WHITE,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Font = textFont,
			Size = UDim2.new(1, textPadding, 0, height),
			Text = displayText,
			TextColor3 = textColor,
			TextSize = textSize,
			Position = UDim2.new(0, DROPDOWN_TEXT_MARGIN, 0, 0),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
		}),
		Arrow = Roact.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(1, 0.5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Image = "rbxasset://textures/ui/LuaApp/icons/ic-arrow-down.png",
			Position = UDim2.new(1, -DROPDOWN_ARROW_MARGIN, 0.5, 0),
			Size = UDim2.new(0, DROPDOWN_ARROW_SIZE, 0, DROPDOWN_ARROW_SIZE),
		}),
		Items = dropdownItems,
	})
end

DropDownList = RoactRodux.connect(function(store, props)
	local state = store:GetState()

	return {
		formFactor = state.FormFactor,
	}
end)(DropDownList)

return DropDownList