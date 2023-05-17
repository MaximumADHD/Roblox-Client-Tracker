--!strict
--[[
	Parses the component source to create a table of the component's props.

  PropParser.parseProps(props: string, defaultProps: string?, result: table)
  	Method for processing proptypes and default props
		Parses the given props tables to generate documentation.

		Examples:
			PropParser.parseProps("title: string?, -- Title of section", "title: "Happy""")
				-> {{
					Name = title,
					Type = string,
					IsOptional = true,
					Default = "Happy",
					Comment = "Title of section"
				}}
			PropParser._getProp("showOverlay: boolean?,") -> "showOverlay", "boolean", true

	PropParser._getProp(line: string)
		Helper method for dissecting a single prop definition.
		Returns propName, propType, and isOptional

		Examples:
			PropParser._getProp("title: string,") -> "title", "string", false
			PropParser._getProp("showOverlay: boolean?,") -> "showOverlay", "boolean", true
]]

local Types = require(script.Parent.Types)
local PropParser = {}

local commentPrefix = "(%s*)%-%-"
local commentSuffix = "%s*(.*)$"
local multilineCommentPattern = commentPrefix .. "%[%["
local commentPattern = commentPrefix .. commentSuffix
function PropParser.parseProps(props: string, defaultProps: string?)
	local result: Types.Props = {}

	-- If either input is missing a trailing newline, add it
	if not props:match("\n$") then
		props ..= "\n"
	end

	if defaultProps and not defaultProps:match("\n$") then
		defaultProps ..= "\n"
	end

	local currentComment: string? = nil
	local depth = 0
	local isMultilineComment = false
	local multilineWhitespace = ""

	local lines = props:gsub("\r", ""):split("\n")
	for _, line in ipairs(lines) do
		if string.match(line, "^%s*$") then
			if isMultilineComment and currentComment ~= nil then
				currentComment ..= "\n"
			end
			continue
		end

		if string.match(line, "^%s*%]%]$") then
			isMultilineComment = false
			multilineWhitespace = ""
			continue
		end

		local _, comment = string.match(line, "^" .. commentPattern)
		local multilineCommentWhitespace = string.match(line, multilineCommentPattern)
		if multilineCommentWhitespace then
			isMultilineComment = true
			multilineWhitespace = multilineCommentWhitespace
		elseif comment then
			if currentComment == nil then
				currentComment = comment
			else
				currentComment ..= " " .. comment
			end
		elseif isMultilineComment then
			local multilineComment = string.match(line, multilineWhitespace .. "	(.*)$")
			if currentComment == nil then
				currentComment = multilineComment
			else
				-- Preserve formatting / newlines for multiline comments.
				currentComment ..= "\n" .. multilineComment
			end
		else
			local _, endingComment = string.match(line, commentPattern)
			if endingComment then
				currentComment = endingComment
			end

			if depth > 0 and string.match(line, "^%s*%p*,$") then
				-- Ending of a multi-line type definition
				depth -= 1
				currentComment = nil
				continue
			end

			if string.match(line, "[{%(]$") then
				depth += 1
				-- Beginning of a multi-line type definition
				if depth > 1 then
					continue
				end
			elseif depth > 0 then
				-- Contents of a multi-line type definition
				continue
			end

			local propName, propType, isOptional = PropParser._getProp(line, depth > 0)
			if propName == nil or propType == nil then
				print("🤏  Unable to parse prop definition: " .. line)
			else
				local defaultValue = nil
				if isOptional and defaultProps then
					-- Find default value
					defaultValue = string.match(defaultProps, propName .. "%s=%s([^\n]-),\n")
				end

				table.insert(result, {
					Name = propName,
					Type = propType,
					IsOptional = isOptional,
					Default = defaultValue,
					Comment = currentComment,
				} :: Types.Prop)
			end

			currentComment = nil
		end
	end

	return result
end

-- TODO: Support multi-line type definitions and custom interfaces

local luauPropPattern = "^%s*(%w+):%s+(.-)(%??)"
local tPropPattern = "^%s*%[?([%w%.]+)%]?%s=%s(.*)"
function PropParser._getProp(line: string, isMultiLine: boolean?): (string?, string?, boolean?)
	-- Strip trailing whitespace
	line = line:gsub("%s+$", "")

	-- Strip trailing comment
	line = line:gsub(commentPattern, "")

	-- Returns propName, propType, isOptional
	local propName, propType, optionalQualifier =
		string.match(line, luauPropPattern .. (if isMultiLine then "" else ",$"))
	if propName and propType then
		if propType == "" then
			propType = "🤷"
		end
		return propName, propType, optionalQualifier ~= ""
	end

	-- T-style typing
	propName, propType = string.match(line, tPropPattern .. (if isMultiLine then "" else ",$"))
	if propName and propType then
		local isOptional: boolean? = false
		local propFormat = "%s"

		local i = 0
		local innerPropPattern = "^(%w+)%((.+)" .. (if isMultiLine then "" else "%)$")
		local outerClassifier, innerPropType = string.match(propType, innerPropPattern)
		while outerClassifier and innerPropType and i < 20 do
			assert(outerClassifier ~= nil, "outerClassifier cannot be nil in this codepath")
			assert(innerPropType ~= nil, "innerPropType cannot be nil in this codepath")
			if outerClassifier == "optional" then
				propType = innerPropType
				isOptional = true
			elseif outerClassifier == "array" then
				propType = innerPropType
				propFormat = "Array<" .. propFormat .. ">"
			elseif outerClassifier == "map" then
				propType = innerPropType
				propFormat = "Map<" .. propFormat .. ">"
			elseif outerClassifier == "union" then
				propType = table.concat(string.split(innerPropType, ", "), " | ")
			elseif outerClassifier == "intersection" then
				propType = table.concat(string.split(innerPropType, ", "), " & ")
			elseif outerClassifier == "numberMin" then
				propType = innerPropType
				propFormat = "number > " .. propFormat
			elseif outerClassifier == "enumerateValidator" then
				propType = "Enum." .. innerPropType
			elseif outerClassifier == "enum" then
				-- Already include enum prefix
				propType = innerPropType
			elseif outerClassifier == "strictInterface" or outerClassifier == "interface" then
				propType = "🤷"
			else
				print("🍵 Unhandled classifier: " .. outerClassifier)
				propType = innerPropType
			end

			outerClassifier, innerPropType = string.match(propType, innerPropPattern)
			i += 1
		end

		if i == 20 then
			warn("⌛ Exceeded iterations for parsing " .. line)
		end

		return propName, string.format(propFormat, propType), isOptional
	end

	print("📛 Unable to find name or type: " .. line)
	return nil, nil, nil
end

return PropParser
