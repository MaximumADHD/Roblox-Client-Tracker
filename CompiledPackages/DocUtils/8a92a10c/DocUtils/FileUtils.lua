--!strict
--[[
	For finding the path associated with a single import in a file.

	Examples:
		local story = "
			local App = Packages.UIBlox.App
			local IconButton = require(App.Button.IconButton)
		"

		getImportPath(story, "App") -> "Packages.UIBlox.App"
		getImportPath(story, "IconButton") -> "App.Button.IconButton"
]]

local FileUtils = {}

local REQUIRE_SUFFIX = "!require"
function FileUtils.getImportPath(file: ModuleScript, importName: string): { string } | nil
	local importStatement = file.Source:match("local%s+" .. importName .. '%s+=%s+([%w%.%(%):"]-)\n')
	if importStatement == nil then
		return nil
	end

	local path = importStatement

	-- Make sure to exclude component definitions
	local componentPattern = "Roact%.%w-Component:extend"
	if importStatement:match(componentPattern) then
		return nil
	end

	local requirePattern = "require%((.*)%)"
	local requirePath = importStatement:match(requirePattern)
	if requirePath then
		local pathComponents = requirePath:split(".")
		local length = #pathComponents
		local index = if length > 1 then length else 1
		pathComponents[index] ..= REQUIRE_SUFFIX
		return pathComponents
	end

	local findFirstAncestorPattern = '(%w-):FindFirstAncestor%("(.-)"%)'
	local instance, ancestor = importStatement:match(findFirstAncestorPattern)
	if instance and ancestor then
		path = instance .. ".FindFirstAncestor." .. ancestor
	end

	local getServicePattern = 'game:GetService%("(.-)"%)'
	local service = importStatement:match(getServicePattern)
	if service then
		path = "GetService." .. service
	end

	return path:split(".")
end

--[[
	For constructing the full path for an import in a file.
	The path must begin with script or another known global (i.e. game:GetService)
	for it to be considered valid and returned.
	
	Example:
		local story = "
			local Packages = script.Parent.Parent
			local App = Packages.UIBlox.App
			local IconButton = require(App.Button.IconButton)
		"
		constructPathForImport(story, "IconButton")
			-> {"script", "Parent", "Parent", "Packages", "UIBlox", "App", "Button", "IconButton"}
]]

function FileUtils.constructPathForImport(file: ModuleScript, importName: string): { string } | nil
	local path = FileUtils.getImportPath(file, importName)
	if path == nil then
		return nil
	end

	assert(path ~= nil, "Path cannot be nil in this codepath")

	local i = 1
	while path[1] ~= "script" and path[1] ~= "GetService" and i < 20 do
		local rootName = path[1]:gsub(REQUIRE_SUFFIX, "")
		local rootPath = FileUtils.getImportPath(file, rootName)

		if rootPath == nil then
			return nil
		end

		assert(rootPath ~= nil, "Root path cannot be nil in this codepath")

		table.remove(path, 1)
		for j = #rootPath, 1, -1 do
			table.insert(path, 1, rootPath[j])
		end
		i += 1
	end

	if i == 20 then
		warn("⌛ Exceeded searching length for " .. importName .. " in " .. file.Name)
	end

	return path
end

--[[
	For finding the file instance associated with a file import.

	Example:
		local story = "
			local Packages = script.Parent.Parent
			local App = Packages.UIBlox.App
			local IconButton = require(App.Button.IconButton)
		"

		findFileInstanceForImport(story, "IconButton")
			-> IconButton.lua, at path script.Parent.Parent.UIBlox.App.Button.IconButton
]]

function FileUtils.findFileInstanceForImport(file: ModuleScript, importName: string): Instance?
	local pathComponents = FileUtils.constructPathForImport(file, importName)
	if pathComponents == nil then
		return nil
	end

	assert(pathComponents ~= nil, "Path components cannot be nil in this codepath")

	local instance: Instance?, findFirstAncestor, getService = nil, false, false
	for i, pathComponent in ipairs(pathComponents) do
		if i > 1 and instance == nil then
			print(
				"👻 Instance is nil at "
					.. pathComponent :: string
					.. "; path "
					.. table.concat(pathComponents, ".")
					.. " in file "
					.. file:GetFullName()
			)
			return nil
		end

		if pathComponent == "script" then
			instance = file
		elseif pathComponent == "Parent" then
			assert(instance ~= nil, "Instance cannot be nil in this codepath")
			instance = instance.Parent
		elseif pathComponent == "FindFirstAncestor" then
			findFirstAncestor = true
		elseif pathComponent == "GetService" then
			getService = true
		else
			assert(instance ~= nil, "Instance cannot be nil in this codepath")
			if findFirstAncestor then
				instance = instance:FindFirstAncestor(pathComponent)
				findFirstAncestor = false
			elseif getService then
				instance = game:GetService(pathComponent)
				getService = false
			else
				local requiredPathComponent = pathComponent:match("(.*)" .. REQUIRE_SUFFIX)
				if requiredPathComponent then
					-- For now, ignore until we have require support. Instance stays the same.
					pathComponent = requiredPathComponent
				end

				instance = instance:FindFirstChild(pathComponent)
			end
		end
	end

	return instance
end

return FileUtils
