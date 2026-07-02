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

-- Implements equivalent functionality to JavaScript's `array.indexOf`,
-- implementing the interface and behaviors defined at:
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/indexOf
--
-- This implementation is loosely based on the one described in the polyfill
-- source in the above link
return function<T>(array: Array<T>, searchElement: T, fromIndex: number?): number
	local fromIndex_ = fromIndex or 1
	local length = #array

	-- In the JS impl, a negative fromIndex means we should use length - index;
	-- with Lua, of course, this means that 0 is still valid, but refers to the
	-- end of the array the way that '-1' would in JS
	if fromIndex_ < 1 then
		fromIndex_ = math.max(length - math.abs(fromIndex_), 1)
	end

	for i = fromIndex_, length do
		if array[i] == searchElement then
			return i
		end
	end

	return -1
end
