-- ROBLOX upstream: no upstream
-- ROBLOX comment: in the future we may want to replace this with a full implementation of the View component
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object

local React = require(Packages.React)
local Change = React.Change

local View = React.Component:extend("View")
function View:init(props)
	self.props = props
	self._nativeRef = React.createRef()
end

function View:render()
	local styleProps = if Array.isArray(self.props.style)
		then Array.reduce(self.props.style, function(obj, prop)
			return Object.assign(obj, prop)
		end, {})
		else self.props.style

	local props = Object.assign({}, self.props, styleProps)

	self.nativeProps = {
		ref = self._nativeRef,
		-- ROBLOX TODO: We need to handle all valid Frame props / fail
		BackgroundColor3 = props.BackgroundColor3,
		Name = props.Name or "View",
		Size = props.Size or UDim2.new(1, 0, 0, 0),
		AutomaticSize = props.AutomaticSize or Enum.AutomaticSize.Y,
		ZIndex = props.ZIndex or nil,
		LayoutOrder = props.LayoutOrder or nil,
		BorderSizePixel = props.BorderSizePixel or 0,
		BackgroundTransparency = props.BackgroundTransparency or 1,
		[Change.AbsoluteSize] = props.onLayout,
	}
	return React.createElement("Frame", self.nativeProps, self.props.children)
end

return View
