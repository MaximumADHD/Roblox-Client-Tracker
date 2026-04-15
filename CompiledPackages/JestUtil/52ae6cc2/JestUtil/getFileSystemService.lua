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

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error

local RobloxShared = require(Packages.RobloxShared)
local getDataModelService = RobloxShared.getDataModelService

local function getFileSystemService()
	local success, result = pcall(function()
		return _G.__MOCK_FILE_SYSTEM__ or getDataModelService("FileSystemService")
	end)

	if not success then
		error(Error.new("Attempting to save snapshots in an environment where FileSystemService is inaccessible."))
	end

	return result
end

return getFileSystemService
