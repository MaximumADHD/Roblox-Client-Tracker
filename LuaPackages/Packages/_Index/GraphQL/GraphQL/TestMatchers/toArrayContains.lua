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
local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent
local inspect = require(Packages.LuauPolyfill).util.inspect
local arrayContains = require(srcWorkspace.luaUtils.arrayContains)

local function toArrayContains(tbl, item, looseEquals)
	local success = arrayContains(tbl, item, looseEquals)

	local message = ""
	if not success then
		-- TODO: find way to pretty print variables into output and expect it
		message = "received tbl: "
			.. inspect(item)
			.. " expected item to be in table: "
			.. inspect(tbl)
	end

	return {
		pass = success,
		message = message,
	}
end

return toArrayContains
