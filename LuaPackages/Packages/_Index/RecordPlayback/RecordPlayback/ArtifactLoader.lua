local root = script.Parent
local Packages = root.Parent

local SharedUtils = require(Packages.SharedUtils)
local getDefaultValue = SharedUtils.getDefaultValue

local Artifacts = require(root.Artifacts)
local RequestWriter = require(root.RequestWriter)
local Resolver = require(root.Resolver)
local tryGetService = require(root.tryGetService)

type Resolver = Resolver.Resolver
type FileSystemService = tryGetService.FileSystemService

type LoadOptions = {
	useRequestsOnce: boolean?,
}
export type ArtifactLoader = {
	load: (self: ArtifactLoader, path: string, options: LoadOptions?) -> Artifacts.Artifacts?,
	getWriter: (self: ArtifactLoader, path: string) -> RequestWriter.RequestWriter,
	delete: (self: ArtifactLoader, path: string) -> (),
	_resolver: Resolver,
	_fileSystemService: FileSystemService?,
}

local DEFAULT_LOAD_OPTIONS = {
	useRequestsOnce = false,
}

type ArtifactLoaderStatic = {
	new: (Resolver) -> ArtifactLoader,
}

local ArtifactLoader: ArtifactLoader & ArtifactLoaderStatic = {} :: any
local ArtifactLoaderMetatable = { __index = ArtifactLoader }

function ArtifactLoader.new(resolver: Resolver): ArtifactLoader
	return (
		setmetatable({
			_resolver = resolver,
			_fileSystemService = tryGetService("FileSystemService"),
		}, ArtifactLoaderMetatable) :: any
	) :: any
end

function ArtifactLoader:load(path: string, options: LoadOptions?): Artifacts.Artifacts?
	local maybeParent = self._resolver:getInstance(path)

	if maybeParent == nil then
		return nil
	end

	-- FIXME: Luau does not know that `maybeParent` is of type `Instance` at this point
	local parent = maybeParent :: Instance

	local actualOptions = getDefaultValue(options, DEFAULT_LOAD_OPTIONS)

	local artifacts = Artifacts.new(parent)
	if getDefaultValue(actualOptions.useRequestsOnce, DEFAULT_LOAD_OPTIONS.useRequestsOnce) then
		artifacts:useRequestsOnce()
	end

	return artifacts
end

function ArtifactLoader:getWriter(path: string): RequestWriter.RequestWriter
	return RequestWriter.new(self._resolver:getLocation(path))
end

function ArtifactLoader:delete(path: string)
	local location = self._resolver:getLocation(path)

	if self._fileSystemService then
		local actualPath = location:resolvePath()
		if self._fileSystemService:Exists(actualPath) then
			self._fileSystemService:RemoveAll(actualPath)
		end
	else
		local parent = self._resolver:getInstance(path)
		if parent ~= nil then
			parent:ClearAllChildren()
		end
	end
end

return ArtifactLoader
