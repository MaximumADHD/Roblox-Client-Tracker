local root = script.Parent

local PathUtils = require(root.PathUtils)

export type Location = {
	join: (self: Location, ...string) -> Location,
	resolvePath: (self: Location) -> string,
	getInstance: (self: Location) -> Instance?,
	getOrCreateInstance: (self: Location, className: string) -> Instance,
}

local Location = {}
local LocationMetatable = { __index = Location }

function Location.new(relativePath: string, rootPath: string, rootInstance: Instance): Location
	local location = setmetatable({
		_relativePath = PathUtils.trimEndSeparator(relativePath),
		_rootPath = rootPath,
		_rootInstance = rootInstance,
	}, LocationMetatable) :: any
	return location :: Location
end

function Location:join(...: string): Location
	return Location.new(PathUtils.join(self._relativePath, ...), self._rootPath, self._rootInstance)
end

function Location:resolvePath(): string
	return PathUtils.join(self._rootPath, self._relativePath)
end

function Location:getInstance(): Instance?
	local result = self._rootInstance

	for _, component in ipairs(PathUtils.getComponents(self._relativePath)) do
		if component == "" then
			error(("invalid path location provided `%s`"):format(self._relativePath), 2)
		end

		result = result:FindFirstChild(component)

		if result == nil then
			return nil
		end
	end

	return result
end

function Location:getOrCreateInstance(className): Instance
	local parent = self:_ensureParentInstance()
	local name = PathUtils.fileStem(self._relativePath)
	local existing = parent:FindFirstChild(name)
	if existing and existing:IsA(className) then
		return existing
	end

	local instance = Instance.new(className)
	instance.Name = name
	instance.Parent = parent
	return instance
end

function Location:_ensureParentInstance(): Instance
	local maybeParentPath = PathUtils.parent(self._relativePath)

	if maybeParentPath == nil then
		error(
			("invalid path location provided `%s` (unable to obtain parent path)"):format(
				self._relativePath
			),
			2
		)
	end

	-- FIXME: Luau does not know that `maybeParentPath` is of type `string` at this point
	local parentPath = maybeParentPath :: string

	if parentPath == "" then
		return self._rootInstance
	end

	local parent = self._rootInstance

	for _, component in ipairs(PathUtils.getComponents(parentPath)) do
		if component == "" then
			error(("invalid path location provided `%s`"):format(self._relativePath), 2)
		end

		local nextInstance = parent:FindFirstChild(component)

		if nextInstance == nil then
			nextInstance = Instance.new("Folder")
			nextInstance.Name = component
			nextInstance.Parent = parent
		end

		parent = nextInstance
	end

	return parent
end

return Location
