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
local Array = script.Parent
local Packages = Array.Parent.Parent
local isArray = require(Array.isArray)
local types = require(Packages.ES7Types)
type Array<T> = types.Array<T>

return function<T>(array: Array<T>, ...: T): number
	if __DEV__ then
		if not isArray(array) then
			error(string.format("Array.unshift called on non-array %s", typeof(array)))
		end
	end

	local numberOfItems = select("#", ...)
	if numberOfItems > 0 then
		for i = numberOfItems, 1, -1 do
			local toInsert = select(i, ...)
			table.insert(array, 1, toInsert)
		end
	end

	return #array
end
