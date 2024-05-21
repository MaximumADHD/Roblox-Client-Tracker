local RobloxStackView = script.Parent
local root = RobloxStackView.Parent.Parent
local Packages = root.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local React = require(Packages.React)
local StackActions = require(root.routers.StackActions)
local StackViewLayout = require(RobloxStackView.StackViewLayout)
local Transitioner = require(RobloxStackView.Transitioner)
local StackViewTransitionConfigs = require(RobloxStackView.StackViewTransitionConfigs)
local StackPresentationStyle = require(RobloxStackView.StackPresentationStyle)

local defaultNavigationConfig = {
	mode = StackPresentationStyle.Default,
}

local StackView = React.Component:extend("StackView")

function StackView:init()
	self._doRender = function(...)
		return self:_render(...)
	end

	self._doConfigureTransition = function(...)
		return self:_configureTransition(...)
	end

	self._doOnTransitionStart = function(...)
		return self:_onTransitionStart(...)
	end

	self._doOnTransitionEnd = function(...)
		return self:_onTransitionEnd(...)
	end

	self._doOnTransitionStep = function(...)
		return self:_onTransitionStep(...)
	end
end

function StackView:render()
	local screenProps = self.props.screenProps
	local navigation = self.props.navigation
	local descriptors = self.props.descriptors

	-- Transitioner handles setting up the animation motors and making that data
	-- available to the lower layer.
	return React.createElement(Transitioner, {
		render = self._doRender,
		configureTransition = self._doConfigureTransition,
		screenProps = screenProps,
		navigation = navigation,
		descriptors = descriptors,
		onTransitionStart = self._doOnTransitionStart,
		onTransitionEnd = self._doOnTransitionEnd,
		onTransitionStep = self._doOnTransitionStep,
	})
end

function StackView:didMount()
	local navigation = self.props.navigation
	if navigation.state.isTransitioning then
		navigation.dispatch(StackActions.completeTransition({
			key = navigation.state.key,
		}))
	end
end

function StackView:_render(transition, lastTransition)
	local screenProps = self.props.screenProps
	local navigationConfig = Object.assign(table.clone(defaultNavigationConfig), self.props.navigationConfig)
	local descriptors = self.props.descriptors

	return React.createElement(
		StackViewLayout,
		Object.assign(navigationConfig, {
			screenProps = screenProps,
			descriptors = descriptors,
			transitionProps = transition,
			lastTransitionProps = lastTransition,
		})
	)
end

function StackView:_configureTransition(transition, lastTransition)
	return StackViewTransitionConfigs.getTransitionConfig(
		self.props.navigationConfig.transitionConfig,
		transition,
		lastTransition,
		self.props.navigationConfig.mode
	).transitionSpec
end

function StackView:_onTransitionStart(transition, lastTransition)
	local onTransitionStart = self.props.onTransitionStart or self.props.navigationConfig.onTransitionStart

	-- Only propagate transition changes to caller for transitions where the actual
	-- index has changed. Transitioner sends updates for _all_ transitions, including
	-- those to the same screen that result from animation completion events.
	if onTransitionStart and transition.index ~= lastTransition.index then
		onTransitionStart(transition.navigation, lastTransition.navigation)
	end
end

function StackView:_onTransitionEnd(transition, lastTransition)
	local navigationConfig = self.props.navigationConfig
	local navigation = self.props.navigation
	local onTransitionEnd = self.props.onTransitionEnd or navigationConfig.onTransitionEnd
	local transitionDestKey = transition.scene.route.key
	local isCurrentKey = navigation.state.routes[navigation.state.index].key == transitionDestKey

	if transition.navigation.state.isTransitioning and isCurrentKey then
		navigation.dispatch(StackActions.completeTransition({
			key = navigation.state.key,
			toChildKey = transitionDestKey,
		}))
	end

	-- Only propagate transition changes to caller for transitions where the actual
	-- index has changed. Transitioner sends updates for _all_ transitions, including
	-- those to the same screen that result from animation completion events.
	if onTransitionEnd and transition.index ~= lastTransition.index then
		onTransitionEnd(transition.navigation, lastTransition.navigation)
	end
end

function StackView:_onTransitionStep(transition, lastTransition, value)
	local onTransitionStep = self.props.onTransitionStep or self.props.navigationConfig.onTransitionStep

	-- Only propagate transition changes to caller for transitions where the actual
	-- index has changed. Transitioner sends updates for _all_ transitions, including
	-- those to the same screen that result from animation completion events.
	if onTransitionStep and transition.index ~= lastTransition.index then
		onTransitionStep(transition.navigation, lastTransition.navigation, value)
	end
end

return StackView
