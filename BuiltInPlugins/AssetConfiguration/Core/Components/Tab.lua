--[[
	A single tab that appears in a TabSet.

	Props:
		string Text = The text to display in this Tab.
		ContentId Image = The image icon to display in this Tab.
		int LayoutOrder = The order this tab appears in the TabSet.
		bool Selected = Whether this is the currently selected Tab.
		number TabWidth
		boolean DisplayText = do we want the text in addition to the icon

		function onClick = A callback for when the user clicks this Tab.
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Constants = require(Plugin.Core.Util.Constants)

local Tooltip = require(Libs.Framework.UI.Tooltip)

local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local withTheme = ContextHelper.withTheme

local Tab = Roact.PureComponent:extend("Tab")

function Tab:init()
	self.state = {
		hovered = false,
	}

	self.onClick = function()
		if self.props.onClick then
			self.props.onClick()
		end
	end

	self.mouseEnter = function()
		self:setState({
			hovered = true,
		})
	end

	self.mouseLeave = function()
		self:setState({
			hovered = false,
		})
	end
end

function Tab:render(props)
	return withTheme(function(theme)
		local text = self.props.Text or ""
		local image = self.props.Image
		local layoutOrder = self.props.LayoutOrder or 0
		local selected = self.props.Selected or false
		local hovered = self.state.hovered
		local tabTheme = theme.tabSet
		local tabWidth = self.props.TabWidth
		local displayText = self.props.DisplayText

		local textWidth = Constants.getTextSize(text, nil, Constants.FONT_BOLD).X
		local contentColor = (selected or hovered) and tabTheme.selectedColor or tabTheme.contentColor

		local tooltip = not displayText and Roact.createElement(Tooltip, {
			Text = text
		}) or nil

		return Roact.createElement("ImageButton", {
			LayoutOrder = layoutOrder,
			Size = UDim2.new(0, tabWidth, 1, 0),
			BorderSizePixel = selected and 2 or 0,
			BorderColor3 = tabTheme.borderColor,
			ZIndex = selected and 2 or 0,
			BackgroundColor3 = tabTheme.tabBackground,
			AutoButtonColor = false,

			[Roact.Event.MouseEnter] = self.mouseEnter,
			[Roact.Event.MouseLeave] = self.mouseLeave,
			[Roact.Event.Activated] = self.onClick,
		}, {
			Tooltip = tooltip,

			UpperBorder = selected and Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 2),
				BorderSizePixel = 0,
				BackgroundColor3 = tabTheme.topBorderColor,
			}),

			LowerBorder = not selected and Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 2),
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = tabTheme.borderColor,
			}),

			Content = Roact.createElement("Frame", {
				Size = UDim2.new(1, -(Constants.TAB_OUTER_PADDING*2), 1, 0),
				Position = UDim2.new(0, Constants.TAB_OUTER_PADDING, 0, 0),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, Constants.TAB_INNER_PADDING),
				}),

				Icon = Roact.createElement("ImageLabel", {
					LayoutOrder = 1,
					Size = UDim2.new(0, Constants.TAB_ICON_SIZE, 0, Constants.TAB_ICON_SIZE),
					BackgroundTransparency = 1,
					ImageColor3 = contentColor,
					Image = image,
				}),

				Text = displayText and Roact.createElement("TextLabel", {
					LayoutOrder = 2,
					Text = text,
					Font = selected and Constants.FONT_BOLD or Constants.FONT,
					TextSize = Constants.FONT_SIZE_MEDIUM,
					BackgroundTransparency = 1,
					TextColor3 = contentColor,
					Size = UDim2.new(0, textWidth, 1, 0),
					TextXAlignment = Enum.TextXAlignment.Left,
					ClipsDescendants = true,
				}),
			}),
		})
	end)
end

return Tab
