-- upstream https://github.com/react-navigation/react-navigation/blob/72e8160537954af40f1b070aa91ef45fc02bba69/packages/core/src/getChildNavigation.js

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local getEventManager = require(script.Parent.getEventManager)
local getChildRouter = require(script.Parent.getChildRouter)
local getNavigationActionCreators = require(script.Parent.routers.getNavigationActionCreators)
local getChildrenNavigationCache = require(script.Parent.getChildrenNavigationCache)

local function createParamGetter(route)
	return function(paramName, defaultValue)
		local params = route.params

		if params and params[paramName] ~= nil then
			return params[paramName]
		else
			return defaultValue
		end
	end
end

local function getChildNavigation(navigation, childKey, getCurrentParentNavigation)
	local children = getChildrenNavigationCache(navigation)

	local childRouteIndex = Array.findIndex(navigation.state.routes, function(route)
		return route.key == childKey
	end)

	if childRouteIndex < 1 then
		return nil
	end
	local childRoute = navigation.state.routes[childRouteIndex]

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

	local childRouterActionCreators = childRouter
			and childRouter.getActionCreators(focusedGrandChildRoute, childRoute.key)
		or {}

	local actionCreators = Object.assign(
		if navigation.actions then table.clone(navigation.actions) else {},
		navigation.router.getActionCreators(childRoute, navigation.state.key) or {},
		childRouterActionCreators or {},
		getNavigationActionCreators(childRoute) or {}
	)

	local actionHelpers = {}
	for actionName, actionCreator in actionCreators do
		actionHelpers[actionName] = function(...)
			local action = actionCreator(...)
			return navigation.dispatch(action)
		end
	end

	local isFirstRouteInParent = true

	local parentNavigation = getCurrentParentNavigation()

	if parentNavigation then
		isFirstRouteInParent = Array.indexOf(parentNavigation.state.routes, childRoute) == 1
	end

	if requestedChild and requestedChild.isFirstRouteInParent() == isFirstRouteInParent then
		-- Update cache value for requestedChild because child's state has changed
		children[childKey] = Object.assign(table.clone(requestedChild), actionHelpers, {
			state = childRoute,
			router = childRouter,
			actions = actionCreators,
			getParam = createParamGetter(childRoute),
		})

		return children[childKey]
	else
		-- No cached value for requestedChild. Create a new entry.
		local childSubscriber = getEventManager(childKey)

		children[childKey] = Object.assign(table.clone(actionHelpers), {
			state = childRoute,
			router = childRouter,
			actions = actionCreators,
			getParam = createParamGetter(childRoute),
			getChildNavigation = function(grandChildKey)
				return getChildNavigation(children[childKey], grandChildKey, function()
					local nav = getCurrentParentNavigation()
					return if nav then nav.getChildNavigation(childKey) else nil
				end)
			end,
			isFocused = function()
				local currentNavigation = getCurrentParentNavigation()
				if not currentNavigation then
					return false
				end

				if not currentNavigation.isFocused() then
					return false
				end

				local state = currentNavigation.state
				local routes = state.routes
				local index = state.index

				if routes[index].key == childKey then
					return true
				end

				return false
			end,
			isFirstRouteInParent = function()
				return isFirstRouteInParent
			end,
			dispatch = navigation.dispatch,
			getScreenProps = navigation.getScreenProps,
			-- deviation: `dangerouslyGetParent` is renamed as private because
			-- it is deprecated in latest react navigation
			_dangerouslyGetParent = getCurrentParentNavigation,
			addListener = childSubscriber.addListener,
			emit = childSubscriber.emit,
		})

		return children[childKey]
	end
end

return getChildNavigation
