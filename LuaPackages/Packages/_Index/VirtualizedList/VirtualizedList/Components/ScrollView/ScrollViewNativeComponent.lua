--[[
	* Copyright (c) Roblox Corporation. All rights reserved.
	* Licensed under the MIT License (the "License");
	* you may not use this file except in compliance with the License.
	* You may obtain a copy of the License at
	*
	*     https://opensource.org/licenses/MIT
	*
	* Unless required by applicable law or agreed to in writing, software
	* distributed under the License is distributed on an "AS IS" BASIS,
	* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	* See the License for the specific language governing permissions and
	* limitations under the License.
]]
local srcWorkspace = script.Parent.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local console = LuauPolyfill.console
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
type Object = LuauPolyfill.Object

local React = require(Packages.React)
local Change = React.Change
local Event = React.Event

local Otter = require(Packages.Otter)

local DEFAULT_ANIMATION_CONFIG = {
	restingPositionLimit = 1,
	restingVelocityLimit = 10,
}

local ScrollViewNativeComponent = React.Component:extend("ScrollViewNativeComponent")
function ScrollViewNativeComponent:init(props)
	self.props = props
	self._nativeRef = React.createRef()
	self.lastScrollEventTime = 0

	self.animationConfig = if self.props.animationConfig then self.props.animationConfig else DEFAULT_ANIMATION_CONFIG

	self.motor = Otter.createGroupMotor({
		x = 0,
		y = 0,
	})

	self.motorStepDisconnect = self.motor:onStep(function(canvasPosition)
		self._nativeRef.current.CanvasPosition = Vector2.new(canvasPosition.x, canvasPosition.y)
	end)

	self._nativeRef.animateScrollTo = function(x, y)
		self:_startAnimatedScroll(x, y)
	end
end

function ScrollViewNativeComponent:_validateAnimatedScrollInputs(x: number, y: number)
	if not self._nativeRef.current then
		console.error("scrollTo animation failed: ScrollViewNativeComponent._nativeRef instance is undefined")
	end

	if self._nativeRef.current.ScrollingDirection == Enum.ScrollingDirection.X then
		if x > self._nativeRef.current.AbsoluteCanvasSize.X then
			console.warn(
				"scrollTo animation goal out of bounds, setting X goal to: "
					.. tostring(
						self._nativeRef.current.AbsoluteCanvasSize.X - self._nativeRef.current.AbsoluteWindowSize.X
					)
			)
		elseif x < 0 then
			console.warn("scrollTo animation goal out of bounds, setting X goal to: 0")
		end
	else
		if y > self._nativeRef.current.AbsoluteCanvasSize.Y then
			console.warn(
				"scrollTo animation goal out of bounds, setting Y goal to: "
					.. tostring(
						self._nativeRef.current.AbsoluteCanvasSize.Y - self._nativeRef.current.AbsoluteWindowSize.Y
					)
			)
		elseif y < 0 then
			console.warn("scrollTo animation goal out of bounds, setting Y goal to: 0")
		end
	end
end

function ScrollViewNativeComponent:_startAnimatedScroll(x, y)
	if _G.__DEV__ then
		self:_validateAnimatedScrollInputs(x, y)
	end
	local currentCanvasPosition = self._nativeRef.current.CanvasPosition

	self.motor:setGoal({
		x = Otter.instant(currentCanvasPosition.X),
		y = Otter.instant(currentCanvasPosition.Y),
	})

	--[[
		ROBLOX NOTE: Immediately step to the current canvas position. It can take a frame for the
		motor to step to the instant goal if we wait for the heartbeat to call the onStep method.
	]]
	self.motor:step(0)

	self.motor:setGoal({
		x = Otter.spring(x, self.animationConfig),
		y = Otter.spring(y, self.animationConfig),
	})
end

function ScrollViewNativeComponent:render()
	local styleProps = if Array.isArray(self.props.style)
		then Array.reduce(self.props.style, function(obj: Object, prop)
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
		[Change.CanvasPosition] = function(rbx: ScrollingFrame)
			local currentScrollEventTime = os.clock() * 1000
			local minScrollEventThrottleDelta = self.props.scrollEventThrottle or 0
			if currentScrollEventTime - self.lastScrollEventTime > minScrollEventThrottleDelta then
				self.props.onScroll(rbx)
				self.lastScrollEventTime = currentScrollEventTime
			end
		end,
		[Event.InputBegan] = function(rbx, input: InputObject)
			if
				input.UserInputType == Enum.UserInputType.MouseWheel
				or input.UserInputType == Enum.UserInputType.Touch
			then
				if self.motor ~= nil then
					self.motor:stop()
				end
			end

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

function ScrollViewNativeComponent:willUnmount()
	if self.motor ~= nil then
		self.motor:destroy()
	end

	if self.motorStepDisconnect ~= nil then
		self.motorStepDisconnect()
	end
end

return ScrollViewNativeComponent
