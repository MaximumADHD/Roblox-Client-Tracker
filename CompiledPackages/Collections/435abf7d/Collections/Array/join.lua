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
local map = require(Array.map)

return function<T>(arr: Array<T>, separator: string?): string
	if #arr == 0 then
		return ""
	end
	-- JS does tostring conversion implicitely but in Lua we need to do that explicitely
	local stringifiedArray = map(arr, function(item)
		return tostring(item)
	end)

	return table.concat(stringifiedArray, separator or ",")
end
