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

local function devPrint(...)
	local inspected = {}
	for i = 1, select("#", ...) do
		local item = select(i, ...)
		inspected[i] = inspect(item)
	end
	print(table.unpack(inspected))
end

return devPrint
