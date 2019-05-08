--[[
	A button with rounded corners. Colors are based on Theme.

	Required Props:
		function RenderContents(theme, hovered) = A function that returns the
			contents that will display in the button. The parameters passed
			allow the function to style the contents based on the button's current
			theme and/or produce different contents if the button is hovered.

	Props:
		string Style = The theme to use for this button. Ex. "Default", "Primary".
			Styles for buttons can be found in createTheme.lua.
		UDim2 Size = The size of the button.
		UDim2 Position = The position of the button.
		Vector2 AnchorPoint = The center point of the button.
		int LayoutOrder = The order in which this button appears in a UILayout.
		int ZIndex = The display index of this button.
]]

local Library = script.Parent.Parent

local Roact = require(Library.Parent.Roact)

local Theming = require(Library.Theming)
local withTheme = Theming.withTheme

local RoundFrame = require(Library.Components.RoundFrame)

local Button = Roact.PureComponent:extend("Button")

function Button:init(initialProps)
	self.state = {
		hovered = false,
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
		})
	end
end

function Button:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state
		local hovered = state.hovered

		local style = props.Style
		local size = props.Size
		local position = props.Position
		local anchorPoint = props.AnchorPoint
		local layoutOrder = props.LayoutOrder
		local renderContents = props.RenderContents
		local zIndex = props.ZIndex

		assert(renderContents ~= nil and type(renderContents) == "function",
			"Button requires a RenderContents function.")

		local buttonTheme = style and theme.button[style] or theme.button.Default
		if hovered then
			buttonTheme = buttonTheme.hovered
		end

		local content = renderContents(buttonTheme, hovered)

		return Roact.createElement(RoundFrame, {
			Size = size,
			Position = position,
			AnchorPoint = anchorPoint,
			LayoutOrder = layoutOrder,
			ZIndex = zIndex,

			BackgroundColor3 = buttonTheme.backgroundColor,
			BorderColor3 = buttonTheme.borderColor,

			OnActivated = self.onClick,
			OnMouseEnter = self.mouseEnter,
			OnMouseLeave = self.mouseLeave,
		}, content)
	end)
end

return Button
