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
local flat = require(Array.flat)
local map = require(Array.map)
local types = require(Packages.ES7Types)
type Array<T> = types.Array<T>
type callbackFn<T, U> = (element: T, index: number, array: Array<T>) -> U
type callbackFnWithThisArg<T, U, V> = (thisArg: V, element: T, index: number, array: Array<T>) -> U

local function flatMap<T, U, V>(
	array: Array<T>,
	callback: callbackFn<T, U> | callbackFnWithThisArg<T, U, V>,
	thisArg: V?
): Array<U>
	if __DEV__ then
		if typeof(array) ~= "table" then
			error(string.format("Array.flatMap called on %s", typeof(array)))
		end
		if typeof(callback) ~= "function" then
			error("callback is not a function")
		end
	end
	return flat(map(array, callback, thisArg))
end

return flatMap
