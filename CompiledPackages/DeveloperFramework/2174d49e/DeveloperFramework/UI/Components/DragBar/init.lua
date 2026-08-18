--[[
	A vertical or horizontal bar that can be dragged by the user

	Required Props:
		Enum.FillDirection FillDirection: the direction that the bar should fill
		table WrapperProps: Interaction props passed by withControl
		Mouse Mouse: A Mouse ContextItem, which is provided via withContext.

	Optional Props:
		boolean Hide: Whether the bar should be hidden, but still interactable with
		number Index: The index of the drag bar in a split pane
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		number LayoutOrder: The layout order of the bar
		UDim2 Position: The position of the drag bar
		string BarStyle: The style for the bar pane
]]
local Framework = script:FindFirstAncestor("UI").Parent
local ContextServices = require(Framework.UI.ContextServices)
local Roact = require(Framework.Parent.Roact)

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)

-- selene: allow(unused_variable)
local Mouse = require(Framework.UI.ContextServices.Mouse)
local withContext = ContextServices.withContext
local t = require(Framework.Util.Typecheck.t)
local DragBarStyle = require(script.style)

local UI = Framework.UI
local Pane = require(UI.Components.Pane)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local styles = require(script.styles)

local withControl = require(Framework.Wrappers.withControl)

export type Props = {
	FillDirection: Enum.FillDirection,
	Index: number?,
	Hide: boolean?,
	LayoutOrder: number?,
	Position: UDim2?,
	BarStyle: string?,
}

type _Props = Props & {
	WrapperProps: withControl.WrapperProps,
	Stylizer: DragBarStyle.Style,
	StyleModifier: string?,
	Mouse: typeof(Mouse),
}

local DragBar = Roact.PureComponent:extend("DragBar")

function DragBar:didUpdate(prevProps)
	local props: _Props = self.props
	-- If hover/pressing has changed, check whether to add/remove movement monitor
	if props.StyleModifier and not prevProps.StyleModifier then
		local cursor = (props.FillDirection == Enum.FillDirection.Horizontal) and "SizeNS" or "SizeEW"
		props.Mouse:__pushCursor(cursor)
	elseif not props.StyleModifier and prevProps.StyleModifier then
		props.Mouse:__popCursor()
	end
end

function DragBar:render()
	local props: _Props = self.props
	local style = if supportsStyleSheets then {} else props.Stylizer

	local weight = if supportsStyleSheets then styles:GetAttribute("Weight") else style.Weight
	local hide = props.Hide
	local barStyle = if hide then "None" else props.BarStyle
	if supportsStyleSheets and barStyle == "None" then -- allows legacy components to pass BarStyle even if they support stylesheets
		barStyle = nil
	end

	assert(t.numberMin(0)(weight), "Weight style must be a number >= 0")

	local size
	if props.FillDirection == Enum.FillDirection.Horizontal then
		size = UDim2.new(1, 0, 0, weight)
	else
		size = UDim2.new(0, weight, 1, 0)
	end

	local styleProps = {}
	if supportsStyleSheets then
		styleProps = {
			[React.Tag] = joinTags("Component-DragBar", if hide then "Transparent" else ""),
		}
	end
	return Roact.createElement(
		Pane,
		join({
			Size = size,
			Position = props.Position,
			Style = barStyle,
			LayoutOrder = props.LayoutOrder,
			BackgroundColor = if supportsStyleSheets then nil else style.Background,
		}, props.WrapperProps, styleProps)
	)
end

DragBar = withContext({
	Mouse = ContextServices.Mouse,
	Stylizer = if supportsStyleSheets then nil else ContextServices.Stylizer,
})(DragBar)

return withControl(DragBar)
