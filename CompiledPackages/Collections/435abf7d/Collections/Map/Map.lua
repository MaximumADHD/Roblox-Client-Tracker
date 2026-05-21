--[[
	* Copyright (c) Roblox Corporation. All rights reserved.
	* Licensed under the MIT License (the "License");
	* you may not use this file except in compliance with the License.
	* You may obtain a copy of the License at
	*
	*     https://opensource.org/licenses/MIT
	*
	* Unless required by applicable law or agreed to in writing, software
	* distributed under the License is distributed on an "AS IS" BASIS,
	* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	* See the License for the specific language governing permissions and
	* limitations under the License.
]]
--!strict
local __DEV__ = _G.__DEV__
local Collections = script.Parent.Parent
local Packages = Collections.Parent

local arrayForEach = require(Collections.Array.forEach)
local arrayMap = require(Collections.Array.map)
local isArray = require(Collections.Array.isArray)
local instanceof = require(Packages.InstanceOf)
local types = require(Packages.ES7Types)
type Object = types.Object
type Array<T> = types.Array<T>
type Table<T, V> = types.Table<T, V>
type Tuple<T, V> = types.Tuple<T, V>
type mapCallbackFn<K, V> = types.mapCallbackFn<K, V>
type mapCallbackFnWithThisArg<K, V> = types.mapCallbackFnWithThisArg<K, V>
type Map<K, V> = types.Map<K, V>

type Map_Statics = {
	new: <K, V>(iterable: Array<Array<any>>?) -> Map<K, V>,
}

local Map: Map<any, any> & Map_Statics = ({} :: any) :: Map<any, any> & Map_Statics

function Map.new<K, V>(iterable: (Array<Array<any>> | Map<K, V>)?): Map<K, V>
	local array
	local map
	if iterable == nil then
		array = {}
		map = {}
	elseif isArray(iterable) then
		if __DEV__ then
			if #(iterable :: Array<Array<any>>) > 0 and typeof((iterable :: Array<Array<any>>)[1]) ~= "table" then
				error(
					"Value `"
						.. typeof((iterable :: Array<Array<any>>)[1])
						.. "` is not an entry object.\n "
						.. "Cannot create Map from {K, V} form, it must be { {K, V}... }"
				)
			end
		end
		array = table.create(#(iterable :: Array<Array<any>>))
		map = {}
		for _, entry in iterable :: Array<Array<any>> do
			local key = entry[1]
			if __DEV__ then
				if key == nil then
					error("cannot create Map from a table that isn't an array.")
				end
			end
			local val = entry[2]
			-- only add to array if new
			if map[key] == nil then
				table.insert(array, key)
			end
			-- always assign
			map[key] = val
		end
	elseif instanceof(iterable, Map) then
		array = table.clone((iterable :: Map<K, V>)._array)
		map = table.clone((iterable :: Map<K, V>)._map)
	else
		error(("`%s` `%s` is not iterable, cannot make Map using it"):format(typeof(iterable), tostring(iterable)))
	end

	return (setmetatable({
		size = #array,
		_map = map,
		_array = array,
	}, Map) :: any) :: Map<K, V>
end

-- TODO Luau: annoying type erasure here, probably needs the new Records language feature
function Map:set(key: any, value: any): Map<any, any>
	-- preserve initial insertion order
	if self._map[key] == nil then
		-- Luau FIXME: analyze should know self is Map<K, V> which includes size as a number
		self.size = self.size :: number + 1
		table.insert(self._array, key)
	end
	-- always update value
	self._map[key] = value
	return self
end

function Map:get(key)
	return self._map[key]
end

function Map:clear()
	local table_: any = table
	self.size = 0
	table_.clear(self._map)
	table_.clear(self._array)
end

function Map:delete(key): boolean
	if self._map[key] == nil then
		return false
	end
	-- Luau FIXME: analyze should know self is Map<K, V> which includes size as a number
	self.size = self.size :: number - 1
	self._map[key] = nil
	local index = table.find(self._array, key)
	if index then
		table.remove(self._array, index)
	end
	return true
end

-- Implements Javascript's `Map.prototype.forEach` as defined below
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/forEach
function Map:forEach(callback: mapCallbackFn<any, any> | mapCallbackFnWithThisArg<any, any>, thisArg: Object?): ()
	if __DEV__ then
		if typeof(callback) ~= "function" then
			error("callback is not a function")
		end
	end
	-- note: we can't turn this into a simple for-in loop, because the callbacks can modify the table and React, GQL, and Jest rely on JS behavior in that scenario
	arrayForEach(self._array, function(key)
		local value = self._map[key]

		if thisArg ~= nil then
			(callback :: mapCallbackFnWithThisArg<any, any>)(thisArg, value, key, self)
		else
			(callback :: mapCallbackFn<any, any>)(value, key, self)
		end
	end)
end

function Map:has(key): boolean
	return self._map[key] ~= nil
end

function Map:keys()
	return self._array
end

function Map:values()
	return arrayMap(self._array, function(key)
		return self._map[key]
	end)
end

function Map:entries()
	return arrayMap(self._array, function(key)
		return { key, self._map[key] }
	end)
end

function Map:ipairs()
	if __DEV__ then
		warn(
			debug.traceback(
				"`for _,_ in myMap:ipairs() do` is deprecated and will be removed in a future release, please use `for _,_ in myMap do` instead\n",
				2
			)
		)
	end
	return ipairs(self:entries())
end

function Map.__iter(self: Map<any, any>)
	return next, self:entries()
end

function Map.__index(self: Map<any, any>, key)
	local mapProp = rawget(Map, key)
	if mapProp ~= nil then
		return mapProp
	end
	if __DEV__ then
		assert(
			-- FIXME Luau: shouldn't need this cast, the self param is annotated already
			rawget(self :: any, "_map"),
			"Map has been corrupted, and is missing private state! Did you accidentally call table.clear() instead of map:clear()?"
		)
	end

	return Map.get(self, key)
end

function Map.__newindex(self: Map<any, any>, key, value)
	self:set(key, value)
end

return Map
