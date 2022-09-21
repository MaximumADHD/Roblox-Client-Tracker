local root = script.Parent
local Packages = root.Parent

local SharedUtils = require(Packages.SharedUtils)
local try = SharedUtils.try

local tryGetService = require(root.tryGetService)
local Location = require(root.Location)
local PathUtils = require(root.PathUtils)
local SEPARATOR = PathUtils.SEPARATOR

type Location = Location.Location
type FileSystemService = tryGetService.FileSystemService
type FileSyncService = tryGetService.FileSyncService

export type File = {
	write: (self: File, content: string) -> (),
	_ensureParentDirectoryExists: (self: File, path: string) -> (),
	_location: Location,
	_fileSystemService: FileSystemService?,
	_fileSyncService: FileSyncService?,
	_warn: <T...>(T...) -> (),
}
type FileStatic = {
	new: (Location) -> File,
}

local File: File & FileStatic = {} :: any
local FileMetatable = { __index = File }

function File.new(location: Location): File
	return setmetatable({
		_location = location,
		_fileSystemService = tryGetService("FileSystemService"),
		_fileSyncService = tryGetService("FileSyncService"),
		_warn = warn,
	}, FileMetatable) :: any
end

function File:write(content: string)
	if self._fileSystemService then
		local path = self._location:resolvePath()
		assert(
			path:sub(-1) ~= SEPARATOR,
			("File location `%s` cannot end with `%s`"):format(path, SEPARATOR)
		)
		self:_ensureParentDirectoryExists(path)
		self._fileSystemService:WriteFile(path, content)
	else
		local messageBase = "Attempting to write file in an environment where FileSystemService is "
			.. "inaccessible.\n\n"
			.. "Instead, the file content has been written to a ModuleScript instance in the DataModel. "

		if self._fileSyncService then
			self._warn(
				messageBase
					.. "Since FileSyncService is available, the new ModuleScript should sync back "
					.. "to the file system."
			)
		else
			self._warn(
				"!!! "
					.. messageBase
					.. "Since FileSyncService is not available, the new ModuleScript will only live "
					.. "in the current DataModel"
			)
		end

		local newModule = self._location:getOrCreateInstance("ModuleScript") :: ModuleScript
		newModule.Source = content
	end
end

function File:_ensureParentDirectoryExists(path: string)
	local parentPath = PathUtils.parent(path)

	if parentPath == nil then
		return
	end

	local ok, err = try(function()
		local fileSystemService = self._fileSystemService :: FileSystemService
		if not fileSystemService:Exists(parentPath) then
			fileSystemService:CreateDirectories(parentPath)
		end
	end)

	if ok then
		return
	end

	if
		string.find(err.message, "Error(13): Access Denied. Path is outside of sandbox.", 1, true)
	then
		err.message = "Access Denied. Path is outside of sandbox: "
			.. path
			.. "\n\nProvided file system path is invalid: you likely need to provide a different"
			.. " argument to --fs.readwrite.\nYou may need to pass in `--fs.readwrite=$PWD`"
	end

	error(err)
end

return File
