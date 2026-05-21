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
local Collections = script.Parent
local Packages = Collections.Parent

local ES7Types = require(Packages.ES7Types)

type WeakMap<K, V> = ES7Types.WeakMap<K, V>

type WeakMapPrivate<K, V> = {
	_weakMap: { [K]: V },
	-- method definitions
	get: (self: WeakMapPrivate<K, V>, K) -> V,
	set: (self: WeakMapPrivate<K, V>, K, V) -> WeakMapPrivate<K, V>,
	has: (self: WeakMapPrivate<K, V>, K) -> boolean,
}
type WeakMap_Statics = {
	new: <K, V>() -> WeakMap<K, V>,
}

local WeakMap: WeakMapPrivate<any, any> & WeakMap_Statics = {} :: any;
(WeakMap :: any).__index = WeakMap

function WeakMap.new<K, V>(): WeakMap<K, V>
	local weakMap = setmetatable({}, { __mode = "k" })
	return setmetatable({ _weakMap = weakMap }, WeakMap) :: any
end

function WeakMap:get(key)
	return self._weakMap[key]
end

function WeakMap:set(key, value)
	self._weakMap[key] = value
	return self
end

function WeakMap:has(key): boolean
	return self._weakMap[key] ~= nil
end

return WeakMap :: WeakMap<any, any> & WeakMap_Statics
