--!strict
--[[
	Parses function signatures to extract parameters and return types.
	
	Only supports named functions (anonymous functions are not supported).
	Assumes naming convention: function name matches the module name,
	assigned to a local variable and returned at the end:
	
	```lua
	local function useSomething(param: Type): ReturnType
		-- implementation
	end
	return useSomething
	```
	
	FunctionParser.parseFunction(source: string)
		Parses a function signature from Luau source code.
		Finds the return statement, then parses the function with that name.
		
		Returns a table with:
		{
			Parameters = { { Name = "param1", Type = "Type1", IsOptional = false }, ... },
			Returns = { "Type1", "Type2" }, -- Array of return types (can be empty)
			Comment = "Optional comment from --[[ comment \]\] above function`
		}
		
		Example:
			FunctionParser.parseFunction(source)
			-> {
				Parameters = {
					{ Name = "value", Type = "number", IsOptional = false },
					{ Name = "options", Type = "Options", IsOptional = true }
				},
				Returns = { "Result", "Error" }
			}
	
	FunctionParser._extractSignature(source: string): (string?, string?, string?)
		Helper to extract function signature from source.
		Finds the return statement at the bottom of the file, then looks for a function with that name.
		Returns paramString, returnString, and comment.
	
	FunctionParser._splitOnComma(str: string): { string }
		Helper to split a string on commas, respecting nested structures.
		Shared logic for splitting both parameters and return types.
	
	FunctionParser._parseParameter(param: string): Prop?
		Helper to parse a single parameter definition.
]]

local Types = require(script.Parent.Types)
local Dash = require(script.Parent.Parent.Dash)

local FunctionParser = {}

-- Patterns for finding function signatures (exported for testing)
local localFunctionPrefix = "local function%s+"
local returnStatementPattern = "\nreturn%s+([%w_]+)%s*\n?$"
local parameterPattern = "^([%w_]+)%s*(%??)%s*:%s*(.+)$"

-- Extract the function signature (parameters and return type) using balanced matching
function FunctionParser._extractSignature(source: string): (string?, string?, string?)
	-- Find the return statement at the bottom of the file
	local returnedName = source:match(returnStatementPattern)

	if not returnedName then
		-- No return statement found
		return nil, nil, nil
	end

	-- Look for a function with that name and extract its signature
	-- Try with generic type parameters first: <T> or <T, U>
	local functionPatternWithGenerics = localFunctionPrefix .. returnedName .. "%s*%b<>%s*(%b())"
	local paramsWithParens = source:match(functionPatternWithGenerics)
	local hasGenerics = paramsWithParens ~= nil

	-- If not found, try without generics
	if not paramsWithParens then
		local functionPatternNoGenerics = localFunctionPrefix .. returnedName .. "%s*(%b())"
		paramsWithParens = source:match(functionPatternNoGenerics)
	end

	if not paramsWithParens then
		warn(string.format("Found return statement for '%s' but no matching function definition", returnedName))
		return nil, nil, nil
	end

	-- Extract comment before the function (--[[ ... ]])
	local comment = nil
	local commentPattern = "%-%-%[%[%s*(.-)%s*%]%]%s*" .. localFunctionPrefix .. returnedName
	local commentMatch = source:match(commentPattern)
	if commentMatch then
		comment = commentMatch:gsub("^%s+", ""):gsub("%s+$", "")
	end

	-- Extract parameters (remove outer parentheses using balanced match)
	assert(string.match(paramsWithParens, "^%b()$"), "Expected balanced parentheses")
	local params = string.sub(paramsWithParens, 2, -2)

	-- Look for return type after the closing paren
	-- Build pattern without capture group to find what comes after the params
	-- Pattern: function(...) : ReturnType or function(...) : (Type1, Type2)
	local afterParamsPattern = if hasGenerics
		then localFunctionPrefix .. returnedName .. "%s*%b<>%s*%b()%s*([^\n]*)"
		else localFunctionPrefix .. returnedName .. "%s*%b()%s*([^\n]*)"
	local afterParams = source:match(afterParamsPattern)

	if not afterParams or afterParams == "" then
		return params, nil, comment
	end

	-- Try to find return type annotation
	local returnPart = afterParams:match("^:%s*(.+)$")
	if not returnPart then
		return params, nil, comment
	end

	-- Trim whitespace
	returnPart = returnPart:match("^%s*(.-)%s*$")

	-- Check if it's a tuple return (wrapped in balanced parentheses)
	if string.match(returnPart, "^%b()$") then
		-- Remove outer parentheses from tuple
		return params, string.sub(returnPart, 2, -2), comment
	end

	-- Single return type
	return params, returnPart, comment
end

local closing = { [")"] = "(", [">"] = "<", ["}"] = "{" }

-- Split a string on commas, respecting nested structures (parentheses, angle brackets, braces)
-- This logic can be shared between parameter splitting and return type splitting
function FunctionParser._splitOnComma(str: string): { string }
	if not str or str == "" then
		return {}
	end

	local result = {}
	local depths: { [string]: number } = { ["("] = 0, ["<"] = 0, ["{"] = 0 }
	local current = ""

	for i = 1, #str do
		local char = str:sub(i, i)

		if depths[char] then
			-- Opening bracket
			depths[char] = depths[char] + 1
			current = current .. char
		elseif closing[char] then
			-- Closing bracket
			local opener = closing[char]
			-- Only decrement if we have a matching open bracket
			-- This prevents `->` arrow syntax from being treated as a generic closing
			if depths[opener] > 0 then
				depths[opener] = depths[opener] - 1
			end
			current = current .. char
		elseif char == "," and Dash.sum(Dash.values(depths)) == 0 then
			-- End of this item - only split when all depths are 0
			local trimmed = current:match("^%s*(.-)%s*$")
			if trimmed and trimmed ~= "" then
				table.insert(result, trimmed)
			end
			current = ""
		else
			current = current .. char
		end
	end

	-- Add the last item
	if current ~= "" then
		local trimmed = current:match("^%s*(.-)%s*$")
		if trimmed and trimmed ~= "" then
			table.insert(result, trimmed)
		end
	end

	return result
end

-- Parse a single parameter definition into a Prop
function FunctionParser._parseParameter(paramName: string): Types.Prop?
	-- First normalize the parameter string by collapsing whitespace/newlines within it
	-- This handles multiline parameter types like function types
	local param = paramName:gsub("%s+", " "):match("^%s*(.-)%s*$") :: string

	-- Match: name: Type or name?: Type or name: Type?
	local name, optionalMarker, paramType = param:match(parameterPattern)

	if not name or not paramType then
		return nil
	end

	-- Trim whitespace from type
	paramType = paramType:match("^%s*(.-)%s*$") :: string

	-- Check for optional marker in type (Type?)
	local typeOptionalMarker = paramType:match("(%??)$")
	paramType = paramType:gsub("%?$", "")

	local isOptional = optionalMarker ~= "" or typeOptionalMarker ~= ""

	return {
		Name = name,
		Type = paramType,
		IsOptional = isOptional,
		Default = nil,
		Comment = nil,
	}
end

-- Main parsing function
function FunctionParser.parseFunction(source: string)
	local result = {
		Parameters = nil :: { Types.Prop }?,
		Returns = nil :: { string }?,
		Comment = nil :: string?,
	}

	-- Extract function signature by finding the return statement
	local paramsStr, returnsStr, comment = FunctionParser._extractSignature(source)

	-- Store comment if found
	if comment then
		result.Comment = comment
	end

	if not paramsStr then
		return result
	end

	-- Parse parameters using shared split logic
	if paramsStr and paramsStr ~= "" then
		local paramStrings = FunctionParser._splitOnComma(paramsStr)
		local parameters = {}

		for _, paramStr in ipairs(paramStrings) do
			local param = FunctionParser._parseParameter(paramStr)
			if param then
				table.insert(parameters, param)
			end
		end

		if #parameters > 0 then
			result.Parameters = parameters
		end
	end

	-- Parse return types using shared split logic
	if returnsStr and returnsStr ~= "" then
		returnsStr = returnsStr:match("^%s*(.-)%s*$")
		local returnTypes = FunctionParser._splitOnComma(returnsStr)

		if #returnTypes > 0 then
			result.Returns = returnTypes
		end
	end

	return result
end

return FunctionParser
