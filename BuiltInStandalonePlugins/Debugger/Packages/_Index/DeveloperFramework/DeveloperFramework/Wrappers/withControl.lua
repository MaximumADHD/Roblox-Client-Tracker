--[[
	The withControl wrapper passes the StyleModifier prop to the wrapped component, which changes
	depending on whether tha component is hovered, selected, pressed or disabled.

	The StyleModifier prop is automatically used by Stylizer to provide the correct style object
	for the current modifier of the component.

	The wrapper passes the WrapperProps table that defines the event handlers for the control,
	which should be merged with the props for the element that is rendered (using i.e. Dash.assign)
]]
export type WrapperProps = {
	-- TODO work out how to type Roact.Event
}

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local Types = require(Framework.Types)
local wrapperShouldUpdate = require(script.Parent.wrapperShouldUpdate)

local Util = require(Framework.Util)
local isInputMainPress = Util.isInputMainPress
local StyleModifier = Util.StyleModifier
local DoubleClickDetector = Util.DoubleClickDetector

local Dash = require(Framework.packages.Dash)
local joinDeep = Dash.joinDeep

local FFlagDevFrameworkDoubleClick = game:GetFastFlag("DevFrameworkDoubleClick")

local Controllable = Roact.Component:extend("Controllable")

Controllable.shouldUpdate = wrapperShouldUpdate

function Controllable:init()
	self.state = {
		isHovering = false,
		isPressing = false,
	}
	self.DoubleClickDetector = FFlagDevFrameworkDoubleClick and DoubleClickDetector.new()
	self.onMouseEnter = function()
		self:setState({
			isHovering = true,
		})
	end
	self.onMouseLeave = function()
		self:setState({
			isHovering = false,
		})
		if self.props.ComponentProps.OnHoverEnd then
			self.props.ComponentProps.OnHoverEnd(self.props.ComponentProps)
		end
	end
	self.onInputBegan = function(rbx, input)
		if isInputMainPress(input) then
			self:setState({
				isPressing = true,
			})
			if self.props.ComponentProps.OnPress then
				self.props.ComponentProps.OnPress(self.props.ComponentProps)
			end
			if FFlagDevFrameworkDoubleClick and self.props.ComponentProps.OnDoubleClick and self.DoubleClickDetector:isDoubleClick() then
				self.props.ComponentProps.OnDoubleClick(self.props.ComponentProps)
			end
		end
	end
	self.onInputEnded = function(rbx, input)
		if isInputMainPress(input) then
			self:setState({
				isPressing = false,
			})
			if self.props.ComponentProps.OnPressEnd then
				self.props.ComponentProps.OnPressEnd(self.props.ComponentProps)
			end
		end
	end
end

function Controllable:didUpdate(_prevProps, prevState)
	local state = self.state
	local componentProps = self.props.ComponentProps
	if componentProps.OnHover and state.isHovering and not prevState.isHovering then
		componentProps.OnHover(self.props.ComponentProps)
	end
end

function Controllable:render()
	local props = self.props
	local state = self.state
	local component = props.Component
	local componentProps = props.ComponentProps
	-- Allow the component props to override the interaction state handled by this component
	local styleModifier = componentProps.StyleModifier
		or (componentProps.Disabled and StyleModifier.Disabled)
		or (componentProps.Selected and StyleModifier.Selected)
		or (state.isPressing and StyleModifier.Pressed)
		or (state.isHovering and StyleModifier.Hover)
		or nil
	-- Dash.joinDeep merges any WrapperProps from other wrappers into the component's props
	return  Roact.createElement(component, joinDeep(componentProps, {
		StyleModifier = styleModifier,
		-- Provide props which can be merged with the props of the wrapping component i.e. by using Dash.assign
		WrapperProps = {
			[Roact.Event.MouseEnter] = self.onMouseEnter,
			[Roact.Event.MouseLeave] = self.onMouseLeave,
			[Roact.Event.InputBegan] = self.onInputBegan,
			[Roact.Event.InputEnded] = self.onInputEnded,
		},
	}))
end

local function withControl(component: Types.RoactComponent<any>)
	return function(componentProps)
		return Roact.createElement(Controllable, {
			Component = component,
			ComponentProps = componentProps,
		})
	end
end

return withControl
