local Dash = script.Parent
local Types = require(Dash.Types)

local append = require(Dash.append)
local assign = require(Dash.assign)
local cycles = require(Dash.cycles)
local includes = require(Dash.includes)
local join = require(Dash.join)
local map = require(Dash.map)
local keys = require(Dash.keys)
local slice = require(Dash.slice)

local concat = table.concat
local insert = table.insert
local sort = table.sort

export type PrettyOptions = {
	-- The maximum depth of ancestors of a table to display (default = 2)
	depth: number?,
	-- An array of keys which should not be visited
	omit: { any } | nil,
	-- Whether to use multiple lines (default = false)
	multiline: boolean?,
	-- Whether to show the length of any array in front of its content
	arrayLength: boolean?,
	-- The maximum length of a line (default = 80)
	maxLineLength: number?,
	-- Whether to drop the quotation marks around strings. By default, this is true for table keys
	noQuotes: boolean?,
	-- The indent string to use (default = "\t")
	indent: string?,
	-- A set of tables which have already been visited and should be referred to by reference
	visited: Types.Set<Types.Table>?,
	-- A cycles object returned from `cycles` to aid reference display
	cycles: cycles.Cycles?,
}

local function indentLines(lines: { string }, indent: string)
	return map(lines, function(line: string)
		return indent .. line
	end)
end

local function sortObjectKeys(object: Types.Table): { any }
	local objectKeys = keys(object)
	sort(objectKeys, function(a, b)
		if type(a) == "number" and type(b) == "number" then
			return a < b
		else
			return tostring(a) < tostring(b)
		end
	end)
	return objectKeys
end

local function constructValueOptions(options: PrettyOptions, object: Types.Table): PrettyOptions
	return assign(
		{
			visited = {},
			indent = "\t",
			depth = 2,
		},
		options,
		{
			-- Depth is reduced until we shouldn't recurse any more
			depth = options.depth and options.depth - 1 or nil,
			cycles = options.cycles or cycles(object, options.depth, {
				visited = {},
				refs = {},
				nextRef = 0,
				depth = options.depth,
				omit = options.omit or {},
			}),
		}
	) :: PrettyOptions
end

local function insertClosedBracket(lines: { string }, multiline: boolean, first: boolean)
	if multiline then
		if first then
			-- An empty table is just represented as {}
			lines[#lines] = lines[#lines] .. "}"
		else
			insert(lines, "}")
		end
	else
		lines[#lines] = ("%s}"):format(lines[#lines])
	end
end

local pretty

local function prettyLines(object: any, _options: PrettyOptions?): { string }
	local options = _options or {}
	if type(object) == "table" then
		-- A table needs to be serialized recusively
		-- Construct the options for recursive calls for the table values
		local valueOptions = constructValueOptions(options, object)

		if valueOptions.depth == -1 then
			-- Indicate there is more information available beneath the maximum depth
			return { "..." }
		end
		if valueOptions.visited[object] then
			-- Indicate this table has been printed already, so print a ref number instead of
			-- printing it multiple times
			return { "&" .. valueOptions.cycles.refs[object] }
		end

		valueOptions.visited[object] = true

		local multiline = valueOptions.multiline
		local comma = multiline and "," or ", "

		-- If the table appears multiple times in the output, mark it with a ref prefix so it can
		-- be identified if it crops up later on
		local ref = valueOptions.cycles.refs[object]
		local refTag = ref and ("<%s>"):format(ref) or ""
		local lines = { refTag .. "{" }

		-- Build the options for the recursive call for the table keys
		local keyOptions = join(valueOptions, {
			noQuotes = true,
			multiline = false,
		})

		-- Compact numeric keys into a simpler array style
		local maxConsecutiveIndex = 0
		local first = true

		local objectKeys = sortObjectKeys(object)

		if #object > 0 and valueOptions.arrayLength then
			lines[1] = ("#%d %s"):format(#object, lines[1])
		end

		for _, key in ipairs(objectKeys) do
			if type(key) == "number" and key == maxConsecutiveIndex + 1 then
				maxConsecutiveIndex = key
			end

			if valueOptions.omit and includes(valueOptions.omit, key) then
				-- Don't include keys which are omitted
				continue
			end

			local value = object[key]
			local isArray = (type(key) == "number" and key >= 1 and key <= maxConsecutiveIndex)

			if first then
				first = false
			else
				lines[#lines] = lines[#lines] .. comma
			end

			if multiline then
				if isArray then
					append(lines, indentLines(prettyLines(value, valueOptions), valueOptions.indent))
				else
					local keyLines = prettyLines(key, keyOptions)
					local indentedKey = indentLines(keyLines, valueOptions.indent)
					local valueLines = prettyLines(value, valueOptions)
					local valueTail = slice(valueLines, 2)
					local indentedValueTail = indentLines(valueTail, valueOptions.indent)
					-- The last line of the key and first line of the value are concatenated together
					indentedKey[#indentedKey] = ("%s = %s"):format(indentedKey[#indentedKey], valueLines[1])
					append(lines, indentedKey)
					append(lines, indentedValueTail)
				end
			else
				if isArray then
					lines[#lines] = lines[#lines] .. pretty(value, valueOptions)
				else
					lines[#lines] = lines[#lines] .. pretty(key, keyOptions) .. " = " .. pretty(value, valueOptions)
				end
			end
		end

		insertClosedBracket(lines, multiline, first)
		return lines
	elseif type(object) == "string" and options and not options.noQuotes then
		return { ('"%s"'):format(object) }
	else
		return { tostring(object) }
	end
end

--[=[
	Returns a pretty string serialization of _object_.

	This implementation deals with cycles in tables and can neatly display metatables.

	Optionally use an indented multiline string, limit the depth of tables, omit or pick keys.

	@param object The object to serialize.
	@param options Optional configuration for the serialization.
	@return A formatted string representation of the object.
]=]
pretty = function(object: any, options: PrettyOptions?): string
	return concat(prettyLines(object, options), "\n")
end

return pretty
