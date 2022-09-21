local root = script.Parent

local Location = require(root.Location)
local PathUtils = require(root.PathUtils)

type Location = Location.Location

export type Resolver = {
	getInstance: (self: Resolver, location: string) -> Instance?,
	getLocation: (self: Resolver, path: string) -> Location,
	_parent: Instance,
	_fileSystemPath: string,
}
type ResolverStatic = {
	new: (parent: Instance, fileSystemPath: string) -> Resolver,
}

local Resolver: Resolver & ResolverStatic = {} :: any
local ResolverMetatable = { __index = Resolver }

function Resolver.new(parent: Instance, fileSystemPath: string): Resolver
	return setmetatable({
		_parent = parent,
		_fileSystemPath = PathUtils.trimSeparators(fileSystemPath),
	}, ResolverMetatable) :: any
end

function Resolver:getInstance(location: string): Instance?
	return self:getLocation(location):getInstance()
end

function Resolver:getLocation(path: string): Location
	return Location.new(path, self._fileSystemPath, self._parent)
end

return Resolver
