-- upstream https://github.com/react-navigation/react-navigation/blob/6390aacd07fd647d925dfec842a766c8aad5272f/packages/core/src/routers/StackRouter.js

local root = script.Parent.Parent
local Packages = root.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object

local NavigationActions = require(root.NavigationActions)
local StackActions = require(script.Parent.StackActions)
local KeyGenerator = require(root.utils.KeyGenerator)
local StateUtils = require(root.StateUtils)
local getScreenForRouteName = require(script.Parent.getScreenForRouteName)
local createConfigGetter = require(script.Parent.createConfigGetter)
local validateRouteConfigArray = require(script.Parent.validateRouteConfigArray)
local validateRouteConfigMap = require(script.Parent.validateRouteConfigMap)
local invariant = require(root.utils.invariant)
local pathUtils = require(script.Parent.pathUtils)
local createPathParser = pathUtils.createPathParser

local STACK_ROUTER_ROOT_KEY = "StackRouterRoot"
-- This symbol is used to differentiate if a router has a child router
-- or if is a regular Roact component. React-navigation does it by using
-- undefined vs. null, so we use this symbol to represent the `null` routers.
local CHILD_IS_SCREEN = require(script.Parent["ChildIsScreenRouterSymbol.roblox"])

local defaultActionCreators = function()
	return {}
end

local function behavesLikePushAction(action)
	return action.type == NavigationActions.Navigate or action.type == StackActions.Push
end

local function isResetToRootStack(action)
	return action.type == StackActions.Reset and action.key == nil
end

local function mapToRouteName(element)
	local routeName = next(element)
	return routeName
end

local function foldToRoutes(routes, element, _index)
	local routeName, value = next(element)
	routes[routeName] = value
	return routes
end

return function(routeArray, config)
	validateRouteConfigArray(routeArray)
	config = config or {}
	local routeConfigs = validateRouteConfigMap(Array.reduce(routeArray, foldToRoutes, {}))

	local routeNames = config.order or Array.map(routeArray, mapToRouteName)

	-- Loop through routes and find child routers
	local childRouters = {}
	for _, routeName in routeNames do
		-- We're not using `getScreenForRouteName` here to preserve the lazy loading
		-- behaviour of routes. This means that routes with child routers must be
		-- defined using a component directly or with an object with a screen prop.
		local routeConfig = routeConfigs[routeName]
		local screen = if type(routeConfig) == "table" and routeConfig.screen then routeConfig.screen else routeConfig
		if type(screen) == "table" and screen.router then
			-- If it has a router it's a navigator.
			childRouters[routeName] = screen.router
		else
			-- TODO: This is a hack to make this code behave like React-Navigation's usage of
			-- null and undefined values for childRouters. We should come up with a better approach.
			childRouters[routeName] = CHILD_IS_SCREEN
		end
	end

	local initialRouteParams = config.initialRouteParams
	local getCustomActionCreators = config.getCustomActionCreators or defaultActionCreators

	local initialRouteName = config.initialRouteName or routeNames[1]

	local initialChildRouter = childRouters[initialRouteName]

	local initialRouteIndex = Array.indexOf(routeNames, initialRouteName)
	-- dump an error if initialRouteName is not in routes.
	if initialRouteIndex < 1 then
		local availableRouteStr = ""
		for _, name in routeNames do
			availableRouteStr = availableRouteStr .. name .. ","
		end

		error(
			string.format("Invalid initialRouteName '%s'. Must be one of [%s]", initialRouteName, availableRouteStr),
			2
		)
	end

	local function getInitialState(action)
		local route = {} :: any
		local childRouter = childRouters[action.routeName]

		-- This is a push-like action, and childRouter will be a router or null
		-- if we are responsible for this routeName
		if behavesLikePushAction(action) and childRouter ~= nil then
			local childState = {}

			-- The router is 'CHILD_IS_SCREEN' for normal leaf routes
			if childRouter ~= CHILD_IS_SCREEN then
				local childAction = action.action or NavigationActions.init({ params = action.params })
				childState = childRouter.getStateForAction(childAction)
			end

			return {
				key = STACK_ROUTER_ROOT_KEY,
				isTransitioning = false,
				index = 1,
				routes = {
					Object.assign({ params = action.params }, childState, {
						key = action.key or KeyGenerator.generateKey(),
						routeName = action.routeName,
					}),
				},
			}
		end

		-- we need to check if initialChildRouter is not CHILD_IS_SCREEN because
		-- of the divergence with react-navigation.
		if initialChildRouter ~= nil and initialChildRouter ~= CHILD_IS_SCREEN then
			route = initialChildRouter.getStateForAction(NavigationActions.navigate({
				routeName = initialRouteName,
				params = initialRouteParams,
			}))
		end

		local initialRouteConfig = routeConfigs[initialRouteName]
		-- we need to check if the routeConfig is a table because functions can't be
		-- indexed in Lua.
		local initialRouteConfigParams = type(initialRouteConfig) == "table" and initialRouteConfig.params

		local params = (initialRouteConfigParams or route.params or action.params or initialRouteParams)
			and Object.assign(
				if initialRouteConfigParams then table.clone(initialRouteConfigParams) else {}, -- params set in routes table!
				route.params or {},
				action.params or {},
				initialRouteParams or {} -- params provided at top level
			)

		local initialRouteKey = config.initialRouteKey
		route = Object.assign(table.clone(route), {
			params = params,
			routeName = initialRouteName,
			key = action.key or initialRouteKey or KeyGenerator.generateKey(),
		})

		return {
			key = STACK_ROUTER_ROOT_KEY,
			isTransitioning = false,
			index = 1,
			routes = { route },
		}
	end

	local function getParamsForRouteAndAction(routeName, action)
		if action.params == Object.None then
			return nil
		end

		local routeConfig = routeConfigs[routeName]
		-- we need to check if the routeConfig is a table because functions can't be
		-- indexed in Lua.
		if type(routeConfig) == "table" and routeConfig.params then
			return Object.assign(table.clone(routeConfig.params), action.params)
		else
			if action.params then
				-- Use empty join to process None keys
				return Object.assign({}, action.params)
			else
				return nil
			end
		end
	end

	local pathParser = createPathParser(childRouters, routeConfigs, config)
	local getPathAndParamsForRoute = pathParser.getPathAndParamsForRoute
	local getActionForPathAndParams = pathParser.getActionForPathAndParams

	-- Strip out the CHILD_IS_SCREEN hacked elements before exposing publicly.
	local strippedChildRouters = {}
	for routerName, router in childRouters do
		if router ~= CHILD_IS_SCREEN then
			strippedChildRouters[routerName] = router
		end
	end

	local StackRouter = {
		childRouters = strippedChildRouters,
		_CHILD_IS_SCREEN = CHILD_IS_SCREEN, -- expose symbol for testing purposes
	}

	function StackRouter.getComponentForState(state)
		local activeChildRoute = state.routes[state.index] or {}
		local routeName = activeChildRoute.routeName
		invariant(
			routeName,
			"There is no route defined for index '%d'. "
				.. "Make sure that you passed in a navigation state with a "
				.. "valid stack index.",
			state.index
		)

		local childRouter = childRouters[routeName]
		-- we need to check if initialChildRouter is not CHILD_IS_SCREEN because
		-- of the divergence with react-navigation.
		if childRouter ~= nil and childRouter ~= CHILD_IS_SCREEN then
			return childRouters[routeName].getComponentForState(activeChildRoute)
		end

		return getScreenForRouteName(routeConfigs, routeName)
	end

	function StackRouter.getComponentForRouteName(routeName)
		return getScreenForRouteName(routeConfigs, routeName)
	end

	function StackRouter.getActionCreators(route, navStateKey)
		return Object.assign(table.clone(getCustomActionCreators(route, navStateKey)), {
			pop = function(n, params)
				return StackActions.pop(Object.assign({ n = n }, params or {}))
			end,
			popToTop = function(params)
				return StackActions.popToTop(params)
			end,
			push = function(routeName, params, action)
				return StackActions.push({
					routeName = routeName,
					params = params,
					action = action,
				})
			end,
			replace = function(replaceWith, params, action, newKey)
				if type(replaceWith) == "string" then
					return StackActions.replace({
						routeName = replaceWith,
						params = params,
						action = action,
						key = route.key,
						newKey = newKey,
					})
				end

				invariant(type(replaceWith) == "table", "replaceWith must be a table or string")
				invariant(params == nil, "params must not be provided to .replace() when specifying a table")
				invariant(action == nil, "Child action must not be provided to .replace() when specifying a table")
				invariant(newKey == nil, "newKey must not be provided to .replace() when specifying a table")

				return StackActions.replace(replaceWith)
			end,
			reset = function(actions, index)
				local resetIndex = index
				if index == nil then
					resetIndex = #actions
				end

				return StackActions.reset({
					actions = actions,
					index = resetIndex,
					key = navStateKey,
				})
			end,
			dismiss = function()
				return NavigationActions.back({
					key = navStateKey,
				})
			end,
		})
	end

	function StackRouter.getStateForAction(action, state)
		-- Set up initial state if needed
		if not state then
			return getInitialState(action)
		end

		local activeChildRoute = state.routes[state.index]

		if not isResetToRootStack(action) and action.type ~= NavigationActions.Navigate then
			-- Let the active child router handle the action
			local activeChildRouter = childRouters[activeChildRoute.routeName]
			if activeChildRouter ~= nil and activeChildRouter ~= CHILD_IS_SCREEN then
				local route = activeChildRouter.getStateForAction(action, activeChildRoute)
				if route ~= nil and route ~= activeChildRoute then
					return StateUtils.replaceAt(
						state,
						activeChildRoute.key,
						route,
						-- the following tells replaceAt to NOT change the index to this
						-- route for the setParam action, because people don't expect
						-- param-setting actions to switch the active route
						action.type == NavigationActions.SetParams
					)
				end
			end
		elseif action.type == NavigationActions.Navigate then
			-- Traverse routes from the top of the stack to the bottom, so the
			-- active route has the first opportunity, then the one before it, etc.
			for i = #state.routes, 1, -1 do
				local childRoute = state.routes[i]
				local childRouter = childRouters[childRoute.routeName]
				local childAction = action
				if action.routeName == childRoute.routeName and action.action then
					childAction = action.action
				end

				-- we need to check if initialChildRouter is not CHILD_IS_SCREEN because
				-- of the divergence with react-navigation.
				if childRouter ~= nil and childRouter ~= CHILD_IS_SCREEN then
					local nextRouteState = childRouter.getStateForAction(childAction, childRoute)
					if nextRouteState == nil or nextRouteState ~= childRoute then
						local newState = StateUtils.replaceAndPrune(
							state,
							if nextRouteState then nextRouteState.key else childRoute.key,
							if nextRouteState then nextRouteState else childRoute
						)

						local newTransitioning = state.isTransitioning
						if state.index ~= newState.index then
							newTransitioning = action.immediate ~= true
						end

						return Object.assign(table.clone(newState), {
							isTransitioning = newTransitioning,
						})
					end
				end
			end
		end

		-- Handle push and navigation actions. This must happen after focused child router
		-- has had its chance to handle the action.
		-- If a router equals `nil` it means that it is not a childRouter or a screen.
		if behavesLikePushAction(action) and childRouters[action.routeName] ~= nil then
			local childRouter = childRouters[action.routeName]
			invariant(
				action.type ~= StackActions.Push or action.key == nil,
				"StackRouter does not support key on the push action"
			)

			-- Before pushing a new route we first try to find one in the existing route stack
			-- More information on this: https://github.com/react-navigation/rfcs/blob/master/text/0004-less-pushy-navigate.md
			local findRoute = function(route)
				return route.routeName == action.routeName
			end
			if action.key then
				findRoute = function(route)
					return route.key == action.key
				end
			end
			local lastRouteIndex = Array.findIndex(state.routes, findRoute)

			-- An instance of this route exists already and we're dealing with a navigate action.
			if action.type ~= StackActions.Push and lastRouteIndex > 0 then
				-- If index is unchanged and params are not being set, leave state identity intact
				if state.index == lastRouteIndex and not action.params then
					return nil
				end

				-- Remove the now unused routes at the tail of the routes array
				local routes = Array.slice(state.routes, 1, lastRouteIndex + 1)

				-- Apply params if provided, otherwise leave route identity intact
				if action.params then
					local route = state.routes[lastRouteIndex]
					routes[lastRouteIndex] = Object.assign(table.clone(route), {
						params = if action.params == Object.None
							then Object.None
							elseif not route.params then table.clone(action.params)
							else Object.assign(table.clone(route.params), action.params),
					})
				end

				-- Return state with new index, changing isTransitioning only if index has changed
				local newIsTransitioning = state.isTransitioning
				if state.index ~= lastRouteIndex then
					newIsTransitioning = action.immediate ~= true
				end

				return Object.assign(table.clone(state), {
					isTransitioning = newIsTransitioning,
					index = lastRouteIndex,
					routes = routes,
				})
			end

			local route
			if childRouter ~= CHILD_IS_SCREEN then
				-- Delegate to the child router with the given action, or init it
				local childAction = action.action
					or NavigationActions.init({
						params = getParamsForRouteAndAction(action.routeName, action),
					})

				route = Object.assign(
					{
						-- does it make sense to wipe out the params here? or even to
						-- add params at all? need more info about what this solves
						params = getParamsForRouteAndAction(action.routeName, action),
					},
					childRouter.getStateForAction(childAction),
					{
						routeName = action.routeName,
						key = action.key or KeyGenerator.generateKey(),
					}
				)
			else
				-- Create the route from scratch
				route = {
					params = getParamsForRouteAndAction(action.routeName, action),
					routeName = action.routeName,
					key = action.key or KeyGenerator.generateKey(),
				}
			end

			return Object.assign(StateUtils.push(state, route), {
				isTransitioning = action.immediate ~= true,
			})
		elseif action.type == StackActions.Push and childRouters[action.routeName] == nil then
			-- Return the state identity to bubble the action up
			return state
		end

		-- Handle navigation to other child routers that are not yet pushed
		if behavesLikePushAction(action) then
			for childRouterName in childRouters do
				local childRouter = childRouters[childRouterName]

				-- we need to check if initialChildRouter is not CHILD_IS_SCREEN because
				-- of the divergence with react-navigation.
				if childRouter ~= nil and childRouter ~= CHILD_IS_SCREEN then
					-- For each child router, start with a blank state
					local initChildRoute = childRouter.getStateForAction(NavigationActions.init())

					-- Then check to see if the router handles our navigate action
					local navigatedChildRoute = childRouter.getStateForAction(action, initChildRoute)

					local routeToPush = nil
					if navigatedChildRoute == nil then
						-- Push the route if the router has 'handled' the action and returned null
						routeToPush = initChildRoute
					elseif navigatedChildRoute ~= initChildRoute then
						-- Push the route if the state has changed in response to this navigation
						routeToPush = navigatedChildRoute
					end

					if routeToPush then
						local route = Object.assign(table.clone(routeToPush), {
							routeName = childRouterName,
							key = action.key or KeyGenerator.generateKey(),
						})

						return Object.assign(StateUtils.push(state, route), {
							isTransitioning = action.immediate ~= true,
						})
					end
				end
			end
		end

		-- Handle pop-to-top behavior. Make sure this happens after children have had a
		-- chance to handle the action, so that the inner stack pops to top first.
		if action.type == StackActions.PopToTop then
			-- Refuse to handle pop to top if a key is given that does not correspond
			-- to this router
			if action.key and state.key ~= action.key then
				return state
			end

			-- If we're already at the top, then we return the state with a new
			-- identity so that the action is handled by this router.
			if state.index > 1 then
				return Object.assign(table.clone(state), {
					isTransitioning = action.immediate ~= true,
					index = 1,
					routes = { state.routes[1] },
				})
			end

			return state
		end

		if action.type == StackActions.Replace then
			local routeIndex = nil -- luacheck: ignore routeIndex

			-- If the key param is undefined, set the index to the last route in the stack
			if action.key == nil and #state.routes > 0 then
				routeIndex = #state.routes
			else
				routeIndex = Array.findIndex(state.routes, function(route)
					return route.key == action.key
				end)
			end

			if routeIndex > 0 then
				local childRouter = childRouters[action.routeName]
				local childState = {}

				-- we need to check if initialChildRouter is not CHILD_IS_SCREEN because
				-- of the divergence with react-navigation.
				if childRouter ~= nil and childRouter ~= CHILD_IS_SCREEN then
					local childAction = action.action
						or NavigationActions.init({
							params = getParamsForRouteAndAction(action.routeName, action),
						})

					childState = childRouter.getStateForAction(childAction)
				end

				local routes = table.clone(state.routes)
				routes[routeIndex] = Object.assign(
					{
						params = getParamsForRouteAndAction(action.routeName, action),
					},
					childState,
					{
						routeName = action.routeName,
						key = action.newKey or KeyGenerator.generateKey(),
					}
				)

				return Object.assign(table.clone(state), { routes = routes })
			end
		end

		if
			action.type == StackActions.CompleteTransition
			and (action.key == nil or action.key == state.key)
			and action.toChildKey == state.routes[state.index].key
			and state.isTransitioning
		then
			return Object.assign(table.clone(state), {
				isTransitioning = false,
			})
		end

		if action.type == NavigationActions.SetParams then
			local key = action.key
			local lastRouteIndex = Array.findIndex(state.routes, function(route)
				return route.key == key
			end)

			if lastRouteIndex > 0 then
				local lastRoute = state.routes[lastRouteIndex]
				-- ROBLOX deviation: accept RoactNavigation.None for params to allow resetting all params
				local params = Object.None
				if action.params ~= Object.None then
					params = if lastRoute.params and action.params
						then Object.assign(table.clone(lastRoute.params), action.params)
						elseif lastRoute.params then table.clone(lastRoute.params)
						elseif action.params then table.clone(action.params)
						else {}
				end
				local routes = table.clone(state.routes)
				routes[lastRouteIndex] = Object.assign(table.clone(lastRoute), { params = params })

				return Object.assign(table.clone(state), {
					routes = routes,
				})
			end
		end

		if action.type == StackActions.Reset then
			-- Only handle reset actions that are unspecified or match this state key
			if action.key ~= nil and action.key ~= state.key then
				return state
			end

			local newRoutes = if action.actions
				then Array.map(action.actions, function(newStackAction)
					local router = childRouters[newStackAction.routeName]

					local childState = {}
					-- we need to check if initialChildRouter is not CHILD_IS_SCREEN because
					-- of the divergence with react-navigation.
					if router ~= nil and router ~= CHILD_IS_SCREEN then
						local childAction = newStackAction.action
							or NavigationActions.init({
								params = getParamsForRouteAndAction(newStackAction.routeName, newStackAction),
							})

						childState = router.getStateForAction(childAction)
					end

					return Object.assign(
						{
							params = getParamsForRouteAndAction(newStackAction.routeName, newStackAction),
						},
						childState,
						{
							routeName = newStackAction.routeName,
							key = newStackAction.key or KeyGenerator.generateKey(),
						}
					)
				end)
				else {}

			return Object.assign(table.clone(state), {
				routes = newRoutes,
				index = action.index,
			})
		end

		if action.type == NavigationActions.Back or action.type == StackActions.Pop then
			local key = action.key
			local n = action.n
			local immediate = action.immediate
			local prune = action.prune

			if action.type == StackActions.Pop and prune == false and key then
				local index = Array.findIndex(state.routes, function(route)
					return route.key == key
				end)

				if index > 0 then
					local count = math.max(index - (n or 1), 1)
					local routes =
						Array.concat(Array.slice(state.routes, 1, count + 1), Array.slice(state.routes, index + 1))

					if #routes > 0 then
						return Object.assign(table.clone(state), {
							routes = routes,
							index = #routes,
							isTransitioning = immediate ~= true,
						})
					end
				end
			else
				local backRouteIndex = state.index

				if action.type == StackActions.Pop and n ~= nil then
					-- determine the index to go back *from*. In this case, n=1 means to go
					-- back from state.index, as if it were a normal "BACK" action
					backRouteIndex = math.max(2, state.index - n + 1)
				elseif key then
					backRouteIndex = Array.findIndex(state.routes, function(route)
						return route.key == key
					end)
				end

				if backRouteIndex > 1 then
					return Object.assign(table.clone(state), {
						routes = Array.slice(state.routes, 1, backRouteIndex),
						index = backRouteIndex - 1,
						isTransitioning = immediate ~= true,
					})
				end
			end
		end

		-- By this point in the router's state handling logic, we have handled the behavior
		-- of the active route, and handled any stack actions. If we haven't returned by
		-- now, we should allow non-active child routers to handle this action, and switch
		-- to that index if the child state (route) does change..

		local keyIndex = if action.key then StateUtils.indexOf(state, action.key) else nil

		-- Traverse routes from the top of the stack to the bottom, so the
		-- active route has the first opportunity, then the one before it, etc.
		for i = #state.routes, 1, -1 do
			local childRoute = state.routes[i]
			-- skip over the active child because we let it attempt to handle the action
			-- earlier.
			-- If a key is provided and in routes state then let's use that
			-- knowledge to skip extra getStateForAction calls on other child
			-- routers
			if (childRoute.key ~= activeChildRoute.key) and (keyIndex == 1 or childRoute.key == action.key) then
				local childRouter = childRouters[childRoute.routeName]
				if childRouter ~= nil and childRouter ~= CHILD_IS_SCREEN then
					local route = childRouter.getStateForAction(action, childRoute)

					if route == nil then
						return state
					elseif route ~= childRoute then
						return StateUtils.replaceAt(
							state,
							childRoute.key,
							route,
							-- People don't expect these actions to switch the active route
							action.preserveFocus
						)
					end
				end
			end
		end

		return state
	end

	function StackRouter.getPathAndParamsForState(state)
		local route = state.routes[state.index]
		return getPathAndParamsForRoute(route)
	end

	function StackRouter.getActionForPathAndParams(path, params)
		return getActionForPathAndParams(path, params)
	end

	StackRouter.getScreenOptions = createConfigGetter(routeConfigs, config.defaultNavigationOptions)

	return StackRouter
end
