local srcWorkspace = script.Parent.Parent.Parent.Parent.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object

local React = require(Packages.React)
local Change = React.Change

local ScrollContentViewNativeComponent = React.Component:extend("ScrollContentViewNativeComponent")

function ScrollContentViewNativeComponent:init(props)
	self.props = props
end

function ScrollContentViewNativeComponent:render()
	local styleProps = if Array.isArray(self.props.style)
		then Array.reduce(self.props.style, function(obj, prop)
			return Object.assign(obj, prop)
		end, {})
		else self.props.style

	local nativeProps = Object.assign({
		Name = "RCTScrollContentView",
		[Change.AbsoluteSize] = self.props.onLayout,
		Size = UDim2.new(1, 0, 1, 0),
	}, if self.props.AutomaticSize then { AutomaticSize = self.props.AutomaticSize } else nil, styleProps)

	return React.createElement("Frame", nativeProps, self.props.children)
end

return ScrollContentViewNativeComponent
