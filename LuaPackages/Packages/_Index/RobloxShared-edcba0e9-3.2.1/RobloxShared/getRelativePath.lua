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
-- ROBLOX NOTE: no upstream

local function getRelativePath(script_: Instance, rootDir: Instance?): string
	local path = script_.Name

	local curr: Instance = script_
	while curr.Parent and curr ~= rootDir do
		curr = curr.Parent
		path = curr.Name .. "/" .. path
	end

	return if rootDir ~= nil then path else "/" .. path
end

return getRelativePath
