--[[
	A round button with an arrow, used for pagination.

	Required Props:
		boolean Disabled: Whether this button is disabled.
		boolean Flipped: Whether this button is flipped (arrow facing left)
		callback OnClick: A callback invoked when the button is clicked.
		boolean Visible: Whether this button is visible.
		table Theme: The styles for the overall MultiImagePicker component. Styles are prop drilled from init.lua.
		Mouse Mouse: A Mouse ContextItem, which is provided via withContext.

	Optional Props:
		Vector2 AnchorPoint: The anchor point of this component. Defaults to Vector2.new().
		UDim2 Position: The position of this component. Defaults to UDim2.new().
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)

local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Components = Framework.UI.Components
local HoverArea = require(Components.HoverArea)

export type Props = {
	AnchorPoint: Vector2?,
	Disabled: boolean,
	Flipped: boolean,
	OnClick: () -> (),
	Position: UDim2?,
	Visible: boolean,
	Theme: { [string]: any },
}

type _Props = Props & {
	Mouse: any,
}

-- TODO https://jira.rbx.com/browse/STM-2622: Add RoundArrowButton to Button component in Dev Framework
local RoundArrowButton = Roact.PureComponent:extend("RoundArrowButton")

function RoundArrowButton:init()
	self.state = {
		Hovering = false,
	}
end

function RoundArrowButton:mouseHoverChanged(hovering)
	self:setState({
		Hovering = hovering,
	})
end

function RoundArrowButton:render()
	local props: _Props = self.props
	local theme = props.Theme
	local roundArrowButtonTheme = theme.RoundArrowButton

	local visible = props.Visible
	local flipped = props.Flipped or false
	local position = props.Position or UDim2.new()
	local anchorPoint = props.AnchorPoint or Vector2.new()
	local disabled = props.Disabled
	local hovering = self.state.Hovering

	local cursorName = if disabled then "Forbidden" else "PointingHand"

	local mouse = props.Mouse

	return Roact.createElement("ImageButton", {
		Visible = visible,
		Position = position,
		AnchorPoint = anchorPoint,
		Size = roundArrowButtonTheme.ButtonSize,
		BackgroundTransparency = 1,
		ImageTransparency = if hovering and not disabled then 0 else 0.3,
		Image = roundArrowButtonTheme.ButtonImage,
		Rotation = flipped and 180 or 0,

		[Roact.Event.Activated] = function()
			if not disabled then
				props.OnClick()
			end
		end,
	}, {
		Hover = Roact.createElement(HoverArea, {
			Cursor = "rbxasset://SystemCursors/" .. cursorName,
			Mouse = mouse,

			MouseEnter = function()
				self:mouseHoverChanged(true)
			end,
			MouseLeave = function()
				self:mouseHoverChanged(false)
			end,
		}),
	})
end

RoundArrowButton = withContext({
	Mouse = ContextServices.Mouse,
})(RoundArrowButton)

return RoundArrowButton
