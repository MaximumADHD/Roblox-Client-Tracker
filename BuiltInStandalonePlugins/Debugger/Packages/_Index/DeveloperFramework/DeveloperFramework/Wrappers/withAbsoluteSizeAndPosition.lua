--[[
	The withAbsoluteSizeAndPosition wrapper provides the current AbsoluteSize and AbsolutePosition of the
	wrapped component as a prop in a way that minimizes re-render cycles.

	This is useful if you have a component that should be measured used AutomaticSize, but you also
	want to have children which are proportional to the final size of the component, such as a 100%
	sized decoration or overlay.

	The wrapper passes the WrapperProps table that defines the event handlers for the control,
	which should be merged with the props for the element that is rendered (using i.e. Dash.assign)

	CAUTION: Make sure no elements which depend on the AbsoluteSize exceed the automatic size of the
	component, as this will cause the component to grow indefinitely.
]]
local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local Types = require(Framework.Types)
local wrapperShouldUpdate = require(script.Parent.wrapperShouldUpdate)

local Dash = require(Framework.packages.Dash)
local joinDeep = Dash.joinDeep

local SizeAndPosition = Roact.Component:extend("SizeAndPosition")

SizeAndPosition.shouldUpdate = wrapperShouldUpdate

SizeAndPosition.defaultProps = {
	WrapperProps = {},
}

function SizeAndPosition:init()
	self.ref = Roact.createRef()
	self.state = {
		absolutePosition = Vector2.new(0, 0),
		absoluteSize = Vector2.new(0, 0),
	}
	self.onPositionChanged = function()
		self:reposition()
	end
	self.onSizeChanged = function()
		self:resize()
	end
end

function SizeAndPosition:reposition()
	local state = self.state
	local pane = self.ref.current
	if pane and pane.AbsolutePosition then
		self:setSizeAndPosition(pane.AbsolutePosition, state.absoluteSize)
	end
end

function SizeAndPosition:resize()
	local state = self.state
	local pane = self.ref.current
	if pane and pane.AbsoluteSize then
		self:setSizeAndPosition(state.absolutePosition, pane.AbsoluteSize)
	end
end

function SizeAndPosition:setSizeAndPosition(absolutePosition: Vector2, absoluteSize: Vector2)
	self:setState(function(prevState)
		if prevState.absolutePosition ~= absolutePosition
			or prevState.absoluteSize ~= absoluteSize
		then
			return {
				absolutePosition = Vector2.new(absolutePosition.X, absolutePosition.Y),
				absoluteSize = Vector2.new(absoluteSize.X, absoluteSize.Y),
			}
		else
			return nil
		end
	end)
end

function SizeAndPosition:didMount()
	self:reposition()
end

function SizeAndPosition:render()
	local props = self.props
	local state = self.state
	local component = props.Component
	local componentProps = props.ComponentProps

	-- Dash.joinDeep merges any WrapperProps from other wrappers into the component's props
	return Roact.createElement(component, joinDeep({
		AbsolutePosition = state.absolutePosition,
		AbsoluteSize = state.absoluteSize,
		WrapperProps = {
			[Roact.Change.AbsolutePosition] = self.onPositionChanged,
			[Roact.Change.AbsoluteSize] = self.onSizeChanged,
			[Roact.Ref] = self.ref,
		},
	}, componentProps))
end

local function withAbsoluteSizeAndPosition(component: Types.RoactComponent<any>)
	return function(componentProps)
		return Roact.createElement(SizeAndPosition, {
			Component = component,
			ComponentProps = componentProps,
		})
	end
end

return withAbsoluteSizeAndPosition
