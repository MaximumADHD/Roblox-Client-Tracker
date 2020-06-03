local Cryo = require(script.Parent.Parent.Parent.Parent.Cryo)
local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
local NavigationActions = require(script.Parent.Parent.Parent.NavigationActions)
local StackViewLayout = require(script.Parent.StackViewLayout)
local Transitioner = require(script.Parent.Parent.Transitioner)
local StackViewTransitionConfigs = require(script.Parent.StackViewTransitionConfigs)
local StackPresentationStyle = require(script.Parent.StackPresentationStyle)

local defaultNavigationConfig = {
	mode = StackPresentationStyle.Default,
}


local StackView = Roact.Component:extend("StackView")

function StackView:init()
	self._doRender = function(...)
		return self:_render(...)
	end

	self._doConfigureTransition = function(...)
		return self:_configureTransition(...)
	end

	self._doOnTransitionEnd = function(...)
		return self:_onTransitionEnd(...)
	end
end

function StackView:render()
	local screenProps = self.props.screenProps
	local navigation = self.props.navigation
	local descriptors = self.props.descriptors
	local onTransitionStart = self.props.onTransitionStart
		or self.props.navigationConfig.onTransitionStart

	-- Transitioner handles setting up the animation motors and making that data
	-- available to the lower layer.
	return Roact.createElement(Transitioner, {
		render = self._doRender,
		configureTransition = self._doConfigureTransition,
		screenProps = screenProps,
		navigation = navigation,
		descriptors = descriptors,
		onTransitionStart = onTransitionStart,
		onTransitionEnd = self._doOnTransitionEnd,
	})
end

function StackView:didMount()
	local navigation = self.props.navigation
	if navigation.state.isTransitioning then
		navigation.dispatch(NavigationActions.completeTransition({
			key = navigation.state.key,
		}))
	end
end

function StackView:_render(transitionProps, lastTransitionProps)
	local screenProps = self.props.screenProps
	local navigationConfig = Cryo.Dictionary.join(defaultNavigationConfig, self.props.navigationConfig)
	local descriptors = self.props.descriptors

	return Roact.createElement(StackViewLayout, Cryo.Dictionary.join(navigationConfig, {
		screenProps = screenProps,
		descriptors = descriptors,
		transitionProps = transitionProps,
		lastTransitionProps = lastTransitionProps,
	}))
end

function StackView:_configureTransition(transitionProps, prevTransitionProps)
	return StackViewTransitionConfigs.getTransitionConfig(
		self.props.navigationConfig.transitionConfig,
		transitionProps,
		prevTransitionProps,
		self.props.navigationConfig.mode
	).transitionSpec
end

function StackView:_onTransitionEnd(transition, lastTransition)
	local navigationConfig = self.props.navigationConfig
	local navigation = self.props.navigation
	local onTransitionEnd = navigationConfig.onTransitionEnd
	local transitionDestKey = transition.scene.route.key
	local isCurrentKey = navigation.state.routes[navigation.state.index].key == transitionDestKey

	if transition.navigation.state.isTransitioning and isCurrentKey then
		navigation.dispatch(NavigationActions.completeTransition({
			key = navigation.state.key,
			toChildKey = transitionDestKey,
		}))
	end

	if onTransitionEnd then
		onTransitionEnd(transition, lastTransition)
	end
end

return StackView
