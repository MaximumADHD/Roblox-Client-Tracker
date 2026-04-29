-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/get-user-code-frame.js
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
type Object = LuauPolyfill.Object

local exports = {}

-- We try to load node dependencies
-- ROBLOX deviation START: upstream a check is made if we're running in the browser or not to load these
local chalk = require(Packages.Chalk)
local fs = require(script.Parent.jsHelpers.fs)
local codeFrameColumns = require(script.Parent.jsHelpers["babel-code-frame"]).codeFrameColumns
-- ROBLOX deviation END

-- frame has the form "at myMethod (location/to/my/file.js:10:2)"
local function getCodeFrame(frame: string)
	-- ROBLOX deviation START: frame has a different form.
	local whitespaceStart, whitespaceEnd = string.find(frame, "%s+")
	local locationStart = if not whitespaceStart then 1 else ((whitespaceEnd :: number) + 1)
	local locationEnd = (string.find(frame:sub(locationStart), " ") or (#frame + 1))
	-- ROBLOX deviation END
	local frameLocation = string.sub(frame, locationStart, locationEnd - 1)
	local frameLocationElements = frameLocation:split(":")
	local filename, line, column =
		frameLocationElements[1], tonumber(frameLocationElements[2], 10), tonumber(frameLocationElements[3], 10)

	local rawFileContents = ""
	local ok = pcall(function()
		-- ROBLOX deviation START: Only path can be supplied to read file
		rawFileContents = fs.readFileSync(filename)
		-- ROBLOX deviation END
	end)
	if not ok then
		return ""
	end

	local codeFrame = codeFrameColumns(
		rawFileContents,
		{ start = { line = line :: number, column = column } },
		{ highlightCode = true, linesBelow = 0 }
	) :: string

	return ("%s\n%s\n"):format(chalk.dim(frameLocation), codeFrame)
end

local function getUserCodeFrame()
	-- If we couldn't load dependencies, we can't generate the user trace
	--[[ istanbul ignore next ]]
	if not fs.readFileSync or not Boolean.toJSBoolean(codeFrameColumns) then
		return ""
	end
	local err = LuauPolyfill.Error.new()
	local firstClientCodeFrame = Array.find(
		Array.slice((err.stack or ""):split("\n"), 2), -- Remove first line which has the form "Error: TypeError"
		function(frame)
			return not frame:find("Packages%._Index")
		end
	) :: string -- Ignore frames from 3rd party libraries
	return getCodeFrame(firstClientCodeFrame)
end
exports.getUserCodeFrame = getUserCodeFrame

return exports
