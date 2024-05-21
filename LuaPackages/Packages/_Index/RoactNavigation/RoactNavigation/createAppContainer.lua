-- upstream https://github.com/react-navigation/react-navigation/blob/9b55493e7662f4d54c21f75e53eb3911675f61bc/packages/native/src/createAppContainer.js

local RoactNavigationModule = script.Parent
local Packages = RoactNavigationModule.Parent
local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local console = LuauPolyfill.console
local Object = LuauPolyfill.Object
local NavigationActions = require(RoactNavigationModule.NavigationActions)
local Events = require(RoactNavigationModule.Events)
local NavigationContext = require(RoactNavigationModule.views.NavigationContext)
local getNavigation = require(RoactNavigationModule.getNavigation)
-- ROBLOX deviation START: tie invariant to assert, which avoids the function call overhead
local invariant = assert
-- ROBLOX deviation END
local pathUtils = require(RoactNavigationModule.routers.pathUtils)

local urlToPathAndParams = pathUtils.urlToPathAndParams

local function isStateful(props)
	return not props.navigation
end

local function validateProps(props)
	if props.persistenceKey then
		warn(
			"You passed persistenceKey prop to a navigator. "
				.. "The persistenceKey prop was replaced by a more flexible persistence mechanism, "
				.. "please see the navigation state persistence docs for more information. "
				.. "Passing the persistenceKey prop is a no-op."
		)
	end
	if isStateful(props) then
		return
	end

	local containerProps = Object.assign(table.clone(props), {
		navigation = Object.None,
		screenProps = Object.None,
		persistNavigationState = Object.None,
		loadNavigationState = Object.None,
		-- Roblox deviation: no support for theme
		-- Roblox deviation: add key for external dispatch feature
		externalDispatchConnector = Object.None,
	})

	if next(containerProps) ~= nil then
		error(
			"This navigator has both navigation and container props, so it is "
				.. ("unclear if it should own its own state. Remove props: %q "):format(
					table.concat(Object.keys(containerProps), ", ")
				)
				.. "if the navigator should get its state from the navigation prop. If the "
				.. "navigator should maintain its own state, do not pass a navigation prop."
		)
	end

	local persistNavigationState = props.persistNavigationState
	local loadNavigationState = props.loadNavigationState
	invariant(
		(persistNavigationState == nil and loadNavigationState == nil)
			or (type(persistNavigationState) == "function" and type(loadNavigationState) == "function"),
		"both persistNavigationState and loadNavigationState must either be undefined, or be functions"
	)
end

-- Track the number of stateful container instances. Warn if >0 and not using the
-- detached prop to explicitly acknowledge the behavior. We should deprecated implicit
-- stateful navigation containers in a future release and require a provider style pattern
-- instead in order to eliminate confusion entirely.
local _statefulContainerCount = 0
local function _TESTING_ONLY_reset_container_count()
	_statefulContainerCount = 0
end

-- We keep a global flag to catch errors during the state persistence hydrating scenario.
-- The innermost navigator who catches the error will dispatch a new init action.

-- Roblox TODO: Roact does not have a second argument like React does when
-- calling `setState`, so this is commented as it is not used anywhere
-- local _reactNavigationIsHydratingState = false

-- Unfortunate to use global state here, but it seems necessesary for the time
-- being. There seems to be some problems with cascading componentDidCatch
-- handlers. Ideally the inner non-stateful navigator catches the error and
-- re-throws it, to be caught by the top-level stateful navigator.

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
										React.createElement(MyRNAppContainer, {
											externalDispatchConnector = connector,
										})
]]
local function createAppContainer(AppComponent, linkingProtocol)
	invariant(
		type(AppComponent) == "table" and AppComponent.router ~= nil,
		"AppComponent must be a navigator or a stateful Roact component with a 'router' field"
	)

	local containerName = string.format("NavigationContainer(%s)", tostring(AppComponent))
	local NavigationContainer = React.Component:extend(containerName)

	NavigationContainer.router = AppComponent.router

	function NavigationContainer.getDerivedStateFromProps(nextProps)
		validateProps(nextProps)
		return nil
	end

	function NavigationContainer:init()
		validateProps(self.props)

		self._actionEventSubscribers = {}
		self._initialAction = NavigationActions.init()

		-- Roblox deviation: we don't support the BackHandler connection directly
		-- like in upstream

		local initialNav = nil
		local containerIsStateful = self:_isStateful()
		if containerIsStateful and not self.props.loadNavigationState then
			initialNav = AppComponent.router.getStateForAction(self._initialAction)
		end

		self.state = {
			nav = initialNav,
		}
	end

	-- Roblox deviation: this function is used in the universal app to dispatch actions
	-- using the existing mechanism around Rodux thunks
	function NavigationContainer:_updateExternalDispatchConnector()
		if self._disconnectExternalDispatch then
			self._disconnectExternalDispatch()
			self._disconnectExternalDispatch = nil
		end

		local externalDispatchConnector = self.props.externalDispatchConnector
		if externalDispatchConnector ~= nil then
			self._disconnectExternalDispatch = externalDispatchConnector(function(...)
				if self._isMounted then
					return self:dispatch(...)
				end

				-- External dispatch while we're not mounted gets dropped on floor.
				return false
			end)
		end
	end

	function NavigationContainer:_renderLoading()
		return self.props.renderLoading and self.props.renderLoading()
	end

	function NavigationContainer:_isStateful()
		return isStateful(self.props)
	end

	function NavigationContainer:_handleOpenURL(args)
		local url = args.url
		local enableURLHandling = self.props.enableURLHandling
		local uriPrefix = self.props.uriPrefix

		if enableURLHandling == false then
			return
		end
		local parsedUrl = urlToPathAndParams(url, uriPrefix)
		if parsedUrl then
			local path = parsedUrl.path
			local params = parsedUrl.params
			local action = AppComponent.router.getActionForPathAndParams(path, params)
			if action then
				self:dispatch(action)
			end
		end
	end

	function NavigationContainer:_onNavigationStateChange(prevNav, nav, action)
		local onNavigationStateChange = self.props.onNavigationStateChange
		if onNavigationStateChange == nil and self:_isStateful() and _G.REACT_NAV_LOGGING then
			-- Roblox deviation: `console.group` is always defined
			console.group("Navigation Dispatch: ")
			console.log("Action: ", action)
			console.log("New State: ", nav)
			console.log("Last State: ", prevNav)
			console.groupEnd()
			return
		end

		if type(onNavigationStateChange) == "function" then
			onNavigationStateChange(prevNav, nav, action)
		end
	end

	function NavigationContainer:didUpdate(oldProps)
		-- Clear cached _navState every time we update.
		if self._navState == self.state.nav then
			self._navState = nil
		end

		-- Roblox deviation: this dispatch connector feature is used by the universal app
		-- to dispatch navigation actions externally.
		if self.props.externalDispatchConnector ~= oldProps.externalDispatchConnector then
			self:_updateExternalDispatchConnector()
		end
	end

	function NavigationContainer:didMount()
		self._isMounted = true

		-- Roblox deviation: external dispatch connector
		self:_updateExternalDispatchConnector()

		if not self:_isStateful() then
			return
		end

		if _G.__DEV__ and not self.props.detached then
			if _statefulContainerCount > 0 then
				console.warn(
					"You should only render one navigator explicitly in your app, and other"
						.. " navigators should be rendered by including them in that navigator."
						.. " Full details at: "
						.. "https://reactnavigation.org/docs/4.x/common-mistakes#explicitly-rendering-more-than-one-navigator"
				)
			end
		end
		_statefulContainerCount += 1

		-- Roblox deviation: url linking is not aligned on the native Linking in upstream,
		-- but similar enough so that the behavior does not deviate
		if linkingProtocol then
			linkingProtocol:listenForLuaURLs(function(url)
				self:_handleOpenURL({ url = url })
			end, false)
		end

		-- Pull out anything that can impact state
		local parsedUrl = nil
		local userProvidedStartupState = nil
		if self.props.enableURLHandling ~= false then
			local startupParams = self:getStartupParams()
			parsedUrl = startupParams.parsedUrl
			userProvidedStartupState = startupParams.userProvidedStartupState
		end

		-- Initialize state. This must be done *after* any async code
		-- so we don't end up with a different value for this.state.nav
		-- due to changes while async function was resolving
		local action = self._initialAction
		local startupState = self.state.nav

		if not startupState then
			startupState = AppComponent.router.getStateForAction(action)
		end

		-- Pull user-provided persisted state
		if userProvidedStartupState then
			startupState = userProvidedStartupState
			-- Roblox TODO: Roact does not have a second argument like React does when
			-- calling `setState`, so this is commented as it is not used anywhere
			-- _reactNavigationIsHydratingState = true
		end

		-- Pull state out of URL
		if parsedUrl then
			local path = parsedUrl.path
			local params = parsedUrl.params
			local urlAction = AppComponent.router.getActionForPathAndParams(path, params)
			if urlAction then
				-- Roblox deviation: environment based logging is not currently implemented
				action = urlAction
				startupState = AppComponent.router.getStateForAction(urlAction, startupState)
			end
		end

		local function dispatchAction()
			-- Roblox deviation: _actionEventSubscribers maps callback to true, e.g. a Set container
			for subscriber in self._actionEventSubscribers do
				-- ROBLOX performance? do we need to keep recreating the table in every loop iteration?
				subscriber({
					type = Events.Action,
					action = action,
					state = self.state.nav,
					lastState = nil,
				})
			end
		end

		if startupState == self.state.nav then
			-- ROBLOX TODO? pretty sure setState now takes the second param!
			-- Roblox TODO: Roact does not have a second argument to `setState` like React
			-- does, so instead we spawn the callback so that it does not run synchronously
			spawn(dispatchAction)
			return
		end

		self:setState({
			nav = startupState,
		}, dispatchAction)
	end

	function NavigationContainer:getStartupParams()
		local props = self.props
		local uriPrefix = props.uriPrefix
		local loadNavigationState = props.loadNavigationState
		local url = nil
		local loadedNavState = nil

		if linkingProtocol then
			pcall(function()
				-- ROBLOX note: this function is not implemented yet by the linking protocol
				url = linkingProtocol:getLastLuaURL()
			end)
		end
		if loadNavigationState then
			pcall(function()
				loadedNavState = loadNavigationState()
			end)
		end

		return {
			parsedUrl = url and urlToPathAndParams(url, uriPrefix),
			userProvidedStartupState = loadedNavState,
		}
	end

	-- Roblox TODO: use componentDidCatch lifecycle method in Roact 17
	-- ROBLOX performance: remove anon function closure creation
	function NavigationContainer:_persistNavigationState(nav)
		local persistNavigationState = self.props.persistNavigationState
		if persistNavigationState then
			local success, errorMessage = pcall(persistNavigationState, nav)

			if not success then
				warn(
					"Uncaught error while calling persistNavigationState()! "
						.. "You should handle exceptions thrown from persistNavigationState(), "
						.. "ignoring them may result in undefined behavior.\n"
						.. errorMessage
				)
			end
		end
	end

	function NavigationContainer:willUnmount()
		self._isMounted = false

		-- Roblox deviation: url linking is not aligned on the native Linking in upstream,
		-- but similar enough so that the behavior does not deviate
		-- Also, the current linking protocol allow only a single callback that listens
		-- to URL changes.
		if linkingProtocol then
			linkingProtocol:stopListeningForLuaURLs()
		end

		-- Roblox deviation: back button is not currently being connected by Roact Navigation

		-- Roblox deviation: clean up externalDispatchConnector if necessary
		if self._disconnectExternalDispatch then
			self._disconnectExternalDispatch()
			self._disconnectExternalDispatch = nil
		end

		if self:_isStateful() then
			_statefulContainerCount = _statefulContainerCount - 1
		end
	end

	-- Per-tick temporary storage for state.nav

	function NavigationContainer:dispatch(action)
		if self.props.navigation then
			return self.props.navigation.dispatch(action)
		end

		-- navState will have the most up-to-date value, because setState sometimes behaves asyncronously
		self._navState = self._navState or self.state.nav
		local lastNavState = self._navState
		invariant(lastNavState ~= nil, "should be set in constructor if stateful")

		local reducedState = AppComponent.router.getStateForAction(action, lastNavState)
		local navState = reducedState
		if reducedState == nil then
			navState = lastNavState
		end

		local function dispatchActionEvents()
			-- ROBLOX performance? do we need to recreate this  table every iteration through the loop?
			-- Roblox comment: _actionEventSubscribers is a Map<function, true>, e.g. a Set container
			for subscriber in self._actionEventSubscribers do
				subscriber({
					type = Events.Action,
					action = action,
					state = navState,
					lastState = lastNavState,
				})
			end
		end

		if reducedState == nil then
			-- The router will return null when action has been handled and the state hasn't changed.
			-- dispatch returns true when something has been handled.
			dispatchActionEvents()
			return true
		end

		if navState ~= lastNavState then
			-- Cache updates to state.nav during the tick to ensure that subsequent calls
			-- will not discard this change
			self._navState = navState

			self:setState({ nav = navState }, function()
				self:_onNavigationStateChange(lastNavState, navState, action)
				task.defer(dispatchActionEvents)
				self:_persistNavigationState(navState)
			end)

			return true
		end

		dispatchActionEvents()
		return false
	end

	-- Roblox deviation: additional functionality used in lua-apps
	function NavigationContainer:_getScreenProps(propKey, defaultValue)
		if propKey == nil then
			return self.props.screenProps
		end

		local screenProps = self.props.screenProps
		if screenProps == nil or screenProps[propKey] == nil then
			return defaultValue
		end

		return screenProps[propKey]
	end

	-- Roblox deviation: removed '_getTheme' method because there is no support for theme

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

		invariant(navigation ~= nil, "failed to get navigation")

		return React.createElement(NavigationContext.Provider, {
			value = navigation,
		}, {
			-- Provide navigation prop for top-level component so it doesn't have to connect.
			AppComponent = React.createElement(
				AppComponent,
				Object.assign(table.clone(self.props), {
					navigation = navigation,
				})
			),
		})
	end

	return NavigationContainer
end

return {
	createAppContainer = createAppContainer,
	_TESTING_ONLY_reset_container_count = _TESTING_ONLY_reset_container_count,
}
