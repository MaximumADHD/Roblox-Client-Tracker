-- upstream https://github.com/react-navigation/react-navigation/blob/6390aacd07fd647d925dfec842a766c8aad5272f/packages/core/src/routers/TabRouter.js

local root = script.Parent.Parent
local Packages = root.Parent

local Cryo = require(Packages.Cryo)
local NavigationActions = require(root.NavigationActions)
local StackActions = require(script.Parent.StackActions)
local KeyGenerator = require(root.utils.KeyGenerator)
local StateUtils = require(root.StateUtils)
local getScreenForRouteName = require(script.Parent.getScreenForRouteName)
local createConfigGetter = require(script.Parent.createConfigGetter)
local validateRouteConfigArray = require(script.Parent.validateRouteConfigArray)
local validateRouteConfigMap = require(script.Parent.validateRouteConfigMap)
local validate = require(root.utils.validate)
local NavigationSymbol = require(root.NavigationSymbol)

local STACK_ROUTER_ROOT_KEY = "StackRouterRoot"
-- This symbol is used to differentiate if a router has a child router
-- or if is a regular Roact component. React-navigation does it by using
-- undefined vs. null (that's why we need)
local CHILD_IS_SCREEN = NavigationSymbol("CHILD_IS_SCREEN")

local defaultActionCreators = function() return {} end

local function behavesLikePushAction(action)
	return action.type == NavigationActions.Navigate or
		action.type == StackActions.Push
end

local function isResetToRootStack(action)
	return action.type == StackActions.Reset and action.key == nil
end

local function mapToRouteName(element)
	local routeName = next(element)
	return routeName
end

local function foldToRoutes(routes, element, index)
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

	local routeNames = config.order or Cryo.List.map(routeArray, mapToRouteName)

	-- Loop through routes and find child routers
	local childRouters = {}
	for _, routeName in ipairs(routeNames) do
		-- We're not using `getScreenForRouteName` here to preserve the lazy loading
		-- behaviour of routes. This means that routes with child routers must be
		-- defined using a component directly or with an object with a screen prop.
		local routeConfig = routeConfigs[routeName]
		local screen = (type(routeConfig) == "table" and routeConfig.screen)
			and routeConfig.screen or routeConfig
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

	local initialRouteIndex = Cryo.List.find(routeNames, initialRouteName)
	-- dump an error if initialRouteName is not in routes.
	if initialRouteIndex == nil then
		local availableRouteStr = ""
		for _, name in ipairs(routeNames) do
			availableRouteStr = availableRouteStr .. name .. ","
		end

		error(string.format("Invalid initialRouteName '%s'. Must be one of [%s]", initialRouteName, availableRouteStr), 2)
	end

	local function getInitialState(action)
		local route = {}
		local childRouter = childRouters[action.routeName]

		-- This is a push-like action, and childRouter will be a router or null
		-- if we are responsible for this routeName
		if behavesLikePushAction(action) and childRouter ~= nil then
			local childState = {}

			-- The router is 'CHILD_IS_SCREEN' for normal leaf routes
			if childRouter ~= CHILD_IS_SCREEN then
				local childAction = action.action
					or NavigationActions.init({ params = action.params })
				childState = childRouter.getStateForAction(childAction)
			end

			return {
				key = STACK_ROUTER_ROOT_KEY,
				isTransitioning = false,
				index = 1,
				routes = {
					Cryo.Dictionary.join({ params = action.params }, childState, {
						key = action.key or KeyGenerator.generateKey(),
						routeName = action.routeName,
					})
				}
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
			and Cryo.Dictionary.join(
				initialRouteConfigParams or {}, -- params set in routes table!
				route.params or {},
				action.params or {},
				initialRouteParams or {} -- params provided at top level
			)

		local initialRouteKey = config.initialRouteKey
		route = Cryo.Dictionary.join(route, {
			params = params,
			routeName = initialRouteName,
			key = action.key or initialRouteKey or KeyGenerator.generateKey()
		})

		return {
			key = STACK_ROUTER_ROOT_KEY,
			isTransitioning = false,
			index = 1,
			routes = { route }
		}
	end

	local function getParamsForRouteAndAction(routeName, action)
		local routeConfig = routeConfigs[routeName]
		-- we need to check if the routeConfig is a table because functions can't be
		-- indexed in Lua.
		if type(routeConfig) == "table" and routeConfig.params then
			return Cryo.Dictionary.join(routeConfig.params, action.params)
		else
			return action.params
		end
	end

	-- Strip out the CHILD_IS_SCREEN hacked elements before exposing publicly.
	local strippedChildRouters = {}
	for routerName, router in pairs(childRouters) do
		if router ~= CHILD_IS_SCREEN then
			strippedChildRouters[routerName] = router
		end
	end

	local StackRouter = {
		childRouters = strippedChildRouters,
		getScreenOptions = createConfigGetter(routeConfigs, config.defaultNavigationOptions),
		_CHILD_IS_SCREEN = CHILD_IS_SCREEN, -- expose symbol for testing purposes
	}

	function StackRouter.getComponentForState(state)
		local activeChildRoute = state.routes[state.index] or {}
		local routeName = activeChildRoute.routeName
		validate(routeName, "There is no route defined for index '%d'. " ..
			"Make sure that you passed in a navigation state with a " ..
			"valid stack index.", state.index)

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
		return Cryo.Dictionary.join(getCustomActionCreators(route, navStateKey), {
			pop = function(n, params)
				return StackActions.pop(Cryo.Dictionary.join({
					n = n,
				}, params or {}))
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

				validate(type(replaceWith) == "table", "replaceWith must be a table or string")
				validate(params == nil, "params cannot be provided to .replace() when specifying a table")
				validate(action == nil, "Child action cannot be provided to .replace() when specifying a table")
				validate(newKey == nil, "newKey cannot be provided to .replace() when specifying a table")

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
							nextRouteState and nextRouteState.key or childRoute.key,
							nextRouteState and nextRouteState or childRoute
						)

						local newTransitioning = state.isTransitioning
						if state.index ~= newState.index then
							newTransitioning = action.immediate ~= true
						end

						return Cryo.Dictionary.join(newState, {
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
			validate(action.type ~= StackActions.Push or action.key == nil,
				"StackRouter does not support key on the push action")

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
			local lastRouteIndex = Cryo.List.findWhere(state.routes, findRoute)

			-- An instance of this route exists already and we're dealing with a navigate action.
			if action.type ~= StackActions.Push and lastRouteIndex ~= nil then
				-- If index is unchanged and params are not being set, leave state identity intact
				if state.index == lastRouteIndex and not action.params then
					return nil
				end

				-- Remove the now unused routes at the tail of the routes array
				local routes = Cryo.List.getRange(state.routes, 1, lastRouteIndex)

				-- Apply params if provided, otherwise leave route identity intact
				if action.params then
					local route = state.routes[lastRouteIndex]
					routes[lastRouteIndex] = Cryo.Dictionary.join(route, {
						params = Cryo.Dictionary.join(route.params or {}, action.params)
					})
				end

				-- Return state with new index, changing isTransitioning only if index has changed
				local newIsTransitioning = state.isTransitioning
				if state.index ~= lastRouteIndex then
					newIsTransitioning = action.immediate ~= true
				end

				return Cryo.Dictionary.join(state, {
					isTransitioning = newIsTransitioning,
					index = lastRouteIndex,
					routes = routes,
				})
			end

			local route
			if childRouter ~= CHILD_IS_SCREEN then
				-- Delegate to the child router with the given action, or init it
				local childAction = action.action or NavigationActions.init({
					params = getParamsForRouteAndAction(action.routeName, action)
				})

				route = Cryo.Dictionary.join({
					-- does it make sense to wipe out the params here? or even to
					-- add params at all? need more info about what this solves
					params = getParamsForRouteAndAction(action.routeName, action),
				}, childRouter.getStateForAction(childAction), {
					routeName = action.routeName,
					key = action.key or KeyGenerator.generateKey(),
				})
			else
				-- Create the route from scratch
				route = {
					params = getParamsForRouteAndAction(action.routeName, action),
					routeName = action.routeName,
					key = action.key or KeyGenerator.generateKey(),
				}
			end

			return Cryo.Dictionary.join(StateUtils.push(state, route), {
				isTransitioning = action.immediate ~= true,
			})
		elseif action.type == StackActions.Push and childRouters[action.routeName] == nil then
			-- Return the state identity to bubble the action up
			return state
		end

		-- Handle navigation to other child routers that are not yet pushed
		if behavesLikePushAction(action) then
			local childRouterNames = Cryo.Dictionary.keys(childRouters)
			for _, childRouterName in ipairs(childRouterNames) do
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
						local route = Cryo.Dictionary.join(routeToPush, {
							routeName = childRouterName,
							key = action.key or KeyGenerator.generateKey(),
						})

						return Cryo.Dictionary.join(StateUtils.push(state, route), {
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
				return Cryo.Dictionary.join(state, {
					isTransitioning = action.immediate ~= true,
					index = 1,
					routes = { state.routes[1] }
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
				routeIndex = Cryo.List.findWhere(state.routes, function(route)
					return route.key == action.key
				end)
			end

			if routeIndex then
				local childRouter = childRouters[action.routeName]
				local childState = {}

				-- we need to check if initialChildRouter is not CHILD_IS_SCREEN because
				-- of the divergence with react-navigation.
				if childRouter ~= nil and childRouter ~= CHILD_IS_SCREEN then
					local childAction = action.action or NavigationActions.init({
						params = getParamsForRouteAndAction(action.routeName, action)
					})

					childState = childRouter.getStateForAction(childAction)
				end

				local routes = Cryo.List.replaceIndex(
					state.routes,
					routeIndex,
					Cryo.Dictionary.join({
						params = getParamsForRouteAndAction(action.routeName, action),
					}, childState, {
						routeName = action.routeName,
						key = action.newKey or KeyGenerator.generateKey(),
					})
				)

				return Cryo.Dictionary.join(state, { routes = routes })
			end
		end

		if action.type == StackActions.CompleteTransition and
			(action.key == nil or action.key == state.key) and
			action.toChildKey == state.routes[state.index].key and
			state.isTransitioning
		then
			return Cryo.Dictionary.join(state, {
				isTransitioning = false,
			})
		end

		if action.type == NavigationActions.SetParams then
			local key = action.key
			local lastRouteIndex = Cryo.List.findWhere(state.routes, function(route)
				return route.key == key
			end)

			if lastRouteIndex then
				local lastRoute = state.routes[lastRouteIndex]
				local params = Cryo.Dictionary.join(lastRoute.params or {}, action.params or {})
				local routes = Cryo.List.replaceIndex(
					state.routes,
					lastRouteIndex,
					Cryo.Dictionary.join(lastRoute, { params = params })
				)

				return Cryo.Dictionary.join(state, {
					routes = routes,
				})
			end
		end

		if action.type == StackActions.Reset then
			-- Only handle reset actions that are unspecified or match this state key
			if action.key ~= nil and action.key ~= state.key then
				return state
			end

			local newStackActions = action.actions or {}
			local newRoutes = Cryo.List.map(newStackActions, function(newStackAction)
				local router = childRouters[newStackAction.routeName]

				local childState = {}
				-- we need to check if initialChildRouter is not CHILD_IS_SCREEN because
				-- of the divergence with react-navigation.
				if router ~= nil and router ~= CHILD_IS_SCREEN then
					local childAction = newStackAction.action or NavigationActions.init({
						params = getParamsForRouteAndAction(
							newStackAction.routeName,
							newStackAction
						),
					})

					childState = router.getStateForAction(childAction)
				end

				return Cryo.Dictionary.join({
					params = getParamsForRouteAndAction(newStackAction.routeName, newStackAction)
				}, childState, {
					routeName = newStackAction.routeName,
					key = newStackAction.key or KeyGenerator.generateKey(),
				})
			end)

			return Cryo.Dictionary.join(state, {
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
				local index = Cryo.List.findWhere(state.routes, function(route)
					return route.key == key
				end)

				if index ~= nil then
					local count = math.max(index - (n or 1), 1)
					local routes = Cryo.List.join(
						Cryo.List.getRange(state.routes, 1, count),
						Cryo.List.getRange(state.routes, index + 1, math.huge)
					)

					if #routes > 0 then
						return Cryo.Dictionary.join(state, {
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
					backRouteIndex = Cryo.List.findWhere(state.routes, function(route)
						return route.key == key
					end)
				end

				if backRouteIndex and backRouteIndex > 1 then
					return Cryo.Dictionary.join(state, {
						routes = Cryo.List.getRange(state.routes, 1, backRouteIndex - 1),
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

		local keyIndex = action.key and StateUtils.indexOf(state, action.key) or nil

		-- Traverse routes from the top of the stack to the bottom, so the
		-- active route has the first opportunity, then the one before it, etc.
		for i = #state.routes, 1, -1 do
			local childRoute = state.routes[i]
			-- skip over the active child because we let it attempt to handle the action
			-- earlier.
			-- If a key is provided and in routes state then let's use that
			-- knowledge to skip extra getStateForAction calls on other child
			-- routers
			if (childRoute.key ~= activeChildRoute.key) and
				(keyIndex == 1 or childRoute.key == action.key)
			then
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

	-- TODO: Implement StackRouter.getPathAndParamsForState after we add path expression support
	-- TODO: Implement StackRouter.getActionForPathAndParams after we add path expression support

	return StackRouter
end
