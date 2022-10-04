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
local Array = script.Parent.Parent
local Packages = Array.Parent.Parent
local types = require(Packages.ES7Types)
type Object = types.Object
type Array<T> = types.Array<T>
type Set<T> = types.Set<T>
type mapFn<T, U> = (element: T, index: number) -> U
type mapFnWithThisArg<T, U> = (thisArg: any, element: T, index: number) -> U

return function<T, U>(
	value: Set<T>,
	mapFn: (mapFn<T, U> | mapFnWithThisArg<T, U>)?,
	thisArg: Object?
	-- FIXME Luau: need overloading so the return type on this is more sane and doesn't require manual casts
): Array<U> | Array<T> | Array<string>
	local array = {}

	if mapFn then
		array = {}
		for i, v in value :: any do
			if thisArg ~= nil then
				(array :: Array<U>)[i] = (mapFn :: mapFnWithThisArg<T, U>)(thisArg, v, i)
			else
				(array :: Array<U>)[i] = (mapFn :: mapFn<T, U>)(v, i)
			end
		end
	else
		array = table.clone((value :: any)._array)
	end

	return array
end
