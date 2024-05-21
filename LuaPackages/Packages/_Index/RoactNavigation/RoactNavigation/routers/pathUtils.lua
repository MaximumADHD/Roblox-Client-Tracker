-- upstream https://github.com/react-navigation/react-navigation/blob/6390aacd07fd647d925dfec842a766c8aad5272f/packages/core/src/routers/pathUtils.js

local routersModule = script.Parent
local RoactNavigationModule = routersModule.Parent
local Packages = RoactNavigationModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local String = LuauPolyfill.String
local RegExp = require(Packages.RegExp)
local invariant = require(RoactNavigationModule.utils.invariant)
local NavigationActions = require(RoactNavigationModule.NavigationActions)
local pathToRegexpExports = require(routersModule.pathToRegexp)
local compile = pathToRegexpExports.compile
local pathToRegexp = pathToRegexpExports.pathToRegexp
local queryString = require(routersModule.queryString)
local ChildIsScreenRouterSymbol = require(routersModule:FindFirstChild("ChildIsScreenRouterSymbol.roblox"))
local NullPathSymbol = require(routersModule:FindFirstChild("NullPathSymbol.roblox"))

-- deviation: the engine supports URL encoding with `HttpService:URLEncode(...)` but there is no
-- method for decoding. Instead it uses this module that upstream depends on
local decodeURIComponent = require(routersModule.decodeURIComponent)

local exports = {}

function exports.getParamsFromPath(inputParams, pathMatch, pathMatchKeys)
	local params = Array.reduce(
		Array.slice(pathMatch, 2),
		-- // iterate over matched path params
		function(paramsOut, matchResult, i)
			local key = pathMatchKeys[i]
			-- deviation: RoactNavigation use a more recent version of pathToRegexp that uses `.*` as
			-- a wild card pattern instead of just `*`
			if not key or key.pattern == ".*" then
				return paramsOut
			end
			local paramName = key.name

			local decodedMatchResult
			if matchResult then
				local success, result = pcall(decodeURIComponent, matchResult)
				if success then
					decodedMatchResult = result
				else
					-- ignore `URIError: malformed URI`
				end
			end

			paramsOut[paramName] = decodedMatchResult or matchResult
			return paramsOut
		end,
		-- start with the input(query string) params, which will get overridden by path params
		table.clone(inputParams)
	)
	return params
end

local function getRestOfPath(pathMatch, pathMatchKeys)
	-- deviation: RoactNavigation use a more recent version of pathToRegexp that uses `.*` as a wild card
	-- pattern instead of just `*`
	local rest = pathMatch[Array.findIndex(pathMatchKeys, function(k)
		return k.pattern == ".*"
	end) + 1]

	return rest
end

local function determineDelimiter(uri, uriPrefix)
	if Array.isArray(uriPrefix) then
		if #uriPrefix == 1 then
			return uriPrefix[1]
		end
		for _, prefix in uriPrefix do
			if String.startsWith(uri, prefix) then
				return prefix
			end
		end
		return nil
	end

	return uriPrefix
end

function exports.urlToPathAndParams(url, uriPrefix)
	local searchMatch = RegExp("^(.*)\\?(.*)$"):exec(url)
	local urlWithoutQuery = if searchMatch then searchMatch[2] else url
	local query = if searchMatch then searchMatch[3] else {}
	local params = queryString.parse(query)
	local delimiter = determineDelimiter(urlWithoutQuery, uriPrefix)
	if delimiter == nil or delimiter == "" then
		delimiter = "://"
	end
	local path = string.split(urlWithoutQuery, delimiter)[2]

	if path == nil then
		path = urlWithoutQuery
	end
	if path == "/" then
		path = ""
	end
	if string.sub(path, -1, -1) == "/" then
		path = string.sub(path, 1, -2)
	end

	return {
		path = path,
		params = params,
	}
end

function exports.createPathParser(childRouters, routeConfigs, config)
	local pathConfigs = config.paths or {}
	local disableRouteNamePaths = config.disableRouteNamePaths
	local pathsByRouteNames = {}
	local paths = {}

	-- // Build pathsByRouteNames, which includes a regex to match paths for each route. Keep in mind, the regex will pass for the route and all child routes. The code that uses pathsByRouteNames will need to also verify that the child router produces an action, in the case of isPathMatchable false (a null path).
	for routeName in childRouters do
		local pathPattern = nil

		-- // First check for paths on the router, then check the route config
		if pathConfigs[routeName] ~= nil then
			pathPattern = pathConfigs[routeName]
		else
			-- deviation: Lua can't index functions, so we make sure it's a table before trying
			-- to get the `path` field
			if type(routeConfigs[routeName]) == "table" then
				pathPattern = routeConfigs[routeName].path
			end
		end

		if pathPattern == nil then
			-- // If the user hasn't specified a path at all nor disableRouteNamePaths, then we assume the routeName is an appropriate path
			if disableRouteNamePaths then
				-- deviation: we treat null path with a special symbol
				pathPattern = NullPathSymbol
			else
				pathPattern = routeName
			end
		end

		invariant(
			-- deviation: we treat null path as empty string instead
			pathPattern == NullPathSymbol or type(pathPattern) == "string",
			"Route path for %s must be specified as a string, or RoactNavigation.NoPath.",
			routeName
		)

		-- // the path may be specified as null, which is similar to empty string because it allows child routers to handle the action, but it will not match empty paths
		local isPathMatchable = pathPattern ~= NullPathSymbol
		-- // pathPattern is a string with inline params, such as people/:id/*foo
		local exactReKeys = {}
		local exactRe = nil
		if isPathMatchable then
			exactRe = pathToRegexp(pathPattern, exactReKeys)
		end
		local extendedPathReKeys = {}
		local isWildcard = pathPattern == "" or not isPathMatchable
		-- deviation: we are using a more recent pathToRegexp version, so the syntax
		-- is not quite exactly the same. For a wildcard match, we need to specify `.*`
		-- instead of only `*`
		local extendedPathRe =
			pathToRegexp(if isWildcard then "(.*)" else ("%s/(.*)"):format(pathPattern), extendedPathReKeys)

		pathsByRouteNames[routeName] = {
			exactRe = exactRe,
			exactReKeys = exactReKeys,
			extendedPathRe = extendedPathRe,
			extendedPathReKeys = extendedPathReKeys,
			isWildcard = isWildcard,
			toPath = pathPattern == NullPathSymbol and function()
				return ""
			end or compile(pathPattern),
		}
	end

	paths = Object.entries(pathsByRouteNames)

	local function getActionForPathAndParams(pathToResolve, inputParams)
		-- // Attempt to match `pathToResolve` with a route in this router's routeConfigs, deferring to child routers
		if pathToResolve == nil then
			pathToResolve = ""
		end
		if inputParams == nil then
			inputParams = {}
		end

		for _, entry in paths do
			local routeName = entry[1]
			local path = entry[2]
			local exactRe = path.exactRe
			local exactReKeys = path.exactReKeys
			local extendedPathRe = path.extendedPathRe
			local extendedPathReKeys = path.extendedPathReKeys
			local childRouter = childRouters[routeName]

			local exactMatch = exactRe and exactRe:exec(pathToResolve)

			if exactMatch and exactMatch.n ~= 0 then
				local extendedMatch = extendedPathRe and extendedPathRe:exec(pathToResolve)
				local childAction = nil

				if extendedMatch and childRouter then
					local restOfPath = getRestOfPath(extendedMatch, extendedPathReKeys)
					childAction = childRouter.getActionForPathAndParams(restOfPath, inputParams)
				end

				return NavigationActions.navigate({
					routeName = routeName,
					params = exports.getParamsFromPath(inputParams, exactMatch, exactReKeys),
					action = childAction,
				})
			end
		end

		for _, entry in paths do
			local routeName = entry[1]
			local path = entry[2]
			local extendedPathRe = path.extendedPathRe
			local extendedPathReKeys = path.extendedPathReKeys
			local childRouter = childRouters[routeName]
			local extendedMatch = extendedPathRe and extendedPathRe:exec(pathToResolve)

			if extendedMatch and extendedMatch.n ~= 0 then
				local restOfPath = getRestOfPath(extendedMatch, extendedPathReKeys)
				local childAction = nil

				if childRouter then
					childAction = childRouter.getActionForPathAndParams(restOfPath, inputParams)
				end
				if not childAction then
					continue
				end

				return NavigationActions.navigate({
					routeName = routeName,
					params = exports.getParamsFromPath(inputParams, extendedMatch, extendedPathReKeys),
					action = childAction,
				})
			end
		end

		return nil
	end

	local function getPathAndParamsForRoute(route)
		local routeName = route.routeName
		local params = route.params
		local childRouter = childRouters[routeName]
		local routePath = pathsByRouteNames[routeName]
		local toPath = routePath.toPath
		local exactReKeys = routePath.exactReKeys
		local subPath = toPath(params)
		local nonPathParams = {}
		if params then
			local filteredPaths = Array.filter(Object.keys(params), function(paramName)
				return not Array.find(exactReKeys, function(k)
					return k.name == paramName
				end)
			end)
			for _, paramName in filteredPaths do
				nonPathParams[paramName] = params[paramName]
			end
		end

		-- deviation: we need to check if `childRouter` is equal to that symbol, because
		-- in Lua `undefined` and `null` both maps to `nil`. This symbol is used as a
		-- replacement for `null` routers in upstream. See StackRouter.lua for more
		-- information about this deviation.
		if childRouter and childRouter ~= ChildIsScreenRouterSymbol then
			-- // If it has a router it's a navigator.
			-- // If it doesn't have router it's an ordinary React component.
			local child = childRouter.getPathAndParamsForState(route)
			return {
				path = if subPath and subPath ~= "" then ("%s/%s"):format(subPath, child.path) else child.path,
				params = if child.params then Object.assign(nonPathParams, child.params) else nonPathParams,
			}
		end

		return {
			path = subPath,
			params = nonPathParams,
		}
	end

	return {
		getActionForPathAndParams = getActionForPathAndParams,
		getPathAndParamsForRoute = getPathAndParamsForRoute,
	}
end

return exports
