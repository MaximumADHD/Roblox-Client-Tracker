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
local Array = script.Parent
local Packages = Array.Parent.Parent
local types = require(Packages.ES7Types)
type Array<T> = types.Array<T>
type Object = types.Object

-- note: JS version can return anything that's truthy, but that won't work for us since Lua deviates (0 is truthy)
type callbackFn<T> = (element: T, index: number, array: Array<T>) -> boolean
type callbackFnWithThisArg<T, U> = (thisArg: U, element: T, index: number, array: Array<T>) -> boolean

-- Implements Javascript's `Array.prototype.map` as defined below
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some
return function<T, U>(t: Array<T>, callback: callbackFn<T> | callbackFnWithThisArg<T, U>, thisArg: U?): boolean
	if typeof(t) ~= "table" then
		error(string.format("Array.some called on %s", typeof(t)))
	end
	if typeof(callback) ~= "function" then
		error("callback is not a function")
	end

	for i, value in t do
		if thisArg ~= nil then
			if value ~= nil and (callback :: callbackFnWithThisArg<T, U>)(thisArg, value, i, t) then
				return true
			end
		else
			if value ~= nil and (callback :: callbackFn<T>)(value, i, t) then
				return true
			end
		end
	end
	return false
end
