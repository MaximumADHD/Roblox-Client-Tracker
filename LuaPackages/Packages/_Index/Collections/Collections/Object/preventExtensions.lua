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
type Object = types.Object

-- FIXME: This should be updated to be closer to the actual
-- `Object.preventExtensions` functionality in JS. This requires additional
-- support from the VM
local function preventExtensions<T>(t: T & (Object | Array<any>)): T
	local name = tostring(t)

	return (
		setmetatable(t :: any, {
			__newindex = function(self, key, value)
				local message = ("%q (%s) is not a valid member of %s"):format(tostring(key), typeof(key), name)

				error(message, 2)
			end,
			__metatable = false,
		}) :: any
	) :: T
end

return preventExtensions
