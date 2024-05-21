local root = script.Parent.Parent.Parent
local Packages = root.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local TableUtilities = require(root.utils.TableUtilities)
local invariant = require(root.utils.invariant)

local SCENE_KEY_PREFIX = "scene_"

-- Compare two scenes based upon index and view key.
local function compareScenes(a, b)
	if a.index == b.index then
		-- compare the route keys
		local delta = #a.key - #b.key
		if delta == 0 then
			return a.key < b.key
		else
			return delta < 0
		end
	else
		-- rank by index first
		return a.index < b.index
	end
end

local function routesAreShallowEqual(a, b)
	if not a or not b then
		return a == b
	end

	if a.key ~= b.key then
		return false
	end

	return TableUtilities.ShallowEqual(a, b)
end

local function scenesAreShallowEqual(a, b)
	return
		a.key == b.key
			and a.index == b.index
			and a.isStale == b.isStale
			and a.isActive == b.isActive
			and routesAreShallowEqual(a, b)
end

return function(scenes, nextState, prevState, descriptors)
	-- Always update descriptors. See react-navigation's bug, here:
	-- https://github.com/react-navigation/react-navigation/issues/4271
	-- TODO: Do we need this? Can we do a real fix?
	for _, scene in scenes do
		local route = scene.route
		if descriptors and descriptors[route.key] then
			scene.descriptor = descriptors[route.key]
		end
	end

	-- Bail out early if state is not updated
	if prevState == nextState then
		return scenes
	end

	local prevScenes = {}
	local freshScenes = {}
	local staleScenes = {}

	-- previously stale scenes should be marked stale
	for _, scene in scenes do
		local key = scene.key
		if scene.isStale then
			staleScenes[key] = scene
		end

		prevScenes[key] = scene
	end

	local nextKeys = {} -- fake set!
	local nextRoutes = nextState.routes
	local nextRoutesLength = #nextRoutes

	-- Clip nextRoutes to stop at index because index is top of stack!
	if nextRoutesLength > nextState.index then
		print("Warning: StackRouter provided invalid state. Index should always be the top route")
		nextRoutes = Array.slice(nextRoutes, 1, nextState.index)
	end

	for index, route in nextRoutes do
		local key = SCENE_KEY_PREFIX .. route.key
		local descriptor = if descriptors then descriptors[route.key] else nil

		local scene = {
			index = index,
			isActive = false,
			isStale = false,
			key = key,
			route = route,
			descriptor = descriptor,
		}

		invariant(not nextKeys[key], "navigation.state.routes[%d].key '%s' conflicts with another route!", index, key)
		nextKeys[key] = true

		if staleScenes[key] then
			-- Previously stale scene was added to nextState, so we remove it from
			-- the map of stale scenes.
			staleScenes[key] = nil
		end

		freshScenes[key] = scene
	end

	if prevState then
		local prevRoutes = prevState.routes
		local prevRoutesLength = #prevRoutes
		if prevRoutesLength > prevState.index then
			print("StackRouter provided invalid state. Index should always be the top route.")
			prevRoutes = Array.slice(prevRoutes, 1, prevState.index)
		end

		-- Search previous routes and mark any removed scenes as stale
		for index, route in prevRoutes do
			local key = SCENE_KEY_PREFIX .. route.key
			-- Skip any refreshed scenes
			if not freshScenes[key] then
				local lastScene = nil
				for _, scene in scenes do
					if scene.route.key == route.key then
						lastScene = scene
						break
					end
				end

				local descriptor = descriptors[route.key]
				if lastScene then
					descriptor = lastScene.descriptor
				end

				if descriptor then
					staleScenes[key] = {
						index = index,
						isActive = false,
						isStale = true,
						key = key,
						route = route,
						descriptor = descriptor,
					}
				end
			end
		end
	end

	local nextScenes = {}

	local function mergeScene(nextScene)
		local key = nextScene.key
		local prevScene = prevScenes[key] or nil
		if prevScene and scenesAreShallowEqual(prevScene, nextScene) then
			-- reuse prevScene to avoid re-render
			table.insert(nextScenes, prevScene)
		else
			table.insert(nextScenes, nextScene)
		end
	end

	for _, scene in staleScenes do
		mergeScene(scene)
	end

	for _, scene in freshScenes do
		mergeScene(scene)
	end

	table.sort(nextScenes, compareScenes)

	local activeScenesCount = 0
	for index, scene in nextScenes do
		local isActive = not scene.isStale and scene.index == nextState.index
		if isActive ~= scene.isActive then
			nextScenes[index] = Object.assign(table.clone(scene), {
				isActive = isActive,
			})
		end

		if isActive then
			activeScenesCount = activeScenesCount + 1
		end
	end

	invariant(activeScenesCount == 1, "There should only be one active scene, not %d", activeScenesCount)

	-- Conditionally return nextScenes based upon shallow comparison, for performance
	if #nextScenes ~= #scenes then
		return nextScenes
	end

	for index, scene in nextScenes do
		if not scenesAreShallowEqual(scenes[index], scene) then
			return nextScenes
		end
	end

	-- Scenes have not changed
	return scenes
end
