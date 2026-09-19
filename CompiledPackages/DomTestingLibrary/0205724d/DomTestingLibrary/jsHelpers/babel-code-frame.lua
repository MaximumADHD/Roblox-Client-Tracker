-- ROBLOX upstream: https://github.com/babel/babel/blob/v7.18.5/packages/babel-code-frame/src/index.ts
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
local String = LuauPolyfill.String
local console = LuauPolyfill.console
type Array<T> = LuauPolyfill.Array<T>

-- ROBLOX deviation START
type Record<T, U> = { [T]: U }
-- ROBLOX deviation END

local exports = {}

-- ROBLOX deviation START: not porting babel-highlight
-- local highlightModule = require(Packages["@babel"].highlight)
-- local highlightModule = {}
-- local highlight = highlightModule.default
-- local shouldHighlight = highlightModule.shouldHighlight
-- local getChalk = highlightModule.getChalk
local getChalk = function(...)
	return require(Packages.Chalk)
end
-- ROBLOX deviation END

-- type Chalk = ReturnType<typeof(getChalk)>
type Chalk = any

local deprecationWarningShown = false

-- ROBLOX deviation START: according to tests, column can be nil
type Location = { column: number?, line: number }
-- ROBLOX deviation END

type NodeLocation = { ["end"]: Location?, start: Location }

export type Options = {
	--[[* Syntax highlight the code as JavaScript for terminals. default: false ]]
	highlightCode: boolean?,
	--[[*  The number of lines to show above the error. default: 2 ]]
	linesAbove: number?,
	--[[*  The number of lines to show below the error. default: 3 ]]
	linesBelow: number?,
	--[[*
   		* Forcibly syntax highlight the code as JavaScript (for non-terminals);
   		* overrides highlightCode.
   		* default: false
   	]]
	forceColor: boolean?,
	--[[*
   		* Pass in a string to be displayed inline (if possible) next to the
   		* highlighted location in the code. If it can't be positioned inline,
   		* it will be placed above the code frame.
   		* default: nothing
   	]]
	message: string?,
}

--[[*
 	* Chalk styles for code frame token types.
]]
local function getDefs(chalk: Chalk)
	return { gutter = chalk.grey, marker = chalk.red.bold, message = chalk.red.bold }
end

-- ROBLOX deviation START: using pattern instead of regex
--[[*
 	* RegExp to test for newlines in terminal.
]]
local NEWLINE = { "\r\n", "\n", "\r", "\2028", "\2029" }
-- ROBLOX deviation END

--[[*
 	* Extract what lines should be marked and highlighted.
]]
type MarkerLines = Record<number, true | Array<number>>

local function getMarkerLines(
	loc: NodeLocation,
	source: Array<string>,
	opts: Options
): { start: number, ["end"]: number, markerLines: MarkerLines }
	local startLoc: Location = Object.assign({}, { column = 1, line = 0 }, loc.start)
	local endLoc: Location = Object.assign({}, startLoc, loc["end"])
	local ref = (if opts then opts else {}) :: Options
	local linesAbove, linesBelow =
		if ref.linesAbove == nil then 2 else ref.linesAbove, if ref.linesBelow == nil then 3 else ref.linesBelow
	local startLine = startLoc.line
	local startColumn = startLoc.column :: number
	local endLine = endLoc.line
	local endColumn = endLoc.column :: number

	local start = math.max(startLine - linesAbove, 1)
	local end_ = math.min(if #source == 0 then 1 else #source, endLine + linesBelow)

	if startLine == 0 then
		start = 1
	end

	if endLine == 0 then
		end_ = if #source == 0 then 1 else #source
	end

	local lineDiff = (endLine - startLine)
	local markerLines: MarkerLines = {}

	if lineDiff > 0 then
		for i = 0, lineDiff do
			local lineNumber = i + startLine

			if not (startColumn > 1) then
				markerLines[lineNumber] = true
			elseif i == 0 then
				local sourceLength = #source[lineNumber]
				markerLines[lineNumber] = {
					startColumn,
					sourceLength - startColumn + 1,
				}
			elseif i == lineDiff then
				markerLines[lineNumber] = { 1, endColumn }
			else
				local sourceLength = #source[lineNumber]

				markerLines[lineNumber] = { 1, sourceLength }
			end
		end
	else
		if startColumn == endColumn then
			if startColumn > 1 then
				markerLines[startLine] = { startColumn, 1 }
			else
				markerLines[startLine] = true
			end
		else
			markerLines[startLine] = { startColumn, endColumn - startColumn }
		end
	end

	return { start = start, ["end"] = end_, markerLines = markerLines }
end

local function codeFrameColumns(rawLines: string, loc: NodeLocation, opts_: Options?): string
	local opts = (if opts_ then opts_ else {}) :: Options

	-- local ref = Boolean.toJSBoolean(opts.highlightCode) and opts.highlightCode or opts.forceColor
	-- local highlighted = if Boolean.toJSBoolean(ref) then shouldHighlight(opts) else ref
	local highlighted = false
	local chalk = getChalk(opts)
	local defs = getDefs(chalk)
	local function maybeHighlight(chalkFn: Chalk, string_: string)
		return if highlighted then chalkFn(string_) else string_
	end
	local lines = String.split(rawLines, NEWLINE)
	local ref = getMarkerLines(loc, lines, opts)
	local start, end_, markerLines = ref.start, ref["end"], ref.markerLines
	local hasColumns = if Boolean.toJSBoolean(loc.start) then typeof(loc.start.column) == "number" else loc.start

	local numberMaxWidth = #tostring(end_)

	-- ROBLOX deviation START: highlighting is disabled, it will always be false
	-- local highlightedLines = if highlighted then highlight(rawLines, opts) else rawLines
	local highlightedLines = rawLines
	-- ROBLOX deviation END

	local frame = Array.join(
		Array.map(
			Array.slice(
				String.split(highlightedLines, NEWLINE, end_),
				start,
				end_ + 1 -- ROBLOX comment: Array slice last is exclusive
			),
			function(line, index)
				local number = start + index - 1 -- ROBLOX comment: start and index are start at 1.
				local paddedNumber = string.sub((" %s"):format(tostring(number)), -numberMaxWidth)
				local gutter = (" %s |"):format(paddedNumber)
				local hasMarker = markerLines[number]
				local lastMarkerLine = not Boolean.toJSBoolean(markerLines[number + 1])
				if Boolean.toJSBoolean(hasMarker) then
					local markerLine = ""
					if Array.isArray(hasMarker) then
						-- ROBLOX FIXME Luau: Already checked hasMarker is an Array
						local markerSpacing =
							string.sub(line, 1, math.max((hasMarker :: Array<number>)[1] - 1, 0)):gsub("[^\t]", " ")
						local numberOfMarkers = if (hasMarker :: Array<number>)[2] > 1
							then (hasMarker :: Array<number>)[2]
							else 1
						markerLine = Array.join({
							"\n ",
							maybeHighlight(defs.gutter, ({ gutter:gsub("%d", " ") })[1]),
							" ",
							markerSpacing,
							maybeHighlight(defs.marker, "^"):rep(numberOfMarkers),
						}, "")
						if lastMarkerLine and Boolean.toJSBoolean(opts.message) then
							-- ROBLOX FIXME Luau: casting should not be required, already checked it's a string
							markerLine ..= " " .. maybeHighlight(defs.message, opts.message :: string)
						end
					end
					return Array.join({
						maybeHighlight(defs.marker, ">"),
						maybeHighlight(defs.gutter, gutter),
						if #line > 0 then (" %s"):format(line) else "",
						markerLine,
					}, "")
				else
					return (" %s%s"):format(
						maybeHighlight(defs.gutter, gutter),
						if #line > 0 then (" %s"):format(line) else ""
					)
				end
			end
		),
		"\n"
	)
	if Boolean.toJSBoolean(opts.message) and not hasColumns then
		frame = ("%s%s\n%s"):format((" "):rep(numberMaxWidth + 1), tostring(opts.message), frame)
	end
	if highlighted then
		return chalk.reset(frame)
	else
		return frame
	end
end
exports.codeFrameColumns = codeFrameColumns
--[[*
 	* Create a code frame, adding line numbers, code highlighting, and pointing to a given position.
]]
exports.default = function(rawLines: string, lineNumber: number, colNumber: (number | nil)?, opts: Options?): string
	if opts == nil then
		opts = {}
	end
	if not deprecationWarningShown then
		deprecationWarningShown = true
		local message =
			"Passing lineNumber and colNumber is deprecated to @babel/code-frame. Please use `codeFrameColumns`."
		-- ROBLOX deviation START: skip node env check
		-- if process.emitWarning then
		-- 	-- A string is directly supplied to emitWarning, because when supplying an
		-- 	-- Error object node throws in the tests because of different contexts
		-- 	process.emitWarning("DeprecationWarning:", message)
		-- else
		local deprecationError = Error.new(message)
		deprecationError.name = "DeprecationWarning"
		console.warn(Error.new(message))
		-- end
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: col number can be nil, make sure we pass a number to math.max
	colNumber = math.max(colNumber or 1, 1)
	-- ROBLOX deviation END: col number can be nil, make sure we pass a number to math.max
	-- ROBLOX FIXME Luau: need to cast column
	local location: NodeLocation = { start = { column = colNumber :: number, line = lineNumber } }
	return codeFrameColumns(rawLines, location, opts)
end
return exports
