-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Components/ScrollView/ScrollViewStickyHeader.js
--[[*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @flow
 * @format
 ]]
local srcWorkspace = script.Parent.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local clearTimeout = LuauPolyfill.clearTimeout
local setTimeout = LuauPolyfill.setTimeout
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object

-- ROBLOX deviaton: missing types
type ReadOnly<T> = T

-- local AnimatedImplementation = require(script.Parent.Parent.Parent.Animated.AnimatedImplementation).default
type AnimatedImplementation_Interpolation = any
type AnimatedImplementation_Value = any
-- ROBLOX deviation START: Mocking missing module
-- local AnimatedAddition = require(script.Parent.Parent.Parent.Animated.nodes.AnimatedAddition).default
local AnimatedAddition = {
	new = function(...)
		return nil
	end,
}
-- local AnimatedDiffClamp = require(script.Parent.Parent.Parent.Animated.nodes.AnimatedDiffClamp).default
local AnimatedDiffClamp = {
	new = function(...)
		return nil
	end,
}
-- ROBLOX deviation END
type AnimatedDiffClamp = any
-- local AnimatedNode = require(script.Parent.Parent.Parent.Animated.nodes.AnimatedNode).default
type AnimatedNode = any
local React = require(Packages.React)
type React_Element<C> = React.Element<C>
type React_Node = React.Node
-- ROBLOX deviation: using partial implementation
local StyleSheet = require(srcWorkspace.StyleSheet.StyleSheet)
-- ROBLOX deciation START: mocking missing deps
-- local View = "Frame"
-- local Platform = require(script.Parent.Parent.Parent.Utilities.Platform).default
local Platform = {
	OS = "roblox",
}
-- local CoreEventTypesModule = require(script.Parent.Parent.Parent.Types.CoreEventTypes)
-- type LayoutEvent = CoreEventTypesModule.LayoutEvent
type LayoutEvent = any
-- local AnimatedView = AnimatedImplementation:createAnimatedComponent(View)
local AnimatedView = "AnimatedView"
-- ROBLOX deviation END

-- ROBLOX deviation: predefine variables
local styles

export type Props = ReadOnly<{
	children: React_Element<any>?,
	nextHeaderLayoutY: number?,
	onLayout: (event: LayoutEvent) -> (),
	scrollAnimatedValue: AnimatedImplementation_Value,
	-- Will cause sticky headers to stick at the bottom of the ScrollView instead
	-- of the top.
	inverted: boolean?,
	-- The height of the parent ScrollView. Currently only set when inverted.
	scrollViewHeight: number?,
	nativeID: string?,
	hiddenOnScroll: boolean?,
}>

type State = Object & {
	measured: boolean,
	layoutY: number,
	layoutHeight: number,
	nextHeaderLayoutY: number?,
	translateY: number?,
}

type ScrollViewStickyHeader = {
	state: any,
	_translateY: any,
	_shouldRecreateTranslateY: any,
	_haveReceivedInitialZeroTranslateY: any,
	_ref: any,
	_timer: any,
	_animatedValueListenerId: any,
	_animatedValueListener: any,
	_debounceTimeout: any,
	setNextHeaderY: any,
	componentWillUnmount: any,
	UNSAFE_componentWillReceiveProps: any,
	updateTranslateListener: any,
	_onLayout: any,
	_setComponentRef: any,
	render: any,
} --[[ ROBLOX TODO: replace 'any' type/ add missing ]]

local ScrollViewStickyHeader = React.Component:extend("ScrollViewStickyHeader")
function ScrollViewStickyHeader:init(props)
	warn("ScrollViewStickyHeader not fully implemented")
	self.props = props
	self.state = {
		measured = false,
		layoutY = 0,
		layoutHeight = 0,
		nextHeaderLayoutY = self.props.nextHeaderLayoutY,
		translateY = nil,
	} :: State

	self._translateY = nil :: AnimatedNode?
	self._shouldRecreateTranslateY = true
	self._haveReceivedInitialZeroTranslateY = true
	-- self._ref: any -- TODO T53738161: flow type this, and the whole file

	-- Fabric-only:
	-- self._timer: TimeoutID?;
	-- self._animatedValueListenerId: string;
	-- self._animatedValueListener: (valueObject: ReadOnly<{value: number}>) -> ()
	self._debounceTimeout = if Platform.OS == "android" then 15 else 64

	self.setNextHeaderY = function(_self, y: number): ()
		self._shouldRecreateTranslateY = true
		self.setState({ nextHeaderLayoutY = y })
	end

	self._onLayout = function(_self, event: any)
		local layoutY = event.nativeEvent.layout.y
		local layoutHeight = event.nativeEvent.layout.height
		local measured = true
		if
			layoutY ~= self.state.layoutY
			or layoutHeight ~= self.state.layoutHeight
			or measured ~= self.state.measured
		then
			self._shouldRecreateTranslateY = true
		end
		self:setState({ measured = measured, layoutY = layoutY, layoutHeight = layoutHeight })
		self.props:onLayout(event)
		local child = React.Children.only(self.props.children)
		if child.props.onLayout then
			child.props:onLayout(event)
		end
	end

	self._setComponentRef = function(_self, ref)
		self._ref = ref
	end
end

function ScrollViewStickyHeader:componentWillUnmount()
	if self._translateY ~= nil and self._animatedValueListenerId ~= nil then
		self._translateY:removeListener(self._animatedValueListenerId)
	end
	if Boolean.toJSBoolean(self._timer) then
		clearTimeout(self._timer)
	end
end

function ScrollViewStickyHeader:UNSAFE_componentWillReceiveProps(nextProps: Props)
	if
		nextProps.scrollViewHeight ~= self.props.scrollViewHeight
		or nextProps.scrollAnimatedValue ~= self.props.scrollAnimatedValue
		or nextProps.inverted ~= self.props.inverted
	then
		self._shouldRecreateTranslateY = true
	end
end

function ScrollViewStickyHeader:updateTranslateListener(
	translateY: AnimatedImplementation_Interpolation,
	isFabric: boolean,
	offset: AnimatedDiffClamp?
)
	if self._translateY ~= nil and self._animatedValueListenerId ~= nil then
		self._translateY:removeListener(self._animatedValueListenerId)
	end
	self.translateY = if Boolean.toJSBoolean(offset) then AnimatedAddition.new(translateY, offset) else translateY

	self._shouldRecreateTranslateY = false

	if not isFabric then
		return
	end

	if not self._animatedValueListener then
		-- This is called whenever the (Interpolated) Animated Value
		-- updates, which is several times per frame during scrolling.
		-- To ensure that the Fabric ShadowTree has the most recent
		-- translate style of this node, we debounce the value and then
		-- pass it through to the underlying node during render.
		-- This is:
		-- 1. Only an issue in Fabric.
		-- 2. Worse in Android than iOS. In Android, but not iOS, you
		--    can touch and move your finger slightly and still trigger
		--    a "tap" event. In iOS, moving will cancel the tap in
		--    both Fabric and non-Fabric. On Android when you move
		--    your finger, the hit-detection moves from the Android
		--    platform to JS, so we need the ShadowTree to have knowledge
		--    of the current position.
		self._animatedValueListener = function(ref)
			local value = ref.value
			-- When the AnimatedInterpolation is recreated, it always initializes
			-- to a value of zero and emits a value change of 0 to its listeners.
			if value == 0 and not self._haveReceivedInitialZeroTranslateY then
				self._haveReceivedInitialZeroTranslateY = true
				return
			end
			if Boolean.toJSBoolean(self._timer) then
				clearTimeout(self._timer)
			end
			self._timer = setTimeout(function()
				if value ~= self.state.translateY then
					self:setState({ translateY = value })
				end
			end, self._debounceTimeout)
		end
	end
	if self.state.translateY ~= 0 and self.state.translateY ~= nil then
		self._haveReceivedInitialZeroTranslateY = false
	end
	self._animatedValueListenerId = translateY:addListener(self._animatedValueListener)
end

function ScrollViewStickyHeader:render(): React_Node
	-- Fabric Detection
	local isFabric = self._ref
		and self._ref["_internalInstanceHandle"]
		and self._ref["_internalInstanceHandle"].stateNode
		and Boolean.toJSBoolean(self._ref["_internalInstanceHandle"].stateNode.canonical)

	-- Initially and in the case of updated props or layout, we
	-- recreate this interpolated value. Otherwise, we do not recreate
	-- when there are state changes.
	if self._shouldRecreateTranslateY then
		local inverted, scrollViewHeight = self.props.inverted, self.props.scrollViewHeight
		local measured, layoutHeight, layoutY, nextHeaderLayoutY =
			self.state.measured, self.state.layoutHeight, self.state.layoutY, self.state.nextHeaderLayoutY
		local inputRange: Array<number> = { -1, 0 }
		local outputRange: Array<number> = { 0, 0 }
		if measured then
			if inverted then
				-- The interpolation looks like:
				-- - Negative scroll: no translation
				-- - `stickStartPoint` is the point at which the header will start sticking.
				--   It is calculated using the ScrollView viewport height so it is a the bottom.
				-- - Headers that are in the initial viewport will never stick, `stickStartPoint`
				--   will be negative.
				-- - From 0 to `stickStartPoint` no translation. This will cause the header
				--   to scroll normally until it reaches the top of the scroll view.
				-- - From `stickStartPoint` to when the next header y hits the bottom edge of the header: translate
				--   equally to scroll. This will cause the header to stay at the top of the scroll view.
				-- - Past the collision with the next header y: no more translation. This will cause the
				--   header to continue scrolling up and make room for the next sticky header.
				--   In the case that there is no next header just translate equally to
				--   scroll indefinitely.
				if scrollViewHeight ~= nil then
					local stickStartPoint = layoutY + layoutHeight - scrollViewHeight
					if stickStartPoint > 0 then
						table.insert(inputRange, stickStartPoint)
						table.insert(outputRange, 0)
						table.insert(inputRange, stickStartPoint + 1)
						table.insert(outputRange, 1)
						-- If the next sticky header has not loaded yet (probably windowing) or is the last
						-- we can just keep it sticked forever.
						local collisionPoint = (nextHeaderLayoutY or 0) - layoutHeight - scrollViewHeight
						if collisionPoint > stickStartPoint then
							table.insert(inputRange, collisionPoint)
							table.insert(inputRange, collisionPoint + 1)
							table.insert(outputRange, collisionPoint - stickStartPoint)
							table.insert(outputRange, collisionPoint - stickStartPoint)
						end
					end
				end
			else
				-- The interpolation looks like:
				-- - Negative scroll: no translation
				-- - From 0 to the y of the header: no translation. This will cause the header
				--   to scroll normally until it reaches the top of the scroll view.
				-- - From header y to when the next header y hits the bottom edge of the header: translate
				--   equally to scroll. This will cause the header to stay at the top of the scroll view.
				-- - Past the collision with the next header y: no more translation. This will cause the
				--   header to continue scrolling up and make room for the next sticky header.
				--   In the case that there is no next header just translate equally to
				--   scroll indefinitely.
				table.insert(inputRange, layoutY)
				table.insert(outputRange, 0)
				-- If the next sticky header has not loaded yet (probably windowing) or is the last
				-- we can just keep it sticked forever.
				local collisionPoint = (nextHeaderLayoutY or 0) - layoutHeight
				if collisionPoint >= layoutY then
					table.insert(inputRange, collisionPoint)
					table.insert(inputRange, collisionPoint + 1)
					table.insert(outputRange, collisionPoint - layoutY)
					table.insert(outputRange, collisionPoint - layoutY)
				else
					table.insert(inputRange, layoutY + 1)
					table.insert(outputRange, 1)
				end
			end
		end

		self:updateTranslateListener(
			self.props.scrollAnimatedValue:interpolate({ inputRange = inputRange, outputRange = outputRange }),
			isFabric,
			if self.props.hiddenOnScroll
				then AnimatedDiffClamp.new(
					self.props.scrollAnimatedValue
						:interpolate({
							extrapolateLeft = "clamp",
							inputRange = { layoutY, layoutY + 1 },
							outputRange = { 0, 1 } :: Array<number>,
						})
						:interpolate({ inputRange = { 0, 1 }, outputRange = { 0, -1 } :: Array<number> }),
					-self.state.layoutHeight,
					0
				)
				else nil
		)
	end

	local child = React.Children.only(self.props.children)

	-- TODO T68319535: remove this if NativeAnimated is rewritten for Fabric
	local passthroughAnimatedPropExplicitValues = if isFabric and self.state.translateY ~= nil
		then { style = { transform = { { translateY = self.state.translateY } } } }
		else nil

	return React.createElement(
		AnimatedView,
		{
			collapsable = false,
			nativeID = self.props.nativeID,
			onLayout = self._onLayout,
			ref = self._setComponentRef,
			style = {
				child.props.style,
				styles.header,
				{
					transform = {
						{ translateY = self._translateY },
					},
				},
			},
			passthroughAnimatedPropExplicitValues = passthroughAnimatedPropExplicitValues,
		},
		React.cloneElement(child, {
			style = styles.fill, -- We transfer the child style to the wrapper.
			onLayout = nil, -- we call this manually through our this._onLayout
		})
	)
end

styles = StyleSheet.create({ header = { zIndex = 10, position = "relative" }, fill = { flex = 1 } })

return ScrollViewStickyHeader
