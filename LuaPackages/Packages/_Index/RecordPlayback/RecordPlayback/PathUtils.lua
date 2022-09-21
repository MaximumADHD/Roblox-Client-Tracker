local SEPARATOR = "/"
local MAX_FILE_NAME_LENGTH = 50

local function trimEndSeparator(path: string): string
	if path == SEPARATOR then
		return path
	end

	return path:sub(1, if path:sub(-1, -1) == SEPARATOR then -2 else nil)
end

local function trimSeparators(path: string): string
	return path:sub(
		if path:sub(1, 1) == SEPARATOR then 2 else 1,
		if path:sub(-1, -1) == SEPARATOR then -2 else nil
	)
end

local function join(root: string, ...: string): string
	local components = table.pack(...)
	local trimmedComponents = { trimEndSeparator(root) }

	for i = 1, components.n do
		if i == components.n then
			trimmedComponents[i + 1] = components[i]
		else
			trimmedComponents[i + 1] = trimSeparators(components[i])
		end
	end

	return table.concat(trimmedComponents, SEPARATOR)
end

local function getComponents(path: string): { string }
	return trimSeparators(path):split(SEPARATOR)
end

local function parent(path: string): string?
	if path == "" or path == SEPARATOR then
		return nil
	end

	local pathComponents = getComponents(path)
	table.remove(pathComponents)

	if path:sub(1, 1) == SEPARATOR then
		return SEPARATOR .. table.concat(pathComponents, SEPARATOR)
	end

	return table.concat(pathComponents, SEPARATOR)
end

local function fileName(path: string): string?
	local pathComponents = getComponents(path)
	local last = pathComponents[#pathComponents]
	if last == nil or last == "" or last == SEPARATOR or last == "." or last == ".." then
		return nil
	end
	return last
end

local function fileStem(path: string): string?
	local maybeName = fileName(path)

	if maybeName == nil then
		return nil
	end

	-- FIXME: Luau does not know that `maybeName` is of type `string` at this point
	local name = maybeName :: string

	local parts = name:split(".")
	local totalParts = #parts

	if totalParts == 1 or (#parts == 2 and parts[1] == "") then
		return name
	end

	table.remove(parts)

	return table.concat(parts, ".")
end

local function sanitizeFileName(value: string): string
	local name = value:gsub("[^%a%d%.%-]", "_")
	return name:sub(1, MAX_FILE_NAME_LENGTH)
end

return {
	SEPARATOR = SEPARATOR,
	join = join,
	parent = parent,
	fileName = fileName,
	fileStem = fileStem,
	trimSeparators = trimSeparators,
	trimEndSeparator = trimEndSeparator,
	getComponents = getComponents,
	sanitizeFileName = sanitizeFileName,
}
