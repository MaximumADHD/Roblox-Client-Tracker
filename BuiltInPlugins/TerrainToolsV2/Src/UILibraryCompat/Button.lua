--[[
	Mostly the same as UILibrary Button component, but modified to use dev framework context
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local join = require(script.Parent.join)

local RoundFrame = require(script.Parent.RoundFrame)

local Button = Roact.PureComponent:extend("Button")

function Button:init(initialProps)
	self.state = {
		hovered = false,
		pressed = false
	}

	self.onClick = function()
		if self.props.OnClick then
			self.props.OnClick()
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
			pressed = false
		})
	end

	self.onMouseDown = function()
		self:setState({
			hovered = true,
			pressed = true,
		})
	end

	self.onMouseUp = function()
		self:setState({
			pressed = false,
		})
	end
end

function Button:render()
	local theme = self.props.Theme:get()

	local props = self.props
	local state = self.state
	local hovered = state.hovered

	-- Was unused in UILibrary Button.lua
	-- Adding here so Luacheck doesn't warn
	-- Eventually this component will be removed in favour of dev framework equivalent
	local pressed = nil

	local style = props.Style
	local styleState = props.StyleState
	local size = props.Size
	local position = props.Position
	local anchorPoint = props.AnchorPoint
	local layoutOrder = props.LayoutOrder
	local renderContents = props.RenderContents
	local zIndex = props.ZIndex
	local borderSize = props.BorderSizePixel

	assert(renderContents ~= nil and type(renderContents) == "function",
		"Button requires a RenderContents function.")

	local buttonTheme = style and theme.button[style] or theme.button.Default
	if styleState then
		buttonTheme = join(buttonTheme, buttonTheme[styleState])
	elseif pressed then
		buttonTheme = join(buttonTheme, buttonTheme.pressed)
	elseif hovered then
		buttonTheme = join(buttonTheme, buttonTheme.hovered)
	end

	local isRound = buttonTheme.isRound
	local content = renderContents(buttonTheme, hovered, pressed)

	local buttonProps = {
		Size = size,
		Position = position,
		AnchorPoint = anchorPoint,
		LayoutOrder = layoutOrder,
		ZIndex = zIndex,

		BackgroundColor3 = buttonTheme.backgroundColor,
		BorderColor3 = buttonTheme.borderColor,
		BorderSizePixel = borderSize,
	}

	if isRound then
		return Roact.createElement(RoundFrame, join(buttonProps, {
			OnActivated = self.onClick,
			OnMouseEnter = self.mouseEnter,
			OnMouseLeave = self.mouseLeave,
			[Roact.Event.MouseButton1Down] = self.onMouseDown,
			[Roact.Event.MouseButton1Up] = self.onMouseUp,
		}), content)
	else
		return Roact.createElement("ImageButton", join(buttonProps, {
			AutoButtonColor = false,

			[Roact.Event.MouseEnter] = self.mouseEnter,
			[Roact.Event.MouseLeave] = self.mouseLeave,
			[Roact.Event.Activated] = self.onClick,
			[Roact.Event.MouseButton1Down] = self.onMouseDown,
			[Roact.Event.MouseButton1Up] = self.onMouseUp,
		}), content)
	end
end

ContextServices.mapToProps(Button, {
	Theme = ContextItems.UILibraryTheme,
})

return Button
