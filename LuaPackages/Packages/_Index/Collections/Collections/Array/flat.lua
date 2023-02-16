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
local __DEV__ = _G.__DEV__
local Array = script.Parent
local Packages = Array.Parent.Parent
local isArray = require(Array.isArray)
local types = require(Packages.ES7Types)
type Array<T> = types.Array<T>
local function flat<T>(array: Array<T>, depth_: number?): Array<T>
	if __DEV__ then
		if typeof(array) ~= "table" then
			error(string.format("Array.flat called on %s", typeof(array)))
		end
		if depth_ ~= nil and typeof(depth_) ~= "number" then
			error("depth is not a number or nil")
		end
	end
	local depth = depth_ or 1
	local newArray = {}

	for _, v in array do
		if isArray(v) then
			local vArray = (v :: any) :: Array<T>
			local innerArrFlat: Array<T> = if depth > 1 then flat(vArray, depth - 1) else vArray
			for _, innerValue in innerArrFlat do
				table.insert(newArray, innerValue)
			end
		else
			table.insert(newArray, v)
		end
	end

	return newArray
end

return flat
