local Cryo = require(script.Parent.Parent.Parent.Cryo)
local NavigationActions = require(script.Parent.Parent.NavigationActions)
local BackBehavior = require(script.Parent.Parent.BackBehavior)
local getScreenForRouteName = require(script.Parent.getScreenForRouteName)
local createConfigGetter = require(script.Parent.createConfigGetter)
local validateRouteConfigMap = require(script.Parent.validateRouteConfigMap)
local validate = require(script.Parent.Parent.utils.validate)

local defaultActionCreators = function() return {} end

-- Until Cryo has a List function to do this, provide shallow copy+replace index
local function immutableReplaceListIndex(list, index, value)
	local result = {}
	for i, ival in ipairs(list) do
		result[i] = ival
	end

	result[index] = value
	return result
end

local function childrenUpdateWithoutSwitchingIndex(actionType)
	return actionType == NavigationActions.SetParams or
		actionType == NavigationActions.CompleteTransition
end

local function collectChildRouters(routeConfigs)
	local childRouters = {}
	for routeName, _ in pairs(routeConfigs) do
		local screen = getScreenForRouteName(routeConfigs, routeName)
		if type(screen) == "table" and screen.router then
			childRouters[routeName] = screen.router
		end
	end

	return childRouters
end

local function getParamsForRoute(routeConfigs, routeName, initialParams)
	local routeConfig = routeConfigs[routeName]
	if type(routeConfig) == "table" and routeConfig.params then
		return Cryo.Dictionary.join(routeConfig.params, initialParams)
	else
		return initialParams
	end
end


return function(config)
	validate(type(config) == "table", "config must be a table")

	local routeConfigs = validateRouteConfigMap(config.routes)

	-- Order is how we map the active index into the list of possible routes.
	-- Lua does not guarantee any sense of order of table keys in dictionaries, so
	-- we have to require the initialRouteName parameter instead defaulting to the
	-- first route in the map.
	local order = config.order or Cryo.Dictionary.keys(routeConfigs)

	local getCustomActionCreators = config.getCustomActionCreators or defaultActionCreators
	local initialRouteParams = config.initialRouteParams or {}

	local initialRouteName = validate(config.initialRouteName,
		"initialRouteName must be provided")

	local backBehavior = config.backBehavior or BackBehavior.None
	local backShouldNavigateToInitialRoute = backBehavior == BackBehavior.InitialRoute

	local resetOnBlur = true
	if type(config.resetOnBlur) == "boolean" then
		resetOnBlur = config.resetOnBlur
	end

	local initialRouteIndex = Cryo.List.find(order, initialRouteName)
	if initialRouteIndex == nil then
		local availableRouteStr = ""
		for _, name in ipairs(order) do
			availableRouteStr = availableRouteStr .. name .. ","
		end

		error(string.format("Invalid initialRouteName '%s'. Must be one of [%s]", initialRouteName, availableRouteStr), 2)
	end

	local childRouters = collectChildRouters(routeConfigs)

	local function resetChildRoute(routeName)
		-- TODO: Do we want to merge initialRouteParams on TOP of route-specific params?
		-- There is a comment in RoactNavigation that this is incorrect behavior, but they
		-- do it to be consistent with their StackRouter. Do we even need this feature?
		local initialParams = routeName == initialRouteName and initialRouteParams or {}
		local params = getParamsForRoute(routeConfigs, routeName, initialParams)
		local childRouter = childRouters[routeName]
		if childRouter then
			local childAction = NavigationActions.init()
			return Cryo.Dictionary.join(childRouter.getStateForAction(childAction), {
				key = routeName,
				routeName = routeName,
				params = params,
			})
		else
			return {
				key = routeName,
				routeName = routeName,
				params = params,
			}
		end
	end

	local function getNextState(prevState, possibleNextState)
		if not prevState then
			return possibleNextState
		end

		if prevState.index ~= possibleNextState.index and resetOnBlur then
			local prevRouteName = prevState.routes[prevState.index].routeName
			local nextRoutes = immutableReplaceListIndex(
				possibleNextState.routes,
				prevState.index,
				resetChildRoute(prevRouteName))

			return Cryo.Dictionary.join(possibleNextState, {
				routes = nextRoutes,
			})
		else
			return possibleNextState
		end
	end

	local function getInitialState()
		return {
			routes = Cryo.List.map(order, resetChildRoute),
			index = initialRouteIndex,
			isTransitioning = false,
		}
	end

	local SwitchRouter = {
		childRouters = childRouters,
		getScreenOptions = createConfigGetter(routeConfigs, config.defaultNavigationOptions)
	}

	function SwitchRouter.getActionCreators(route, stateKey)
		return getCustomActionCreators(route, stateKey)
	end

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
						params = Cryo.Dictionary.join(route.params, params, initialParams)
					})
				end)
			end
		end

		-- Let the active child try to handle the action first.
		local activeChildLastState = state.routes[state.index]
		local activeChildRouter = childRouters[order[state.index]]
		if activeChildRouter then
			local activeChildState = activeChildRouter.getStateForAction(action, activeChildLastState)
			if not activeChildState and inputState then
				-- Child ran into error with known inputState. Propagate to caller.
				return nil
			end

			if activeChildState and activeChildState ~= activeChildLastState then
				local routes = immutableReplaceListIndex(state.routes, state.index, activeChildState)
				return getNextState(prevState, Cryo.Dictionary.join(state, {
					routes = routes
				}))
			end
		end

		-- Child did not handle it, so try to process the action ourselves.
		local isBackEligible = not action.key or action.key == activeChildLastState.key
		if action.type == NavigationActions.Back then
			if isBackEligible and backShouldNavigateToInitialRoute then
				activeChildIndex = initialRouteIndex
			else
				return state
			end
		end

		local didNavigate = false
		if action.type == NavigationActions.Navigate then
			for index, childId in ipairs(order) do
				if childId == action.routeName then
					activeChildIndex = index
					didNavigate = true
					break
				end
			end

			if didNavigate then
				local childState = state.routes[activeChildIndex]
				local childRouter = childRouters[action.routeName]
				local newChildState = childState

				if action.action and childRouter then
					local childStateUpdate = childRouter.getStateForAction(action.action, childState)
					if childStateUpdate then
						newChildState = childStateUpdate
					end
				end

				if action.params then
					newChildState = Cryo.Dictionary.join(newChildState, {
						params = Cryo.Dictionary.join(newChildState.params or {}, action.params)
					})
				end

				if newChildState ~= childState then
					local routes = immutableReplaceListIndex(state.routes, activeChildIndex, newChildState)
					local nextState = Cryo.Dictionary.join(state, {
						routes = routes,
						index = activeChildIndex,
					})

					return getNextState(prevState, nextState)
				elseif newChildState == childState and state.index == activeChildIndex and prevState then
					return nil
				end
			end
		end

		if action.type == NavigationActions.SetParams then
			local key = action.key
			local lastIndex, lastRoute
			for index, route in ipairs(state.routes) do
				if route.key == key then
					lastIndex = index
					lastRoute = route
					break
				end
			end

			if lastRoute then
				local params = Cryo.Dictionary.join(lastRoute.params or {}, action.params)
				local mergedRoute = Cryo.Dictionary.join(lastRoute, {
					params = params
				})

				local routes = immutableReplaceListIndex(state.routes, lastIndex, mergedRoute)
				return getNextState(prevState, Cryo.Dictionary.join(state, {
					routes = routes
				}))
			end
		end

		if activeChildIndex ~= state.index then
			return getNextState(prevState, Cryo.Dictionary.join(state, { index = activeChildIndex }))
		elseif didNavigate and not inputState then
			return state
		elseif didNavigate then
			return Cryo.Dictionary.join(state)
		end

		-- Let other children handle it and switch to first child that returns a new state
		local index = state.index
		local routes = state.routes

		for i, childId in ipairs(order) do
			if i ~= index then
				local childRouter = childRouters[childId]
				local childState = routes[i]
				if childRouter then
					childState = childRouter.getStateForAction(action, childState)
				end

				if not childState then
					index = i
					break
				end

				if childState ~= routes[i] then
					routes = immutableReplaceListIndex(routes, i, childState)
					index = i
					break
				end
			end
		end

		-- Nested routers can be updated after switching children with actions such as SetParams
		-- and CompleteTransition
		if childrenUpdateWithoutSwitchingIndex(action.type) then
			index = state.index
		end

		if index ~= state.index or routes ~= state.routes then
			return getNextState(prevState, Cryo.Dictionary.join(state, {
				index = index,
				routes = routes,
			}))
		end

		return state
	end

	function SwitchRouter.getComponentForState(state)
		local activeRoute = state.routes[state.index] or {}
		local routeName = activeRoute.routeName
		validate(routeName, "There is no route defined for index '%d'. " ..
			"Make sure that you passed in a navigation state with a " ..
			"valid tab/screen index.", state.index)

		local childRouter = childRouters[routeName]
		if childRouter then
			return childRouter.getComponentForState(state.routes[state.index])
		else
			return getScreenForRouteName(routeConfigs, routeName)
		end
	end

	function SwitchRouter.getComponentForRouteName(routeName)
		return getScreenForRouteName(routeConfigs, routeName)
	end

	-- TODO: Implement SwitchRouter.getPathAndParamsForState after we add path expression support
	-- TODO: Implement SwitchRouter.getActionForPathAndParams after we add path expression support

	return SwitchRouter
end
