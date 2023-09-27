--!strict
--[[
	Parses the component source to create a table of the component's props.

	DocParser.new(component, file)
		Creates a new DocParser for parsing the source of the component
		for the specified file. DocParsers that are initialized with stories 
		will look at the associated component file for parsing. Otherwise,
		the file parameter will be treated as the component.

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
			Typechecking = "Luau",
		}
]]

local Types = require(script.Parent.Types)
local FileUtils = require(script.Parent.FileUtils)
local PropParser = require(script.Parent.PropParser)

local Packages = script.Parent.Parent
local Cryo = require(Packages.Cryo)

local DocParser = {}
DocParser.__index = DocParser

-- Check outside of constructor for minimized error messages
local canAccessScriptSource, _ = pcall(function()
	return script.Source
end)

if not canAccessScriptSource then
	warn(
		"🔌 DocParser is being used in a mode that cannot access script source."
			.. " Features relying on access to plugin source may not function as expected."
	)
end

function DocParser.new(component: string, file: ModuleScript)
	local self = setmetatable({
		name = nil :: string?,
		script = nil :: ModuleScript?,
	}, DocParser)

	-- Find the component file associated with the story
	local componentName = file.Name:match("(%w+)%.story")
	local isStory = componentName ~= nil
	if not isStory then
		-- print("📖 " .. file.Name .. " is not a story, treating as a component instead")
		componentName = file.Name
	end

	assert(componentName ~= nil, "Component name cannot be nil in this codepath")
	self.name = tostring(component)

	if isStory then
		if not canAccessScriptSource then
			-- No need for an extra print statement, this is handled in the initial pcall
			return self
		end

		local instance = FileUtils.findFileInstanceForImport(file, componentName)
		if instance == nil then
			-- Stories that are not named for the components they are testing are
			-- often parented to a folder of the component name... try that as well.
			assert(file.Parent ~= nil, "Story file cannot be orphaned")
			componentName = file.Parent.Name
			instance = FileUtils.findFileInstanceForImport(file, componentName)
		end

		if instance == nil then
			print("😞 Unable to find component file associated with " .. file.Name)
		else
			if DocParser._type(instance) == "table" then
				print("🪑 Found table " .. instance.Name .. " instead of instance for " .. file.Name)
			else
				if instance:IsA("Folder") then
					local child = instance:FindFirstChild(componentName)

					if child == nil then
						print(
							"📁 Found folder " .. instance:GetFullName() .. " instead of instance for " .. file.Name
						)
					else
						instance = child
					end
				end

				if instance:IsA("ModuleScript") then
					-- print("✅ Found " .. instance:GetFullName() .. " for story " .. file.Name)
					self.script = instance
				end
			end
		end
	else
		self.script = file
	end

	return self
end

-- Using a component's defined props / interface, generate documentation for the component.
local tableVarContentsPattern = "%s+=%s+%{\n(.-)\n%}"
local tInterfacePattern = "t%.s?t?r?i?c?t?[iI]nterface"
local componentPattern = "R[oe]act%.createElement%(%s*([%w%.]+)%s*,"
function DocParser:parse()
	local result = {
		Props = nil :: { Types.Prop }?,
		Typechecking = nil :: Types.Typechecking?,
	}

	local script: ModuleScript = self.script

	if script == nil or not canAccessScriptSource then
		return result
	end

	local source = script.Source

	local propsPattern, defaultPropsPattern
	if string.find(source, tInterfacePattern) then
		-- Warn files with t. style typing (commented out becuase it's not useful right now)
		-- warn(
		-- 	"🦖 Props for files with t.interface style typing are not recommended. Update "
		-- 		.. script.Name
		-- 		.. ".lua to use Luau types 🌼🌸🌺"
		-- )

		propsPattern = ".validateProps%s+=%s+" .. tInterfacePattern .. "%(%{\n(.-)\n%}%)"
		defaultPropsPattern = script.Name .. "%.defaultProps" .. tableVarContentsPattern

		result.Typechecking = Types.Typecheckers.T
	end

	local propsTypePattern = "local function " .. script.Name .. "%(%w-[pP]rops: (%w+)"
	local propsType = string.match(source, propsTypePattern)
	if propsType then
		propsPattern = "type%s+" .. propsType .. tableVarContentsPattern
		defaultPropsPattern = "defaultProps:%s+" .. propsType .. tableVarContentsPattern

		result.Typechecking = Types.Typecheckers.Luau
	elseif propsPattern == nil then
		-- TODO: Handle file requires better
		print("📝 Unable to find props definition in " .. script.Name)
		return result
	end

	local props = string.match(source, propsPattern)
	-- TODO: Handle type definitions located in other files

	local defaultProps = string.match(source, defaultPropsPattern)

	if not result.Typechecking or not props then
		print("💔 Couldn't find props for " .. script.Name)
	else
		result.Props = PropParser.parseProps(result.Typechecking, props, defaultProps)
	end

	local components = {}
	for component in string.gmatch(source, componentPattern) do
		components[component] = true
	end

	result.Components = Cryo.Dictionary.keys(components)

	return result
end

-- Wrapping calls to type() for unit tests
DocParser._type = function(instance: any)
	return type(instance)
end

return DocParser
