--[[
	Dropdown module for languages and country region selector

	Props:
		boolean Enabled
			if dropdown is interactable
		int LayoutOrder
			layout order of UIListLayout in parent view
		table Items
			items to be rendered
		table CurrentSelected
			current selected item
		function OnItemClicked(item)
			Called when an item is clicked. Returns the item itself.
]]
local FFlagPlayerEmulatorWithContext = game:GetFastFlag("PlayerEmulatorWithContext")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local UILibrary = require(Plugin.Packages.UILibrary)
local DropdownMenu = UILibrary.Component.DropdownMenu

local DropdownModule = Roact.PureComponent:extend("DropdownModule")

function DropdownModule:init()
	self.state = {
		buttonExtents = Rect.new(),
		open = false,
	}

	self.setOpen = function()
		self:setState({
			open = true,
		})
	end

	self.setClose = function()
		self:setState({
			open = false,
		})
	end

	self.updateExtents = function(rbx)
		local buttonMin = rbx.AbsolutePosition
		local buttonSize = rbx.AbsoluteSize
		local buttonMax = buttonMin + buttonSize

		local buttonExtents = Rect.new(buttonMin.X, buttonMin.Y, buttonMax.X, buttonMax.Y)
		self:setState({
			buttonExtents = buttonExtents,
		})
	end
end

function DropdownModule:render()
	local state = self.state
	local props = self.props
	local enabled = props.Enabled
	local isOpen = state.open
	local buttonExtents = state.buttonExtents
	local items = props.Items
	local currentSelected = props.CurrentSelected
	local onItemClicked = props.OnItemClicked

	local theme = props.Stylizer
	local localization = props.Localization
	local layoutOrder = props.LayoutOrder

	local dropdownButton = Roact.createElement("TextButton", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderColor3 = theme.BorderColor,
			BackgroundColor3 = theme.ButtonColor,
			Text = "",
			Active = enabled,
			AutoButtonColor = enabled,

			[Roact.Event.Activated] = self.setOpen,
		}, {
			Indent = Roact.createElement("UIPadding", {
				PaddingLeft = theme.TEXT_INDENT_PADDING,
			}),
			Label = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Text = currentSelected or localization:getText("LanguageSection", "CustomLanguageDisplayText"),
				TextColor3 = enabled and theme.TextColor or theme.DisabledColor,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),
			Arrow = Roact.createElement("ImageLabel", {
				Position = theme.DROPDOWN_ARROW_POSITION,
				Size = theme.DROPDOWN_ARROW_SIZE,
				BackgroundTransparency = 1,
				Image = theme.DROPDOWN_ARROW_IMAGE,
			}),
		})

	local dropdownFrame = isOpen and Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			[Roact.Change.AbsoluteSize] = self.updateExtents,
			[Roact.Change.AbsolutePosition] = self.updateExtents,
		}, {
			Dropdown = Roact.createElement(DropdownMenu, {
				SourceExtents = buttonExtents,
				Items = items,
				OnItemClicked = onItemClicked,
				OnFocusLost = self.setClose,
				MaxHeight = theme.DROPDOWN_MAX_HEIGHT,
				ShowBorder = true,
				ScrollBarThickness = theme.SCROLLBAR_THICKNESS,
				ScrollBarPadding = 0,
				RenderItem = function(item, index, activated)
					local displayText = item.displayText
						or item.isCustom and localization:getText(item.displayTextSectionKey, item.displayTextStringKey)

					return Roact.createElement("TextButton", {
						Size = UDim2.new(0, 160, 0, 25),
						LayoutOrder = index,
						BorderSizePixel = 0,
						BackgroundColor3 = theme.ButtonColor,
						Text = "",

						[Roact.Event.Activated] = function()
							activated()
							self:setClose()
						end,
					}, {
						Indent = Roact.createElement("UIPadding", {
							PaddingLeft = theme.TEXT_INDENT_PADDING,
						}),

						Label = Roact.createElement("TextLabel", {
							Size = UDim2.new(1, 0, 1, 0),
							TextColor3 = theme.TextColor,
							TextXAlignment = Enum.TextXAlignment.Left,
							Text = displayText,
							BackgroundTransparency = 1,
						})
					})
				end,
			})
		})

	return Roact.createElement("Frame", {
		Size = theme.DROPDOWN_BUTTON_SIZE,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		DropdownButton = dropdownButton,
		DropdownFrame = dropdownFrame,
	})
end

if FFlagPlayerEmulatorWithContext then
	DropdownModule = withContext({
		Stylizer = ContextServices.Stylizer,
		Localization = ContextServices.Localization,
	})(DropdownModule)
else
	ContextServices.mapToProps(DropdownModule, {
		Stylizer = ContextServices.Stylizer,
		Localization = ContextServices.Localization,
	})
end


return DropdownModule