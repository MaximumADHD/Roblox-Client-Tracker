local Cryo = require(script.Parent.Parent.Cryo)
local getChildEventSubscriber = require(script.Parent.getChildEventSubscriber)
local getChildRouter = require(script.Parent.routers.getChildRouter)
local getNavigationActionCreators = require(script.Parent.routers.getNavigationActionCreators)
local getChildrenNavigationCache = require(script.Parent.getChildrenNavigationCache)

local function createParamGetter(route)
	return function(paramName, defaultValue)
		local params = route.params
		return params and params[paramName] or defaultValue
	end
end

local function getChildNavigation(navigation, childKey, getCurrentParentNavigation)
	local children = getChildrenNavigationCache(navigation)

	local childRoute = nil
	for _, route in ipairs(navigation.state.routes) do
		if route.key == childKey then
			childRoute = route
			break
		end
	end

	if not childRoute then
		return nil
	end

	local requestedChild = children[childKey]

	if requestedChild and requestedChild.state == childRoute then
		return requestedChild
	end

	local childRouter = getChildRouter(navigation.router, childRoute.routeName)

	-- If the route has children that match our routes schema then get a reference
	-- to the focused grandchild so we can pass the correct action creators to the
	-- child router so that any action that depends on the child route will behave
	-- as expected.
	local focusedGrandChildRoute = nil
	if childRoute.routes and type(childRoute.index) == "number" then
		focusedGrandChildRoute = childRoute.routes[childRoute.index]
	end

	local childRouterActionCreators = childRouter and
		childRouter.getActionCreators(focusedGrandChildRoute, childRoute.key) or {}

	local actionCreators = Cryo.Dictionary.join(
		navigation.actions or {},
		navigation.router.getActionCreators(childRoute, navigation.state.key) or {},
		childRouterActionCreators or {},
		getNavigationActionCreators(childRoute) or {})

	local actionHelpers = {}
	for key, creator in pairs(actionCreators) do
		actionHelpers[key] = function(...)
			local action = creator(...)
			return navigation.dispatch(action)
		end
	end

	if requestedChild then
		-- Update cache value for requestedChild because child's state has changed
		children[childKey] = Cryo.Dictionary.join(requestedChild, actionHelpers, {
			state = childRoute,
			router = childRouter,
			actions = actionCreators,
			getParam = createParamGetter(childRoute),
		})

		return children[childKey]
	else
		-- No cached value for requestedChild. Create a new entry.
		local childSubscriber = getChildEventSubscriber(navigation.addListener, childKey)

		children[childKey] = Cryo.Dictionary.join(actionHelpers, {
			state = childRoute,
			router = childRouter,
			actions = actionCreators,
			getParam = createParamGetter(childRoute),
			getChildNavigation = function(grandChildKey)
				return getChildNavigation(children[childKey], grandChildKey, function()
					local nav = getCurrentParentNavigation()
					return nav and nav.getChildNavigation(childKey) or nil
				end)
			end,
			isFocused = function()
				local currentNavigation = getCurrentParentNavigation()
				if not currentNavigation then
					return false
				end

				local state = currentNavigation.state
				local routes = state.routes
				local index = state.index

				if not currentNavigation.isFocused() then
					return false
				end

				-- If we're transitioning to this state then we are NOT focused until the transition is over.
				return (routes[index].key == childKey and state.isTransitioning ~= true) or false
			end,
			dispatch = navigation.dispatch,
			getScreenProps = navigation.getScreenProps,
			addListener = childSubscriber.addListener,
			emit = childSubscriber.emit,
		})

		return children[childKey]
	end
end

return getChildNavigation
