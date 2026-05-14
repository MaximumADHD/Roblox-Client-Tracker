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
local Object = script.Parent
local Packages = Object.Parent.Parent

local types = require(Packages.ES7Types)
type Array<T> = types.Array<T>
type Object = types.Object

return function(t: Object | Array<any>): boolean
	if __DEV__ then
		print("Luau now has a direct table.isfrozen call that can save the overhead of this library function call")
	end
	return table.isfrozen(t)
end
