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
local commentSuffix = "%s*([^\n]*)$"
local multilineCommentPattern = commentPrefix .. "%[%["
local commentPattern = commentPrefix .. commentSuffix
function PropParser.parseProps(typechecking: Types.Typechecking, props: string, defaultProps: string?)
	local result: { Types.Prop } = {}

	props = PropParser._sanitizeProps(typechecking, props)
	if defaultProps ~= nil then
		defaultProps = PropParser._sanitizeProps(typechecking, defaultProps)
	end

	local currentComment: string? = nil
	local multilinePropType: string? = nil
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

		if depth > 0 and string.match(line, "^%s*%p+,$") then
			-- Ending of a multi-line type definition
			depth -= 1
			if multilinePropType then
				multilinePropType ..= "\n" .. line:gsub("^" .. multilineWhitespace, "")
			end
			if depth > 0 then
				continue
			end
		end

		if string.match(line, "[=:] .-[{%(]$") then
			depth += 1
			-- Beginning of a multi-line type definition
			if depth > 1 then
				if multilinePropType then
					multilinePropType ..= "\n" .. line:gsub("^" .. multilineWhitespace, "")
				end
			else
				multilineWhitespace = line:match("^(%s*)") or ""
				multilinePropType = line:gsub("^" .. multilineWhitespace, "")
			end
			continue
		elseif depth > 0 then
			assert(multilinePropType ~= nil, "Multiline prop type cannot be nil")
			-- Contents of a multi-line type definition
			multilinePropType ..= "\n" .. line:gsub("^" .. multilineWhitespace, "")
			continue
		end

		local _, comment = string.match(line, "^" .. commentPattern)
		local multilineCommentWhitespace = string.match(line, multilineCommentPattern)
		if multilineCommentWhitespace then
			isMultilineComment = true
			multilineWhitespace = multilineCommentWhitespace
		elseif comment then
			if currentComment == nil or depth > 0 then
				currentComment = comment
			elseif depth == 0 then
				currentComment ..= " " .. comment
			end
		elseif isMultilineComment then
			local multilineComment = string.match(line, multilineWhitespace .. "	(.*)$")
			if currentComment == nil or depth > 0 then
				currentComment = multilineComment
			elseif depth == 0 then
				-- Preserve formatting / newlines for multiline comments.
				currentComment ..= "\n" .. multilineComment
			end
		else
			local _, endingComment = string.match(line, commentPattern)
			if endingComment then
				currentComment = endingComment
			end

			local propName, propType, isOptional =
				PropParser._getProp(typechecking, if depth == 0 and multilinePropType then multilinePropType else line)

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
			multilinePropType = nil
		end
	end

	return result
end

function PropParser._sanitizeProps(typechecking: Types.Typechecking, props: string)
	if typechecking == Types.Typecheckers.T then
		-- Strip out t. from everywhere, makes things complicated.
		props = props:gsub("[^%w]t%.", function(s)
			return s:sub(0, 1)
		end)
	end

	-- If either input is missing a trailing newline, add it
	if not props:match("\n$") then
		props ..= "\n"
	end

	return props
end

function splitPropOnDelimiter(propType: string, joiner: string, isMultiline: boolean)
	local delimiter = "," .. if isMultiline then "\n" else " "
	return table.concat(string.split(propType, delimiter), " " .. joiner .. " ")
end

local tInterfacePattern = "s?t?r?i?c?t?[iI]nterface"
local luauPropPattern = "^%s*(%[?%w+%]?):%s+(.*)"
local luauKeyPattern = "^%s*%[(%w+)%]: %{\n(.*)\n%s*%}"
local tPropPattern = "^%s*%[?([%w%.]+)%]?%s=%s(.*)"
function PropParser._getProp(
	typechecking: Types.Typechecking,
	line: string
): (string?, string | Types.PropType | nil, boolean)
	local isMultiline = string.match(line, "\n") ~= nil

	-- Strip trailing whitespace
	line = line:gsub("%s+$", "")

	-- Strip trailing comment
	line = line:gsub(commentPattern, "")

	-- Returns propName, propType, isOptional
	local propName, propType = string.match(line, luauPropPattern .. (if isMultiline then "" else ",$"))
	if propName and propType then
		assert(typechecking == Types.Typecheckers.Luau, "Typechecker must be Luau at this point")
		local optionalQualifier = string.match(propType, "(%??)$")
		propType = propType:gsub("(%??)$", "")
		if isMultiline then
			local propTypeQualifier = Types.PropTypeQualifiers.Interface

			-- Strip out surrounding brackets
			local multilinePropType = string.match(propType, "^%s*{(.*)%s*},*")
			if multilinePropType and string.match(multilinePropType, luauKeyPattern) then
				local key
				key, propType = string.match(multilinePropType, luauKeyPattern)
				if key == "number" then
					propTypeQualifier = Types.PropTypeQualifiers.Array
					-- else
					-- 	-- Maps are not yet supported
					-- 	propTypeQualifier = Types.PropTypeQualifiers.Map
				end
			end

			return propName,
				{
					Qualifier = propTypeQualifier,
					Props = PropParser.parseProps(typechecking, propType),
				},
				optionalQualifier ~= ""
		end

		if propType == "" then
			propType = "🤷"
		end

		propType = propType:gsub("^{ %[number%]: (.-)%s*}$", function(s)
			return "Array<" .. s .. ">"
		end)

		return propName, propType, optionalQualifier ~= ""
	end

	if typechecking == Types.Typecheckers.T then
		propName, propType = string.match(line, tPropPattern .. (if isMultiline then "" else ",$"))
		if propName and propType then
			local isOptional: boolean = false
			local propFormat = "%s"

			local i = 0
			local propTypeQualifier = nil
			local innerPropPattern = "^%s*(%w+)%((.+)" .. (if isMultiline then "\n" else "%s*%)$")
			local outerClassifier, innerPropType = string.match(propType, innerPropPattern)
			while outerClassifier and innerPropType and i < 20 do
				assert(outerClassifier ~= nil, "outerClassifier cannot be nil in this codepath")
				assert(innerPropType ~= nil, "innerPropType cannot be nil in this codepath")
				if outerClassifier == "optional" then
					propType = innerPropType
					isOptional = true
				elseif outerClassifier == "array" then
					propTypeQualifier = Types.PropTypeQualifiers.Array
					propType = innerPropType
					propFormat = "Array<" .. propFormat .. ">"
				elseif outerClassifier == "map" then
					propType = innerPropType
					propFormat = "Map<" .. propFormat .. ">"
				elseif outerClassifier == "union" then
					propType = splitPropOnDelimiter(innerPropType, "|", isMultiline)
				elseif outerClassifier == "intersection" then
					propType = splitPropOnDelimiter(innerPropType, "&", isMultiline)
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
				if isMultiline and innerPropType then
					innerPropType = innerPropType:gsub("\n%s*", "\n")
				end
				i += 1
			end

			if isMultiline then
				local propsPattern = tInterfacePattern .. "%(%{\n(.*)\n%s*%}%).*"
				local props = string.match(line, propsPattern)
				if props then
					return propName,
						{
							Qualifier = propTypeQualifier or Types.PropTypeQualifiers.Interface,
							Props = PropParser.parseProps(typechecking, props),
						},
						isOptional
				end
			end

			if i == 20 then
				warn("⌛ Exceeded iterations for parsing " .. line)
			end

			return propName, string.format(propFormat, propType), isOptional
		end
	end

	print("📛 Unable to find name or type: " .. line)
	return nil, nil, true
end

return PropParser
