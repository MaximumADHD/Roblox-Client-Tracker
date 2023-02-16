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

return function<T>(value: Array<T>): T?
	if __DEV__ then
		if not isArray(value) then
			error(string.format("Array.shift called on non-array %s", typeof(value)))
		end
	end

	if #value > 0 then
		return table.remove(value, 1)
	else
		return nil
	end
end
