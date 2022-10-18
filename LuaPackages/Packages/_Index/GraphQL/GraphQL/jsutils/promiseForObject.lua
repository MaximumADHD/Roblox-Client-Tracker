--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/promiseForObject.js
local jsutils = script.Parent
local graphql = jsutils.Parent
local Packages = graphql.Parent
local Promise = require(Packages.Promise)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object

local ObjMapModule = require(script.Parent.ObjMap)
type ObjMap<T> = ObjMapModule.ObjMap<T>

local function promiseForObject(object: ObjMap<any>)
	local keys = Object.keys(object)
	local valuesAndPromises = Array.map(keys, function(name)
		-- ROBLOX deviation: Promise.all accepts only promises, so wrap
		-- each value in a resolved promise
		local value = object[name]
		if Promise.is(value) then
			return value
		end
		return Promise.resolve(value)
	end)

	return Promise.all(valuesAndPromises):andThen(function(values)
		return Array.reduce(values, function(resolvedObject, value, i)
			resolvedObject[keys[i]] = value
			return resolvedObject
		end, {})
	end)
end

return {
	promiseForObject = promiseForObject,
}
