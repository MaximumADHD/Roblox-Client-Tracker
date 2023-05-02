--!strict
--[[
	Parses the component source to create a table of the component's props.

	DocParser.new(component, story)
		Creates a new DocParser for parsing the source of the component
		for the specified story.

	DocParser:parse()
		Parses the props defined in the component source.
		This returns a table of documentation, and works with t. and Luau typing.
    
    Summary and Style are not yet supported.

		Example response:
		{
			Props = {
				{
					Name = "Size",
					Type = "UDim2",
					IsOptional = true
					Comment = "The size of the component.",
					Default = UDim2.new(0, 100, 0, 100)
				},
			},
		}
]]

local Types = require(script.Parent.Types)
local FileUtils = require(script.Parent.FileUtils)
local PropParser = require(script.Parent.PropParser)

local DocParser = {}
DocParser.__index = DocParser

-- Check outside of constructor for minimized error messages
local canAccessScriptSource, _ = pcall(function ()
	return script.Source
end)

if not canAccessScriptSource then
	warn("🔌 Storybook is being run in a mode that cannot access script source."
		.. " Features relying on access to plugin source will not function as expected.")
end

function DocParser.new(component: string, story: ModuleScript)
	local self = setmetatable({
		name = nil :: string?,
		script = nil :: ModuleScript?,
	}, DocParser)

	-- Find the component file associated with the story
	local componentName = story.Name:match("(%w+)%.story")
	if componentName == nil then
		warn("📖 " .. story.Name .. " is not a story")
		return self
	end

	assert(componentName ~= nil, "Component name cannot be nil in this codepath")
	self.name = tostring(component)

	if not canAccessScriptSource then
		-- No need for an extra print statement, this is handled in the initial pcall
		return self
	end

	local instance = FileUtils.findFileInstanceForImport(story, componentName)
	if instance == nil then
		-- Stories that are not named for the components they are testing are
		-- often parented to a folder of the component name... try that as well.
		assert(story.Parent ~= nil, "Story file cannot be orphaned")
		componentName = story.Parent.Name
		instance = FileUtils.findFileInstanceForImport(story, componentName)
	end

	if instance == nil then
		print("😞 Unable to find component file associated with " .. story.Name)
	else
		if DocParser._type(instance) == "table" then
			print("🪑 Found table " .. instance.Name .. " instead of instance for " .. story.Name)
		elseif instance:IsA("Folder") then
			print("📁 Found folder " .. instance:GetFullName() .. " instead of instance for " .. story.Name)
		elseif instance:IsA("ModuleScript") then
			-- print("✅ Found " .. instance:GetFullName() .. " for story " .. story.Name)
			self.script = instance
		end
	end

	return self
end

-- Using a component's defined props / interface, generate documentation for the component.
local tableVarContentsPattern = "%s+=%s+%{\n(.-)\n%}"
local tInterfacePattern = "s?t?r?i?c?t?[iI]nterface"
function DocParser:parse()
	local result = {
		Props = nil :: Types.Props?,
	}

	local script: ModuleScript = self.script

	if script == nil then
		return result
	end

	local source = script.Source

	local propsPattern, defaultPropsPattern
	if string.find(source, "t%." .. tInterfacePattern) then
		-- Warn files with t. style typing
		warn(
			"🦖 Props for files with t.interface style typing are not recommended. Update "
				.. script.Name
				.. ".lua to use Luau types 🌼🌸🌺"
		)

		-- Strip out t. from everywhere, makes things complicated.
		source = source:gsub("[^%w]t%.", function(s)
			return s:sub(0, 1)
		end)

		propsPattern = "validateProps%s+=%s+" .. tInterfacePattern .. "%(%{\n(.-)\n%}%)"
		defaultPropsPattern = script.Name .. "%.defaultProps" .. tableVarContentsPattern
	end

	local propsTypePattern = "local function " .. script.Name .. "%(%w+: (%w+)%)\n"
	local propsType = string.match(source, propsTypePattern)
	if propsType then
		propsPattern = "type%s+" .. propsType .. tableVarContentsPattern
		defaultPropsPattern = "defaultProps:%s+" .. propsType .. tableVarContentsPattern
	elseif propsPattern == nil then
		-- TODO: Handle file requires better
		print("📝 Unable to find props definition in " .. script.Name)
		return result
	end

	local props = string.match(source, propsPattern)
	-- TODO: Handle type definitions located in other files

	local defaultProps = string.match(source, defaultPropsPattern)

	if not props then
		print("💔 Couldn't find props for " .. script.Name)
		return result
	end

	result.Props = PropParser.parseProps(props, defaultProps)
	return result
end

-- Wrapping calls to type() for unit tests
DocParser._type = function(instance: any)
	return type(instance)
end

return DocParser
