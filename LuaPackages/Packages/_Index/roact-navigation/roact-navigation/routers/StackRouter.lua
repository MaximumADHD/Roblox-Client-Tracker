local Cryo = require(script.Parent.Parent.Parent.Cryo)
local NavigationActions = require(script.Parent.Parent.NavigationActions)
local StackActions = require(script.Parent.Parent.StackActions)
local KeyGenerator = require(script.Parent.Parent.utils.KeyGenerator)
local StateUtils = require(script.Parent.Parent.StateUtils)
local getScreenForRouteName = require(script.Parent.getScreenForRouteName)
local createConfigGetter = require(script.Parent.createConfigGetter)
local validateRouteConfigMap = require(script.Parent.validateRouteConfigMap)
local validate = require(script.Parent.Parent.utils.validate)
local NavigationSymbol = require(script.Parent.Parent.NavigationSymbol)
local NoneSymbol = require(script.Parent.Parent.NoneSymbol)

local STACK_ROUTER_ROOT_KEY = "StackRouterRoot"
local CHILD_IS_SCREEN = NavigationSymbol("CHILD_IS_SCREEN")

local defaultActionCreators = function() return {} end

local function behavesLikePushAction(action)
	return action.type == NavigationActions.Navigate or
		action.type == StackActions.Push
end

local function isResetToRootStack(action)
	return action.type == StackActions.Reset and action.key == NoneSymbol
end

return function(config)
	validate(type(config) == "table", "config must be a table")

	local routeConfigs = validateRouteConfigMap(config.routes)
	local routeNames = Cryo.Dictionary.keys(routeConfigs)

	-- find child child routers
	local childRouters = {}
	for _, routeName in ipairs(routeNames) do
		local screen = getScreenForRouteName(routeConfigs, routeName)
		if type(screen) == "table" and screen.router then
			-- if it has a router then it's a navigator
			childRouters[routeName] = screen.router
		else
			-- TODO: This is a hack to make this code behave like React-Navigation's usage of
			-- null and undefined values for childRouters. We should come up with a better approach.
			childRouters[routeName] = CHILD_IS_SCREEN
		end
	end

	local getCustomActionCreators = config.getCustomActionCreators or defaultActionCreators

	local initialRouteParams = config.initialRouteParams or {}
	local initialRouteName = validate(config.initialRouteName, "initialRouteName must be provided")

	local initialRouteIndex = Cryo.List.find(routeNames, initialRouteName)

	-- dump an error if initialRouteName is not in routes.
	if initialRouteIndex == nil then
		local availableRouteStr = ""
		for _, name in ipairs(routeNames) do
			availableRouteStr = availableRouteStr .. name .. ","
		end

		error(string.format("Invalid initialRouteName '%s'. Must be one of [%s]", initialRouteName, availableRouteStr), 2)
	end

	local initialChildRouter = childRouters[initialRouteName]

	local function getInitialState()
		local route = {}

		if initialChildRouter ~= nil and initialChildRouter ~= CHILD_IS_SCREEN then
			route = initialChildRouter.getStateForAction(NavigationActions.init({
				params = initialRouteParams,
			}))
		end

		local initialRouteConfig = routeConfigs[initialRouteName]
		local initialRouteConfigParams = type(initialRouteConfig) == "table" and initialRouteConfig.params or {}

		local params = Cryo.Dictionary.join(
			initialRouteConfigParams, -- params set in routes table!
			route.params or {},
			initialRouteParams or {} -- params provided at top level
		)

		local initialRouteKey = config.initialRouteKey
		route = Cryo.Dictionary.join(route, params, {
			routeName = initialRouteName,
			key = initialRouteKey or KeyGenerator.generateKey()
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
					resetIndex = #actions - 1
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
		state = state or getInitialState()

		local activeChildRoute = state.routes[state.index]

		if not isResetToRootStack(action) and action.type ~= NavigationActions.Navigate then
			local activeChildRouter = childRouters[activeChildRoute.routeName]
			if activeChildRouter ~= nil and activeChildRouter ~= CHILD_IS_SCREEN then
				local route = activeChildRouter.getStateForAction(action, activeChildRoute)
				if route ~= nil and route ~= activeChildRoute then
					return StateUtils.replaceAt(
						state,
						activeChildRoute.key,
						route,
						action.type == NavigationActions.SetParams -- don't change index for setParam action
					)
				end
			end
		elseif action.type == NavigationActions.Navigate then
			-- Traverse routes from top of the stack to the bottom; active route has first opportunity
			for i = #state.routes, 1, -1 do
				local childRoute = state.routes[i]
				local childRouter = childRouters[childRoute.routeName]
				local childAction = action
				if action.routeName == childRoute.routeName and action.action then
					childAction = action.action
				end

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
		if behavesLikePushAction(action) and childRouters[action.routeName] ~= nil then
			local childRouter = childRouters[action.routeName]
			validate(action.type ~= StackActions.Push or action.key == nil,
				"StackRouter does not support key on the push action")

			-- Before pushing new route, try to find existing one in the stack.
			local lastRouteIndex = nil
			for idx, route in ipairs(state.routes) do
				if (action.key and route.key == action.key) or (route.routeName == action.routeName) then
					lastRouteIndex = idx
					break
				end
			end

			-- An instance of this route exists already and we're dealing with a Navigate action.
			if action.type ~= StackActions.Push and lastRouteIndex ~= nil then
				-- If index or params have not changed, leave state alone
				if state.index == lastRouteIndex and not action.params then
					return nil
				end

				-- Remove unused routes at tail
				local routes = Cryo.List.removeRange(state.routes, lastRouteIndex + 1, #state.routes)

				-- Apply params if provided
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
				-- Delegate to child router
				local childAction = action.action or NavigationActions.init({
					params = getParamsForRouteAndAction(action.routeName, action)
				})

				route = Cryo.Dictionary.join({
					-- TODO: Does it make sense to wipe out the params here, or to incorporate params at all?
					params = getParamsForRouteAndAction(action.routeName, action),
				}, childRouter.getStateForAction(childAction), {
					routeName = action.routeName,
					key = action.key or KeyGenerator.generateKey(),
				})
			else
				-- Create new route from scratch
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
			-- Return original state to bubble the action up
			return state
		end

		-- Handle navigation to other child routers that are not pushed yet.
		if behavesLikePushAction(action) then
			local childRouterNames = Cryo.Dictionary.keys(childRouters)
			for _, childRouterName in ipairs(childRouterNames) do
				local childRouter = childRouters[childRouterName]
				if childRouter ~= nil and childRouter ~= CHILD_IS_SCREEN then
					-- Start with blank state for each child router
					local initChildRoute = childRouter.getStateForAction(NavigationActions.init())

					-- Check to see if it handles our action
					local navigatedChildRoute = childRouter.getStateForAction(action, initChildRoute)

					local routeToPush = nil
					if navigatedChildRoute == nil then
						-- Push initial route if the router returned nil when handling action
						routeToPush = initChildRoute
					elseif navigatedChildRoute ~= initChildRoute then
						-- Push new route if state changed in response to this action
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

		-- Handle pop-to-top behavior. This must happen after children have had a chance to handle
		-- the action, so that the inner stack always pops first.
		if action.type == StackActions.PopToTop then
			-- Refuse to handle pop to top if a key is given that does not correspond to this router
			if action.key and state.key ~= action.key then
				return state
			end

			-- If we're already at the top then return current state to allow action to bubble up.
			if state.index <= 1 then
				return state
			end

			return Cryo.Dictionary.join(state, {
				isTransitioning = action.immediate ~= true,
				index = 1,
				routes = { state.routes[1] }
			})
		end

		if action.type == StackActions.Replace then
			local routeIndex = nil

			-- If there is no key, set index to last route in stack
			if not action.key and #state.routes > 0 then
				routeIndex = #state.routes
			else
				for idx, route in ipairs(state.routes) do
					if route.key == action.key then
						routeIndex = idx
						break
					end
				end
			end

			if routeIndex then
				local childRouter = childRouters[action.routeName]
				local childState = {}

				if childRouter ~= nil and childRouter ~= CHILD_IS_SCREEN then
					local childAction = action.action or NavigationActions.init({
						params = getParamsForRouteAndAction(action.routeName, action)
					})

					childState = childRouter.getStateForAction(childAction)
				end

				-- shallow copy and update routes
				local routes = Cryo.List.join(state.routes)
				routes[routeIndex] = Cryo.Dictionary.join({
					params = getParamsForRouteAndAction(action.routeName, action),
				}, childState, {
					routeName = action.routeName,
					key = action.newKey or KeyGenerator.generateKey(),
				})

				return Cryo.Dictionary.join(state, {
					routes = routes,
				})
			end
		end

		if action.type == NavigationActions.CompleteTransition and
			(action.key == nil or action.key == state.key) and
			action.toChildKey == state.routes[state.index].key and
			state.isTransitioning then
			return Cryo.Dictionary.join(state, {
				isTransitioning = false,
			})
		end

		if action.type == NavigationActions.SetParams then
			local key = action.key

			local lastRouteIndex = nil
			local lastRoute = nil
			for idx, route in ipairs(state.routes) do
				if route.key == key then
					lastRouteIndex = idx
					lastRoute = route
					break
				end
			end

			if lastRoute then
				local params = Cryo.Dictionary.join(lastRoute.params or {}, action.params or {})
				-- shallow copy and update routes
				local routes = Cryo.List.join(state.routes)
				routes[lastRouteIndex] = Cryo.Dictionary.join(lastRoute, {
					params = params,
				})

				return Cryo.Dictionary.join(state, {
					routes = routes,
				})
			end
		end

		if action.type == StackActions.Reset then
			-- Only handle reset actions with matching key (or none)
			if action.key ~= nil and action.key ~= state.key then
				return state
			end

			local specifiedActions = action.actions or {}

			local newRoutes = {}
			for _, newStackAction in ipairs(specifiedActions) do
				local router = childRouters[newStackAction.routeName]

				local childState = {}
				if router ~= nil and router ~= CHILD_IS_SCREEN then
					local childAction = newStackAction.action or NavigationActions.init({
						params = getParamsForRouteAndAction(newStackAction.routeName, newStackAction),
					})

					childState = router.getStateForAction(childAction)
				end

				table.insert(newRoutes, Cryo.Dictionary.join({
					params = getParamsForRouteAndAction(newStackAction.routeName, newStackAction)
				}, childState, {
					routeName = newStackAction.routeName,
					key = newStackAction.key or KeyGenerator.generateKey(),
				}))
			end

			return Cryo.Dictionary.join(state, {
				routes = newRoutes,
				index = action.index or #specifiedActions,
			})
		end

		if action.type == NavigationActions.Back or
			action.type == StackActions.Pop then
			local key = action.key
			local n = action.n
			local immediate = action.immediate

			local backRouteIndex = state.index -- index to go back *FROM*
			if action.type == StackActions.Pop and n ~= nil then
				backRouteIndex = math.max(1, state.index - n + 1)
			elseif key and key ~= NoneSymbol then
				-- If key is specified and is not ours, we should NOT try to navigate back
				-- because it might be intended for our parent! (So clear the backRouteIndex.)
				backRouteIndex = 0
				for idx, route in ipairs(state.routes) do
					if route.key == key then
						backRouteIndex = idx
						break
					end
				end
			end

			if backRouteIndex > 1 then
				return Cryo.Dictionary.join(state, {
					routes = Cryo.List.removeRange(state.routes, backRouteIndex, #state.routes),
					index = backRouteIndex - 1,
					isTransitioning = immediate ~= true,
				})
			end
		end

		-- At this point, we've handled the behavior of the active route and any
		-- stack actions. Now we allow non-active child routers to try to process the action,
		-- and switch to them if they can handle it.
		local keyIndex = action.key and StateUtils.indexOf(state, action.key) or nil

		-- Traverse from top of stack to bottom.
		for i = #state.routes, 1, -1 do
			local childRoute = state.routes[i]
			-- Skip over the active route since we already let it try.
			-- Also, skip calling getStateForAction on other child routers
			-- if the provided key is in the route's state
			if (childRoute.key ~= activeChildRoute.key) and
				(not keyIndex or childRoute.key == action.key) then
				local childRouter = childRouters[childRoute.routeName]
				if childRouter ~= nil and childRouter ~= CHILD_IS_SCREEN then
					local route = childRouter.getStateForAction(action, childRoute)
					if not route then
						return state
					end

					if route ~= childRoute then
						return StateUtils.replaceAt(
							state,
							childRoute.key,
							route,
							-- don't change index for these action types
							action.type == NavigationActions.SetParams or
							action.type == StackActions.CompleteTransition
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
