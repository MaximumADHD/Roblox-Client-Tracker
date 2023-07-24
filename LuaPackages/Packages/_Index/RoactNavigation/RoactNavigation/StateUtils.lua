-- upstream https://github.com/react-navigation/react-navigation/blob/62da341b672a83786b9c3a80c8a38f929964d7cc/packages/core/src/StateUtils.js
local root = script.Parent
local Packages = root.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object

--[[
	StateUtils provides utilities to read and write standard route data.
	Routes have the following general structure:
	{
		index = <required integer: current active route in list>,
		routes = [
			{
				routeName = <required string: navigation name for route>,
				key = <unique string: identifier for this route>,
				params = <optional dictionary: params for screen>,
				action = <optional dictionary: sub-action to be run by child routers>,
			},
			...
		]
	}

	This structure is independent of the notion of stack, tab, drawer, or any
	other kind of navigation. It simply represents a list of pages and their
	parameters. Different kinds of routers can treat the data in their own way.
]]
local StateUtils = {}

-- Get the route matching the given key. Returns nil if no match is found.
function StateUtils.get(state, key)
	for _, route in state.routes do
		if route.key == key then
			return route
		end
	end

	return nil
end

-- Get the index of the route matching the given key. Returns nil if no match is found.
function StateUtils.indexOf(state, key)
	for index, route in state.routes do
		if route.key == key then
			return index
		end
	end

	-- deviation: returning nil instead of -1
	return nil
end

-- Returns true if a route exists matching the given key, false otherwise.
function StateUtils.has(state, key)
	for _, route in state.routes do
		if route.key == key then
			return true
		end
	end

	return false
end

-- Push a new route into the navigation state. Makes the pushed route active.
function StateUtils.push(state, route)
	assert(
		StateUtils.indexOf(state, route.key) == nil,
		("should not push route with duplicated key %s"):format(route.key)
	)

	local routes = Array.concat(state.routes, { route })
	return Object.assign(table.clone(state), {
		index = #routes,
		routes = routes,
	})
end

-- Pop the top-most route from the navigation state (NOT the active route).
-- Makes the new top-most route active.
function StateUtils.pop(state)
	if state.index <= 1 then
		-- [Note]: Over-popping does not throw error. Instead, it will be no-op.
		return state
	end

	local routes = table.clone(state.routes)
	table.remove(routes, #routes)
	return Object.assign(table.clone(state), {
		index = #routes,
		routes = routes,
	})
end

-- Sets the active route to match the given index.
function StateUtils.jumpToIndex(state, index)
	if index == state.index then
		return state
	end

	assert(state.routes[index] ~= nil, ("invalid index %d to jump to"):format(index))

	return Object.assign(table.clone(state), {
		index = index,
	})
end

-- Sets the active route to match the given key.
function StateUtils.jumpTo(state, key)
	local index = StateUtils.indexOf(state, key)
	assert(index ~= nil, ('attempt to jump to unknown key "%s"'):format(key))

	return StateUtils.jumpToIndex(state, index)
end

-- Sets the active route to the previous route in the list.
function StateUtils.back(state)
	local index = state.index - 1
	if not state.routes[index] then
		return state
	end

	return StateUtils.jumpToIndex(state, index)
end

-- Sets the active route to the next route in the list.
function StateUtils.forward(state)
	local index = state.index + 1
	if not state.routes[index] then
		return state
	end

	return StateUtils.jumpToIndex(state, index)
end

-- Replace the route matching the given key. Sets the active route to the
-- newly replaced entry. Prunes the old entries that follow the replaced one.
function StateUtils.replaceAndPrune(state, key, route)
	local index = StateUtils.indexOf(state, key)
	local replaced = StateUtils.replaceAtIndex(state, index, route)

	return Object.assign(table.clone(replaced), {
		routes = { unpack(replaced.routes, 1, index) },
	})
end

-- Replace the route matching the given key without pruning the following routes.
-- The active route will be updated to match the newly replaced one unless
-- preserveIndex is true.
function StateUtils.replaceAt(state, key, route, preserveIndex)
	local index = StateUtils.indexOf(state, key)
	local nextIndex = if preserveIndex then state.index else index
	local nextState = StateUtils.replaceAtIndex(state, index, route)
	nextState.index = nextIndex
	return nextState
end

-- Replace the route at the given index. Updates the active route to point to
-- the replaced entry.
function StateUtils.replaceAtIndex(state, index, route)
	assert(state.routes[index] ~= nil, ("invalid index %d for replacing route %s"):format(index, route.key))

	if state.routes[index] == route and index == state.index then
		return state
	end

	local routes = table.clone(state.routes)
	routes[index] = route

	return Object.assign(table.clone(state), {
		index = index,
		routes = routes,
	})
end

-- Wipe away the existing routes and replace them with new routes.
-- Sets the active route to the provided index (if provided), otherwise
-- sets the active route to the last one in the list.
function StateUtils.reset(state, routes, index)
	assert(type(routes) == "table" and #routes > 0, "invalid routes to replace")

	local nextIndex = if not index then #routes else index

	-- Bail out without replacing IFF index and routes all match
	if #state.routes == #routes and state.index == nextIndex then
		local routesAreEqual = true
		for i = 1, #routes, 1 do
			if state.routes[i] ~= routes[i] then
				routesAreEqual = false
				break
			end
		end

		if routesAreEqual then
			return state
		end
	end

	assert(routes[nextIndex] ~= nil, ("invalid index %d to reset"):format(nextIndex))

	return Object.assign(table.clone(state), {
		index = nextIndex,
		routes = routes,
	})
end

return StateUtils
