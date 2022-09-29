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
local Object = script.Parent
local Collections = Object.Parent
local Packages = Object.Parent.Parent

local Set = require(Collections.Set)
local types = require(Packages.ES7Types)
local instanceOf = require(Packages.InstanceOf)
type Array<T> = types.Array<T>
type Set<T> = types.Set<T>
type Table = { [any]: any }

return function(value: Set<any> | Table | string): Array<string>
	if value == nil then
		error("cannot extract keys from a nil value")
	end

	local valueType = typeof(value)

	local keys
	if valueType == "table" then
		keys = {}
		if instanceOf(value, Set) then
			return keys
		end

		for key in pairs(value :: Table) do
			table.insert(keys, key)
		end
	elseif valueType == "string" then
		local length = (value :: string):len()
		keys = table.create(length)
		for i = 1, length do
			keys[i] = tostring(i)
		end
	end

	return keys
end
