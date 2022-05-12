-- upstream https://github.com/react-navigation/react-navigation/blob/62da341b672a83786b9c3a80c8a38f929964d7cc/packages/core/src/views/withNavigation.js

return function(navigation)
	if not navigation then
		return {}
	end

	if not navigation._childrenNavigation then
		navigation._childrenNavigation = {}
	end

	local childrenNavigationCache = navigation._childrenNavigation

	local childKeys = {}
	for _, route in ipairs(navigation.state.routes or {}) do
		childKeys[route.key] = true
	end

	if not navigation.state.isTransitioning then
		for cacheKey, _ in pairs(childrenNavigationCache) do
			if not childKeys[cacheKey] then
				childrenNavigationCache[cacheKey] = nil
			end
		end
	end

	return navigation._childrenNavigation
end
