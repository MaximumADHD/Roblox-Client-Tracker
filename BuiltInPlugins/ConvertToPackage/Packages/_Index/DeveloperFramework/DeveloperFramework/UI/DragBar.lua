--[[
	A vertical or horizontal bar that can be dragged by the user

	Required Props:
		Enum.FillDirection FillDirection: the direction that the bar should fill
		table WrapperProps: Interaction props passed by withControl
		
	Optional Props:
		boolean Hide: Whether the bar should be hidden, but still interactable with
		number Index: The index of the drag bar in a split pane
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		number LayoutOrder: The layout order of the bar
		UDim2 Position: The position of the drag bar
		string BarStyle: The style for the bar pane
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local Mouse = require(Framework.ContextServices.Mouse)
local withContext = ContextServices.withContext
local t = require(Framework.Util.Typecheck.t)
local DragBarStyle = require(script.style)

local UI = Framework.UI
local Pane = require(UI.Pane)

local Dash = require(Framework.packages.Dash)
local join = Dash.join

local withControl = require(Framework.Wrappers.withControl)

local Util = require(Framework.Util)
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

export type Props = {
	FillDirection: Enum.FillDirection,
	Index: number?,
	Hide: boolean?,
	LayoutOrder: number?,
	Position: UDim2?,
	BarStyle: string?
}

type _Props = Props & {
	WrapperProps: withControl.WrapperProps,
	Stylizer: DragBarStyle.Style,
	StyleModifier: string?,
	Mouse: typeof(Mouse)
}

local DragBar = Roact.PureComponent:extend("DragBar")

function DragBar:init()
	assert(THEME_REFACTOR, "SplitPane not supported in Theme1, please upgrade your plugin to Theme2")
end

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
	local style = props.Stylizer
	
	local weight = style.Weight
	local hide = props.Hide

	assert(t.numberMin(0)(weight), "Weight style must be a number >= 0")

	local size
	if props.FillDirection == Enum.FillDirection.Horizontal then
		size = UDim2.new(1, 0, 0, weight)
	else
		size = UDim2.new(0, weight, 1, 0)
	end
	return Roact.createElement(Pane, join({
		Size = size,
		Position = props.Position,
		Style = props.BarStyle,
		LayoutOrder = props.LayoutOrder,
		BackgroundColor = style.Background,
		BackgroundTransparency = if hide then 1 else 0,
	}, props.WrapperProps))
end

DragBar = withContext({
	Mouse = ContextServices.Mouse,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(DragBar)

return withControl(DragBar)
