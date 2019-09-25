--[[
	NavButton
	A simple button for menu navigation

	Necessary Props:
		isPrimary boolean, sets the button as "primary", this changes the colors and removes border
		onClick callback, called when the button is clicked
		titleText string, set the text of the button

		Size UDim2, size of the button
		Position UDim2, position of the button
		LayoutOrder number, layout order of the button
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)

local withTheme = ContextHelper.withTheme

local Components = Plugin.Core.Components
local RoundButton = require(Components.RoundButton)

local NavButton = Roact.Component:extend("NavButton")

function NavButton:init(props)
	self:setState({
		hovered = false,
		pressed = false,
	})

	self.buttonRef = Roact.createRef()

	self.onMouseEnter = function()
		self:setState({ hovered = true })
	end

	self.onMouseLeave = function()
		self:setState({ hovered = false })
	end

	self.onMouseButton1Down = function()
		self:setState({ pressed = true })
	end

	self.onMouseButton1Up = function()
		self:setState({ pressed = false })
	end
end

function NavButton:render()
	return withTheme(function(theme)
		local props = self.props
		local colors = props.isPrimary and theme.nav.mainButton or theme.nav.button

		local backgroundColor
		if self.state.hovered and self.state.pressed then
			backgroundColor = colors.pressBackground
		elseif self.state.hovered then
			backgroundColor = colors.hoverBackground
		else
			backgroundColor = colors.background
		end

		return Roact.createElement(RoundButton, {
			Size = props.Size,
			Position = props.Position,
			LayoutOrder = props.LayoutOrder,
			BackgroundColor3 = backgroundColor,
			BorderColor3 = colors.borderColor,
			BorderSizePixel = props.isPrimary and 0 or 1,
			[Roact.Event.MouseEnter] = self.onMouseEnter,
			[Roact.Event.MouseLeave] = self.onMouseLeave,
			[Roact.Event.MouseButton1Down] = self.onMouseButton1Down,
			[Roact.Event.MouseButton1Up] = self.onMouseButton1Up,
			[Roact.Event.MouseButton1Click] = props.onClick,
		}, {
			Title = Roact.createElement("TextLabel", {
				Text = props.titleText,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_LARGE,
				BackgroundTransparency = 1,
				TextColor3 = colors.textColor,
				Size = UDim2.new(1, 0, 1, 0),
			})
		})
	end)
end

return NavButton