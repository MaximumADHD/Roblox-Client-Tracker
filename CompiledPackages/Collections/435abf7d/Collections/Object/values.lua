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
local Object = script.Parent
local Packages = Object.Parent.Parent

local types = require(Packages.ES7Types)
type Array<T> = types.Array<T>

-- TODO Luau: needs overloads to model this more correctly
return function<T>(value: { [string]: T } | Array<T> | string): Array<T> | Array<string>
	if value == nil then
		error("cannot extract values from a nil value")
	end
	local valueType = typeof(value)

	local array: Array<T> | Array<string>
	if valueType == "table" then
		array = {} :: Array<T>
		for _, keyValue in pairs(value :: { [string]: T } | Array<T>) do
			table.insert(array, keyValue)
		end
	elseif valueType == "string" then
		-- optimization to avoid rehashing/growth
		local valueStringLength = (value :: string):len()
		array = table.create(valueStringLength)
		for i = 1, valueStringLength do
			(array :: Array<string>)[i] = (value :: string):sub(i, i)
		end
	end

	return array
end
