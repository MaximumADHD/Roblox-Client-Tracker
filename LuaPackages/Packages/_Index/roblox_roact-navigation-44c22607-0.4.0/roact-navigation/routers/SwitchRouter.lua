-- upstream https://github.com/react-navigation/react-navigation/blob/62da341b672a83786b9c3a80c8a38f929964d7cc/packages/core/src/routers/SwitchRouter.js
local Root = script.Parent.Parent
local Packages = Root.Parent

local Cryo = require(Packages.Cryo)
local NavigationActions = require(Root.NavigationActions)
local BackBehavior = require(Root.BackBehavior)
local getScreenForRouteName = require(script.Parent.getScreenForRouteName)
local createConfigGetter = require(script.Parent.createConfigGetter)
local validateRouteConfigMap = require(script.Parent.validateRouteConfigMap)
local validateRouteConfigArray = require(script.Parent.validateRouteConfigArray)
local validate = require(Root.utils.validate)
local StackActions = require(Root.routers.StackActions)
local SwitchActions = require(script.Parent.SwitchActions)

local function defaultActionCreators()
	return {}
end

local function mapToRouteName(element)
	local routeName = next(element)
	return routeName
end

local function foldToRoutes(routes, element)
	local routeName, value = next(element)
	routes[routeName] = value
	return routes
end

return function(routeArray, config)
	validateRouteConfigArray(routeArray)
	config = config or {}
	local routeConfigs = validateRouteConfigMap(
		Cryo.List.foldLeft(routeArray, foldToRoutes, {})
	)

	-- Order is how we map the active index into the list of possible routes.
	-- Lua does not guarantee any sense of order of table keys in dictionaries, so
	-- we have to deviate from react-navigation SwitchRouter API. Instead of using a
	-- map for the routeConfigs, we wrap each key-value pair into its own table so that
	-- routeConfigs becomes an array (i.e. { { Foo = Screen }, { Bar = Screen } }).
	local order = config.order or Cryo.List.map(routeArray, mapToRouteName)

	local getCustomActionCreators = config.getCustomActionCreators or defaultActionCreators

	local initialRouteParams = config.initialRouteParams
	local initialRouteName = config.initialRouteName or order[1]
	local backBehavior = config.backBehavior or BackBehavior.None

	local resetOnBlur = true
	if config.resetOnBlur ~= nil then
		resetOnBlur = config.resetOnBlur
	end

	local initialRouteIndex = Cryo.List.find(order, initialRouteName)
	if initialRouteIndex == nil then
		local availableRouteNames = table.concat(
			Cryo.List.map(order, function(routeName)
				return ('"%s"'):format(routeName)
			end),
			", "
		)

		error(("Invalid initialRouteName '%s'. Should be one of %s"):format(
			initialRouteName,
			availableRouteNames
		), 2)
	end

	local childRouters = {}
	for _, routeName in ipairs(order) do
		childRouters[routeName] = false
		local screen = getScreenForRouteName(routeConfigs, routeName)
		if type(screen) == "table" and screen.router then
			childRouters[routeName] = screen.router
		end
	end

	local function getParamsForRoute(routeName, params)
		local routeConfig = routeConfigs[routeName]
		if type(routeConfig) == "table" and routeConfig.params then
			return Cryo.Dictionary.join(routeConfig.params, params or {})
		else
			return params
		end
	end

	local function resetChildRoute(routeName)
		local initialParams = routeName == initialRouteName and initialRouteParams or nil
		-- note(brentvatne): merging initialRouteParams *on top* of default params
		-- on the route seems incorrect but it's consistent with existing behavior
		-- in stackrouter
		local params = getParamsForRoute(routeName, initialParams)
		local childRouter = childRouters[routeName]
		if childRouter then
			local childAction = NavigationActions.init()
			return Cryo.Dictionary.join(childRouter.getStateForAction(childAction), {
				key = routeName,
				routeName = routeName,
				params = params,
			})
		end

		return {
			key = routeName,
			routeName = routeName,
			params = params,
		}
	end

	local function getNextState(action, prevState, possibleNextState)
		local nextState = possibleNextState

		if prevState and possibleNextState and
			prevState.index ~= possibleNextState.index and
			resetOnBlur
		then
			local prevRouteName = prevState.routes[prevState.index].routeName
			local nextRoutes = Cryo.List.join(possibleNextState.routes)
			nextRoutes[prevState.index] = resetChildRoute(prevRouteName)
			nextState = Cryo.Dictionary.join(
				possibleNextState,
				{ routes = nextRoutes }
			)
		end

		if backBehavior ~= BackBehavior.History or
			(prevState and nextState and nextState.index == prevState.index )
		then
			return nextState
		end

		local nextRouteKeyHistory = prevState and prevState.routeKeyHistory or {}

		if action.type == NavigationActions.Navigate then
			local keyToAdd = nextState.routes[nextState.index].key
			nextRouteKeyHistory = Cryo.List.filter(nextRouteKeyHistory, function(k)
				return k ~= keyToAdd
			end)
			table.insert(nextRouteKeyHistory, keyToAdd)

		elseif action.type == NavigationActions.Back then
			nextRouteKeyHistory = Cryo.List.removeIndex(nextRouteKeyHistory, #nextRouteKeyHistory)
		end

		return Cryo.Dictionary.join(
			nextState,
			{ routeKeyHistory = nextRouteKeyHistory }
		)
	end

	local function getInitialState()
		local routes = Cryo.List.map(order, resetChildRoute)
		local initialState = {
			routes = routes,
			index = initialRouteIndex,
		}

		if backBehavior == BackBehavior.History then
			local initialKey = routes[initialRouteIndex].key
			initialState.routeKeyHistory = { initialKey }
		end

		return initialState
	end

	local SwitchRouter = {
		childRouters = childRouters,
		getActionCreators = function(route, stateKey)
			return getCustomActionCreators(route, stateKey)
		end,
		getScreenOptions = createConfigGetter(routeConfigs, config.defaultNavigationOptions)
	}

	function SwitchRouter.getStateForAction(action, inputState)
		local prevState = inputState and Cryo.Dictionary.join(inputState) or nil
		local state = inputState or getInitialState()
		local activeChildIndex = state.index

		if action.type == NavigationActions.Init then
			-- TODO: React-Navigation has a comment that wonders why we merge params into child routes.
			-- Need to understand if we really want to do this.
			local params = action.params
			if params then
				state.routes = Cryo.List.map(state.routes, function(route)
					local initialParams = route.routeName == initialRouteName and initialRouteParams or {}
					return Cryo.Dictionary.join(route, {
						params = Cryo.Dictionary.join(route.params or {}, params, initialParams)
					})
				end)
			end
		end

		if action.type == SwitchActions.JumpTo and
			(action.key == nil or action.key == state.key)
		then
			local params = action.params
			local index = Cryo.List.findWhere(state.routes, function(route)
				return route.routeName == action.routeName
			end)

			if index == nil then
				error(
					("There is no route named '%s' in the navigator with the key '%s'.\n"):format(
						action.routeName,
						action.key
					) ..
					"Must be one of: " .. table.concat(
						Cryo.List.map(state.routes, function(route)
							return route.routeName
						end),
						","
					)
				)
			end

			local routes = state.routes
			if params then
				return state.routes.map(function(route, i)
					if i == index then
						return Cryo.Dictionary.join(route, {
							params = Cryo.Dictionary.join(route.params, params),
						})
					end

					return route
				end)
			end

			return getNextState(action, prevState, Cryo.Dictionary.join(state, {
				routes = routes,
				index = index,
			}))
		end

		-- Let the current child handle it
		local activeChildLastState = state.routes[state.index]
		local activeChildRouter = childRouters[order[state.index]]

		if activeChildRouter then
			local activeChildState = activeChildRouter.getStateForAction(
				action,
				activeChildLastState
			)
			if not activeChildState and inputState then
				return nil
			end
			if activeChildState and activeChildState ~= activeChildLastState then
				local routes = Cryo.List.join(state.routes)
				routes[state.index] = activeChildState
				return getNextState(action, prevState, Cryo.Dictionary.join(
					state,
					{ routes = routes }
				))
			end
		end

		-- Handle tab changing. Do this after letting the current tab try to
		-- handle the action, to allow inner children to change first
		local isBackEligible = action.key == nil or action.key == activeChildLastState.key

		if action.type == NavigationActions.Back then
			if isBackEligible and backBehavior == BackBehavior.InitialRoute then
				activeChildIndex = initialRouteIndex
			elseif isBackEligible and backBehavior == BackBehavior.Order then
				activeChildIndex = math.max(1, activeChildIndex - 1)
			-- The history contains current route, so we can only go back
			-- if there is more than one item in the history
			elseif isBackEligible and
				backBehavior == BackBehavior.History and
				#state.routeKeyHistory > 1
			then
				local routeKey = state.routeKeyHistory[#state.routeKeyHistory - 1]
				activeChildIndex = Cryo.List.find(order, routeKey)
			end
		end

		local didNavigate = false

		if action.type == NavigationActions.Navigate then
			didNavigate = nil ~= Cryo.List.findWhere(order, function(childId, i)
				if childId == action.routeName then
					activeChildIndex = i
					return true
				end
				return false
			end)

			if didNavigate then
				local childState = state.routes[activeChildIndex]
				local childRouter = childRouters[action.routeName]
				local newChildState = childState

				if action.action and childRouter then
					local childStateUpdate = childRouter.getStateForAction(
						action.action,
						childState
					)
					if childStateUpdate then
						newChildState = childStateUpdate
					end
				end

				if action.params then
					newChildState = Cryo.Dictionary.join(newChildState, {
						params = Cryo.Dictionary.join(
							newChildState.params or {},
							action.params
						),
					})
				end

				if newChildState ~= childState then
					local routes = Cryo.List.join(state.routes)
					routes[activeChildIndex] = newChildState
					local nextState = Cryo.Dictionary.join(state, {
						routes = routes,
						index = activeChildIndex,
					})
					return getNextState(action, prevState, nextState)

				elseif newChildState == childState and
					state.index == activeChildIndex and
					prevState
				then
					return nil
				end
			end
		end

		if action.type == NavigationActions.SetParams then
			local key = action.key
			local lastRouteIndex = Cryo.List.findWhere(state.routes, function(route)
				return route.key == key
			end)

			if lastRouteIndex ~= nil then
				local lastRoute = state.routes[lastRouteIndex]
				local params = Cryo.Dictionary.join(lastRoute.params or {}, action.params)
				local routes = Cryo.List.join(state.routes)

				routes[lastRouteIndex] = Cryo.Dictionary.join(
					lastRoute,
					{ params = params }
				)

				return getNextState(action, prevState, Cryo.Dictionary.join(
					state,
					{ routes = routes })
				)
			end
		end

		if activeChildIndex ~= state.index then
			return getNextState(action, prevState, Cryo.Dictionary.join(
				state,
				{ index = activeChildIndex })
			)
		elseif didNavigate and not inputState then
			return state
		elseif didNavigate then
			return Cryo.List.join(state)
		end


		local isActionBackOrPop = action.type == NavigationActions.Back or
			action.type == StackActions.Pop or action.type == StackActions.PopToTop
		local sendActionToInactiveChildren = not isActionBackOrPop or
			(action.type == NavigationActions.Back and action.key ~= nil)

		-- Let other children handle it and switch to the first child that returns a new state
		-- Do not do this for StackActions.Pop or NavigationActions.Back actions without a key:
		-- it would be unintuitive for these actions to switch to another tab just because that tab had a Stack that could accept a back action
		if sendActionToInactiveChildren then
			local index = state.index
			local routes = state.routes
			Cryo.List.findWhere(order, function(childId, i)
				local childRouter = childRouters[childId]
				if i == index then
					return false
				end

				local childState = routes[i]
				if childRouter then
					childState = childRouter.getStateForAction(action, childState)
				end

				if not childState then
					index = i
					return true
				end

				if childState ~= routes[i] then
					routes = Cryo.List.join(routes)
					routes[i] = childState
					index = i
					return true
				end

				return false
			end)

			-- Nested routers can be updated after switching children with actions such as SetParams
			-- and CompleteTransition.
			if action.preserveFocus then
				index = state.index
			end

			if index ~= state.index or routes ~= state.routes then
				return getNextState(action, prevState, Cryo.Dictionary.join(state, {
					index = index,
					routes = routes,
				}))
			end
		end

		return state
	end

	function SwitchRouter.getComponentForState(state)
		local activeRoute = state.routes[state.index] or {}
		local routeName = activeRoute.routeName
		validate(routeName, "There is no route defined for index '%d'. " ..
			"Check that you passed in a navigation state with a " ..
			"valid tab/screen index.", state.index)

		local childRouter = childRouters[routeName]

		if childRouter then
			return childRouter.getComponentForState(state.routes[state.index])
		end

		return getScreenForRouteName(routeConfigs, routeName)
	end

	function SwitchRouter.getComponentForRouteName(routeName)
		return getScreenForRouteName(routeConfigs, routeName)
	end

	-- TODO: Implement SwitchRouter.getPathAndParamsForState after we add path expression support
	-- TODO: Implement SwitchRouter.getActionForPathAndParams after we add path expression support

	return SwitchRouter
end
