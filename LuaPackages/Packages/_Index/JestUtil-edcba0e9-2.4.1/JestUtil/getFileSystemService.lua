-- ROBLOX NOTE: no upstream

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error

local function getFileSystemService()
	local success, result = pcall(function()
		return _G.__MOCK_FILE_SYSTEM__ or game:GetService("FileSystemService")
	end)

	if not success then
		error(Error.new("Attempting to save snapshots in an environment where FileSystemService is inaccessible."))
	end

	return result
end

return getFileSystemService
