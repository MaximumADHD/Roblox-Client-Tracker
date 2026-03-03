--[[
	Parses the header comment of a component to create a table of the component's
	documentation, which can be used to	validate the component's props.

	DocParser.new(component, script)
		Creates a new DocParser for parsing the comments for the given component.

	DocParser:parse()
		Parses the leading comment at the top of the component defined in script.
		This returns a table of documentation in plain text strings.
		Example returned table:
		{
			Summary = "A component with a size prop!", -- Component summary
			Props = { -- All props
				{
					Name = "Size",
					Type = "UDim2",
					IsOptional = true,
					Default = "UDim2.new(1, 0, 1, 0)",
					Comment = "The size of the component.",
				},
			},
			Style = {}, -- Style values
		}

	DocParser.toInterface(docs)
		Generates a t StrictInterface for a component's props and style,
		based on the docs that were provided from a DocParser's parse function.

	Typecheck uses interfaces from Osyris's "t" library.
	For more info, see: https://github.com/osyrisrblx/t
]]

local Framework = script:FindFirstAncestor("Util").Parent
local Roact = require(Framework.Parent.Roact)
local Symbol = require(Framework.Util.Symbol)
local Dash = require(Framework.Parent.Dash)

local DocUtils = if Framework.Parent:FindFirstChild("DocUtils") then require(Framework.Parent.DocUtils) else nil

local FrameworkTypes = require(script.Parent.FrameworkTypes)

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = if React then React.Tag ~= nil else false

local t = require(script.Parent.t)

local HEADER_REQUIRED = "Required Props:"
local HEADER_OPTIONAL = "Optional Props:"
local HEADER_STYLE = "Style Values:"

local PATTERN_PROPS = "export%stype%sProps[%b<>]?%s*=%s*%{\n(.-)\n%}"
local PATTERN_STYLE = "export%stype%sStyle[%b<>]?%s*=%s*%{\n(.-)\n%}"
local PATTERN_COMPONENT = "R[oe]act%.createElement%(%s*([%w%.]+)%s*,"
local PATTERN_DEFAULT_PROPS = "%.defaultProps%s*=%s*%{\n(.-)\n%}"

local ERROR_NO_COMMENTS = [[
DocParser:parse expects a block comment at the beginning of the file.]]

local ERROR_HEADER = string.format(
	[[
DocParser:parse expects headers to equal `%s`, `%s`, or `%s` only.]],
	HEADER_REQUIRED,
	HEADER_OPTIONAL,
	HEADER_STYLE
)

local ERROR_FORMATTING = [[
DocParser:parse expects `typename Propname: comment` format for prop definitions.]]

local ERROR_INDENTATION = [[
DocParser:parse expects 1 tab for headers, 2 tabs for prop definitions, and 3 tabs for multilined prop comments.]]

local ERROR_MISSING_HEADER = [[
DocParser:parse expects a header before prop definitions.]]

local LINE_TRACEBACK = [[%s
%s.lua, line %d]]

local ParseMode = {
	Summary = Symbol.named("Summary"),
	Required = Symbol.named("Required"),
	Optional = Symbol.named("Optional"),
	Style = Symbol.named("Style"),
}

type PropTypeQualifier = "Array" | "Interface"
type PropType = { Qualifier: PropTypeQualifier, Props: { Prop } }
type Prop = {
	Name: string,
	Type: string | PropType,
	IsOptional: boolean,
	Default: any?,
	Comment: string?,
}

local DocParser = {}
DocParser.__index = DocParser

function DocParser.new(component, script)
	local self = {
		name = tostring(component),
		script = script,
		line = 1,
	}

	setmetatable(self, DocParser)
	return self
end

-- Using a component's opening comment block, generate documentation for the component.
function DocParser:parse()
	local script = self.script
	assert(t.instanceIsA("LuaSourceContainer")(script))

	local source = script.Source
	local closing = source:find("]]")
	self:__assert(closing, ERROR_NO_COMMENTS)

	local opening = source:find("^%-%-")
	self:__assert(opening == 1, ERROR_NO_COMMENTS)

	-- "--[[\n" totals 5 characters, + 1 to start at comment start
	-- "\n]]" totals 3 characters
	local comments = source:sub(6, closing - 3)

	local defaultPropsPattern = `{script.Name}{PATTERN_DEFAULT_PROPS}`
	local defaultProps = string.match(source, defaultPropsPattern)

	-- Add back last newline for simpler regexing for default props
	if defaultProps then
		defaultProps ..= "\n"
	end
	return self:parseComments(comments, defaultProps)
end

-- Parse a source file for an exported Props type containing component's Prop information
function DocParser:parseProps(): { Prop }
	local script = self.script
	local source = script.Source

	local defaultProps = string.match(source, `{script.Name}{PATTERN_DEFAULT_PROPS}`)
	local props = string.match(source, PATTERN_PROPS)
	if props and DocUtils then
		return DocUtils.PropParser.parseProps(DocUtils.DocTypes.Typecheckers.Luau, props, defaultProps)
	end
	return {}
end

-- Parse a source file for an exported Style type containing component's Style table information
function DocParser:parseStyle(): { Prop }?
	local script = self.script
	local source = script.Source

	local style = string.match(source, PATTERN_STYLE)
	if style and DocUtils then
		return DocUtils.PropParser.parseProps(DocUtils.DocTypes.Typecheckers.Luau, style)
	end
	return nil
end

-- Parse a source file for all usages of other components
function DocParser:parseDependencies(): { string }?
	local script = self.script
	local source = script.Source

	local components = {}
	for component in string.gmatch(source, PATTERN_COMPONENT) do
		components[component] = true
	end
	if next(components) then
		return Dash.keys(components)
	end
	return nil
end

-- Parse the given comments string to generate documentation.
function DocParser:parseComments(comments, defaultProps)
	assert(t.string(comments))

	local result = {
		Props = {},
		Style = {},
		Summary = nil,
	}

	local parseMode = ParseMode.Summary

	local lines = comments:gsub("\r", ""):split("\n")
	for lineNum, line in ipairs(lines) do
		self.line = lineNum + 1
		local tabs = 0
		for _ in string.gmatch(line, "\t") do
			tabs = tabs + 1
		end
		local rawLine = line:sub(tabs + 1)
		if rawLine == HEADER_REQUIRED then
			parseMode = ParseMode.Required
		elseif rawLine == HEADER_OPTIONAL then
			parseMode = ParseMode.Optional
		elseif rawLine == HEADER_STYLE then
			parseMode = ParseMode.Style
		elseif tabs == 1 and rawLine:find(":") then
			self:__assert(false, ERROR_HEADER)
		else
			if parseMode == ParseMode.Summary and #rawLine > 0 then
				self:__assert(not (tabs == 2 and rawLine:find(":")), ERROR_MISSING_HEADER)
				self:__assert(tabs == 1, ERROR_INDENTATION)
				result.Summary = result.Summary and string.format("%s\n%s", result.Summary, rawLine) or rawLine
			elseif parseMode == ParseMode.Required then
				self:__parseProp(result.Props, defaultProps, tabs, rawLine, false)
			elseif parseMode == ParseMode.Optional then
				self:__parseProp(result.Props, defaultProps, tabs, rawLine, true)
			elseif parseMode == ParseMode.Style then
				self:__parseProp(result.Style, defaultProps, tabs, rawLine, true)
			end
		end
	end

	return result
end

-- Static function to convert a docs table into a t interface.
function DocParser.toInterface(docs)
	assert(t.strictInterface({
		Summary = t.optional(t.string),
		Props = t.table,
		Style = t.table,
	})(docs))

	local propsTable = {
		[Roact.Children] = t.optional(t.table),
		[Roact.Ref] = t.optional(FrameworkTypes.RoactRef),
		[Roact.Change.AbsoluteSize] = t.optional(t.callback),
	}
	if supportsStyleSheets then
		propsTable[React.Tag] = t.optional(t.string)
	end
	local styleTable = {}

	for _, prop in pairs(docs.Props) do
		DocParser.__addCheckForProp(propsTable, prop)
	end

	for _, prop in pairs(docs.Style) do
		DocParser.__addCheckForProp(styleTable, prop)
	end

	local propsInterface = t.strictInterface(propsTable)
	local styleInterface = next(styleTable) and t.interface(styleTable) or nil

	return propsInterface, styleInterface
end

-- Private helper function to print a traceback with a file name and line number
-- if the parser runs into a problem.
function DocParser:__assert(value, errorText)
	if not value then
		assert(false, LINE_TRACEBACK:format(errorText, self.name, self.line))
	end
end

-- Private helper function to add a prop's info to the given addTable, as strings
function DocParser:__parseProp(addTable, defaultProps, tabs, line, isOptional)
	if #line > 0 then
		if tabs == 2 then
			-- Add a new prop
			local separator = line:find(":")
			self:__assert(separator, ERROR_FORMATTING)
			local prop = line:sub(1, separator - 1)
			local values = prop:split(" ")
			self:__assert(#values == 2, ERROR_FORMATTING)
			local propName = values[2]
			local propType = values[1]
			local comment = line:sub(separator + 2)

			local defaultValue = nil
			if isOptional and defaultProps then
				-- Find default value
				defaultValue = string.match(defaultProps, propName .. "%s=%s([^\n]-),\n")
			end

			table.insert(addTable, {
				Name = propName,
				Type = propType,
				IsOptional = isOptional,
				Default = defaultValue,
				Comment = comment,
			})
		elseif tabs > 2 then
			-- Add additional comments to the current prop
			local currentComment = addTable[#addTable].Comment
			addTable[#addTable].Comment = currentComment and string.format("%s\n%s", currentComment, line) or line
		else
			self:__assert(false, ERROR_INDENTATION)
		end
	end
end

-- Private helper function used by toInterface to create a t check from a prop.
function DocParser.__addCheckForProp(addTable, prop)
	local propName = prop.Name
	local propType = prop.Type
	local isOptional = prop.IsOptional
	local existingProp = addTable[propName]
	local newProp
	local isEnum = string.find(propType, "Enum")
	local isArray = string.find(propType, "array[", nil, true)
	if isEnum then
		newProp = t.enum(Enum[propType:sub(isEnum + 5)])
	elseif isArray then
		local elementType = t[propType:sub(isArray + 6, propType:len() - 1)]
		if elementType then
			newProp = t.array(elementType)
		end
	else
		newProp = FrameworkTypes[propType] or t[propType]
	end
	assert(newProp, string.format("`%s` is not a valid t type.", propType))
	if isOptional then
		newProp = t.optional(newProp)
	end

	-- Special case for properties that look like `callback Roact.Change.Enabled: ...`
	-- We need to match that up to the specific symbol in the Roact API
	if propName:sub(1, 6) == "Roact." then
		if propName:sub(7, 13) == "Change." then
			propName = Roact.Change[propName:sub(14)]
		elseif propName:sub(7, 12) == "Event." then
			propName = Roact.Event[propName:sub(13)]
		elseif propName == "Roact.Ref" then
			propName = Roact.Ref
		end
	end

	if existingProp ~= nil then
		addTable[propName] = t.union(existingProp, newProp)
	else
		addTable[propName] = newProp
	end
end

return DocParser
