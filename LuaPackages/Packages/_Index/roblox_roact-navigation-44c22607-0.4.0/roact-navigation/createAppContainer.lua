local Roact = require(script.Parent.Parent.Roact)
local Cryo = require(script.Parent.Parent.Cryo)
local NavigationActions = require(script.Parent.NavigationActions)
local Events = require(script.Parent.Events)
local NavigationContext = require(script.Parent.views.NavigationContext)
local getNavigation = require(script.Parent.getNavigation)
local validate = require(script.Parent.utils.validate)

local function validateProps(props)
	if not props.navigation then
		return
	end

	local errStr =
		"This navigator has both 'navigation' and container props. " ..
		"It is unclear if it should own its own state. Remove the " ..
		"container props or don't pass a 'navigation' prop."

	for key in pairs(props) do
		validate(key == "screenProps" or key == "navigation", errStr)
	end
end

--[[
	Construct a container Roact component that will host the navigation hierarchy
	specified by your main AppComponent. AppComponent must be a navigator created by
	a Roact-Navigation helper function, or a stateful Roact component

	If you are using a custom stateful Roact component, make sure to set the 'router'
	field so that it can be hooked into the navigation system. You must also pass your
	'navigation' prop to any child navigators.

	Additional props:
		renderLoading    			- 	Roact component to render while the app is loading.
		externalDispatchConnector	-	Function that Roact Navigation can use to connect to
										externally triggered navigation Actions. This is useful
										for external UI or handling of the Android back button.

										Ex:
										local connector = function(rnDispatch)
											-- You store rnDispatch and call it when you want to inject
											-- an event from outside RN.
											return function()
												-- You disconnect rnDispatch when RN calls this.
											end
										end

										...
										Roact.createElement(MyRNAppContainer, {
											externalDispatchConnector = connector,
										})
]]
return function(AppComponent)
	validate(type(AppComponent) == "table" and AppComponent.router ~= nil,
		"AppComponent must be a navigator or a stateful Roact component with a 'router' field")

	local containerName = string.format("NavigationContainer(%s)", tostring(AppComponent))
	local NavigationContainer = Roact.Component:extend(containerName)

	function NavigationContainer.getDerivedStateFromProps(nextProps)
		validateProps(nextProps)
		return nil
	end

	function NavigationContainer:init()
		validateProps(self.props)

		self._actionEventSubscribers = {}
		self._initialAction = NavigationActions.init()

		local initialNav = nil
		local containerIsStateful = self:_isStateful()
		if containerIsStateful and not self.props.persistenceKey then
			initialNav = AppComponent.router.getStateForAction(self._initialAction)
		end

		self.state = {
			nav = initialNav,
		}
	end

	function NavigationContainer:_updateExternalDispatchConnector()
		local externalDispatchConnector = self.props.externalDispatchConnector
		if self._subs then
			self._subs()
			self._subs = nil
		end

		if externalDispatchConnector ~= nil then
			self._subs = externalDispatchConnector(function(...)
				if self._isMounted then
					return self:dispatch(...)
				end

				-- External dispatch while we're not mounted gets dropped on floor.
				return false
			end)
		end
	end

	function NavigationContainer:_renderLoading()
		local renderLoading = self.props.renderLoading
		if renderLoading then
			return renderLoading()
		else
			return nil
		end
	end

	function NavigationContainer:render()
		local navigation = self.props.navigation

		if self:_isStateful() then
			local navState = self.state.nav
			if not navState then
				return self:_renderLoading()
			end

			if not self._navigation or self._navigation.state ~= navState then
				self._navigation = getNavigation(
					AppComponent.router,
					navState,
					function(...)
						return self:dispatch(...)
					end,
					self._actionEventSubscribers,
					function(...)
						return self:_getScreenProps(...)
					end,
					function()
						return self._navigation
					end
				)
			end

			navigation = self._navigation
		end

		validate(navigation ~= nil, "failed to get navigation")

		return Roact.createElement(NavigationContext.Provider, {
			value = navigation,
		}, {
			-- Provide navigation prop for top-level component so it doesn't have to connect.
			AppComponent = Roact.createElement(AppComponent, Cryo.Dictionary.join(self.props, {
				navigation = navigation,
			}))
		})
	end

	function NavigationContainer:didMount()
		self._isMounted = true

		self:_updateExternalDispatchConnector()

		if not self:_isStateful() then
			return
		end

		local action = self._initialAction
		local startupState = self.state.nav

		if not startupState then
			startupState = AppComponent.router.getStateForAction(action)
		end

		local function dispatchActionEvents()
			-- _actionEventSubscribers is a table(handler, true), e.g. a Set container
			for subscriber in pairs(self._actionEventSubscribers) do
				subscriber({
					type = Events.Action,
					action = action,
					state = self.state.nav,
					-- there is no lastState for initial mounting
				})
			end
		end

		if startupState ~= self.state.nav then
			self:setState({
				nav = startupState
			})
		end

		-- This must be spawned until we get async setState callback handler in Roact
		spawn(dispatchActionEvents)
	end

	function NavigationContainer:willUnmount()
		self._isMounted = false

		-- TODO: Disconnect from from URL listener once implemented

		if self._subs then
			self._subs()
			self._subs = nil
		end
	end

	function NavigationContainer:didUpdate(oldProps)
		-- Clear cached _navState every time we update.
		if self._navState == self.state.nav then
			self._navState = nil
		end

		if self.props.externalDispatchConnector ~= oldProps.externalDispatchConnector then
			self:_updateExternalDispatchConnector()
		end
	end

	function NavigationContainer:_isStateful()
		return not self.props.navigation
	end

	-- NOTE: Not implementing _validateProps; it is duplicate

	-- NOTE: Not implementing _handleOpenURL; app should have a component
	-- that transforms URLs into paths for AppContainer instead.

	function NavigationContainer:_onNavigationStateChange(prevNav, nextNav, action)
		local onNavigationStateChange = self.props.onNavigationStateChange

		if type(onNavigationStateChange) == "function" then
			onNavigationStateChange(prevNav, nextNav, action)
		end
	end

	function NavigationContainer:_getScreenProps(propKey, defaultValue)
		local screenProps = self.props.screenProps or {}
		if propKey ~= nil then
			return screenProps[propKey] or defaultValue
		end

		-- Legacy: return original table if no args provided
		return screenProps
	end

	function NavigationContainer:dispatch(action)
		if self.props.navigation then
			return self.props.navigation.dispatch(action)
		end

		self._navState = self._navState or self.state.nav

		local lastNavState = self._navState
		validate(lastNavState ~= nil, "navState should be set in constructor if stateful")

		local reducedState = AppComponent.router.getStateForAction(action, lastNavState)
		local navState = reducedState
		if not navState then
			navState = lastNavState
		end

		local function dispatchActionEvents()
			-- _actionEventSubscribers is a table(handler, true), e.g. a Set container
			for subscriber in pairs(self._actionEventSubscribers) do
				subscriber({
					type = Events.Action,
					action = action,
					state = navState,
					lastState = lastNavState,
				})
			end
		end

		if reducedState == nil then
			-- Router returns nil when action has been handled and there is no state change.
			-- dispatch() must return true whenever something has been handled.
			dispatchActionEvents()
			return true
		end

		if navState ~= lastNavState then
			-- Update cache to ensure that subsequent calls do not discard this change
			self._navState = navState

			-- TODO: We have to dispatch events before or after setState (which mounts/unmounts components)
			-- based upon the specific event type, to ensure that pages get them in the correct order...

			self:setState({
				nav = navState
			})

			-- Must be spawned until we get async setState callback handler in Roact.
			spawn(function()
				self:_onNavigationStateChange(lastNavState, navState, action)
				dispatchActionEvents()
				-- TODO: Add call to persist navigation state here, if we ever implement it.
			end)

			return true
		end

		spawn(dispatchActionEvents)

		return false
	end

	return NavigationContainer
end
