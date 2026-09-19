-- ROBLOX upstream: no upstream
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error

local FileSystemService = nil

-- ROBLOX comment: taken from jest-roblox
local function getFileSystemService()
	local success, result = pcall(function()
		-- ROBLOX comment: will complain about using "FileSystemService")
		return (game :: any):GetService("FileSystemService")
	end)

	return success and result or nil
end

-- ROBLOX comment: taken from jest-roblox
local function ensureDirectoryExists(filePath: string)
	local pathComponents = filePath:split("/")
	pathComponents = table.pack(table.unpack(pathComponents, 1, #pathComponents - 1))
	local path = table.concat(pathComponents, "/")
	local ok, err = pcall(function()
		if not FileSystemService:Exists(path) then
			FileSystemService:CreateDirectories(path)
		end
	end)

	if not ok and err:find("Error%(13%): Access Denied%. Path is outside of sandbox%.") then
		error(
			"Provided path is invalid: you likely need to provide a different argument to --fs.read.\n"
				.. "You may need to pass in `--fs.read=$PWD`"
		)
	end
end

return {
	readFileSync = function(path: string): string
		if FileSystemService == nil then
			FileSystemService = getFileSystemService()
		end
		if not FileSystemService then
			error(Error.new("Attempting to read file in an environment where FileSystemService is inaccessible."))
		end
		ensureDirectoryExists(path)
		return FileSystemService:ReadFile(path)
	end,
}
