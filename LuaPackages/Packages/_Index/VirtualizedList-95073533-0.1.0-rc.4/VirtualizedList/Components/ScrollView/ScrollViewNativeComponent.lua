local srcWorkspace = script.Parent.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object

local React = require(Packages.React)
local Change = React.Change
local Event = React.Event

local ScrollViewNativeComponent = React.Component:extend("ScrollViewNativeComponent")
function ScrollViewNativeComponent:init(props)
	self.props = props
	self._nativeRef = React.createRef()
	self.lastScrollEventTime = os.clock() * 1000
end

function ScrollViewNativeComponent:render()
	local styleProps = if Array.isArray(self.props.style)
		then Array.reduce(self.props.style, function(obj, prop)
			return Object.assign(obj, prop)
		end, {})
		else self.props.style

	local nativeProps = Object.assign({
		Name = "RCTScrollView",
		ScrollingEnabled = if self.props.scrollEnabled ~= nil then self.props.scrollEnabled else true,
		Size = UDim2.new(1, 0, 1, 0),
		-- ROBLOX DEVIATION: For inverted scrolling, manually override the CanvasSize and CanvasPosition props
		CanvasPosition = self.props.CanvasPosition,
		CanvasSize = self.props.CanvasSize or UDim2.new(0, 0, 0, 0),
		AutomaticCanvasSize = self.props.AutomaticCanvasSize or Enum.AutomaticSize.XY,
		ScrollBarThickness = if (self.props.horizontal and self.props.showsHorizontalScrollIndicator == false)
				or (not self.props.horizontal and self.props.showsVerticalScrollIndicator == false)
			then 0
			else nil,
		ref = self._nativeRef,
		[Change.AbsoluteWindowSize] = self.props.onLayout,
		[Change.CanvasPosition] = function(rbx)
			local currentScrollEventTime = os.clock() * 1000
			local minScrollEventThrottleDelta = self.props.scrollEventThrottle or 0
			if currentScrollEventTime - self.lastScrollEventTime > minScrollEventThrottleDelta then
				self.props.onScroll(rbx)
				self.lastScrollEventTime = currentScrollEventTime
			end
		end,
		[Event.InputBegan] = function(rbx, input: InputObject)
			if input.UserInputType == Enum.UserInputType.Touch then
				self.props.onTouchStart(rbx, input)
			end
		end,
		[Event.InputEnded] = function(rbx, input: InputObject)
			if input.UserInputType == Enum.UserInputType.Touch then
				self.props.onTouchEnd(rbx, input)
			end
		end,
		[Event.InputChanged] = function(rbx, input: InputObject)
			if input.UserInputType == Enum.UserInputType.Touch then
				self.props.onTouchMove(rbx, input)
			end
		end,
	}, styleProps)

	return React.createElement("ScrollingFrame", nativeProps, {
		-- ROBLOX DEVIATION: For inverted scrolling, align the ScrollContentView to the bottom
		Layout = if self.props.inverted and not self.props.getItemLayout
			then React.createElement("UIListLayout", {
				HorizontalAlignment = if self.props.horizontal
					then Enum.HorizontalAlignment.Right
					else Enum.HorizontalAlignment.Center,
				VerticalAlignment = if self.props.horizontal
					then Enum.VerticalAlignment.Center
					else Enum.VerticalAlignment.Bottom,
			})
			else nil,
		[1] = self.props.children,
	})
end

return ScrollViewNativeComponent
