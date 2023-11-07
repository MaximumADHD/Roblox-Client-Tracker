-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-snapshot/src/utils.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

-- ROBLOX deviation: for now we have ported a very limited subset of utils that
-- corresponds to the functions needed by the other translated files. We plan
-- on filling the rest of utils out as we continue with the jest-snapshot file.

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local function getFileSystemService()
	local success, result = pcall(function()
		return game:GetService("FileSystemService")
	end)

	return success and result or nil
end
local FileSystemService = nil

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
local String = LuauPolyfill.String

type Array<T> = LuauPolyfill.Array<T>

-- local chalk = require(Packages.ChalkLua)

-- ROBLOX TODO: ADO-1633 fix Jest Types imports
-- local Config = require(Packages.JestTypes).Config
type ConfigPath = string
type ConfigSnapshotUpdateState = string

local PrettyFormat = require(Packages.PrettyFormat)
local PrettyFormat_ = require(CurrentModule.PrettyFormat)

-- ROBLOX TODO: fix PrettyFormat types imports
type PrettyFormatOptions = PrettyFormat_.OptionsReceived
local prettyFormat = PrettyFormat.format
local getSerializers = require(CurrentModule.plugins).getSerializers

local types = require(CurrentModule.types)
type SnapshotData = types.SnapshotData

local SNAPSHOT_VERSION = "1"
-- local SNAPSHOT_VERSION_REGEXP = "^// Jest Snapshot v(.+),"
local SNAPSHOT_GUIDE_LINK = "http://roblox.github.io/jest-roblox/snapshot-testing"
-- local SNAPSHOT_VERSION_WARNING = chalk.yellow(
-- 	chalk.bold('Warning') .. ": Before you upgrade snapshots, " ..
-- 	"we recommend that you revert any local changes to tests or other code, " ..
-- 	"to ensure that you do not store invalid state."
-- )

local normalizeNewLines, deepMerge

local function writeSnapshotVersion()
	return "-- Jest Roblox Snapshot v" .. SNAPSHOT_VERSION .. ", " .. SNAPSHOT_GUIDE_LINK
end

-- ROBLOX TODO: ADO-1587, add snapshot version validation
-- local function validateSnapshotVersion(snapshotContents: { [string]: string)
-- local version = snapshotContents:match(SNAPSHOT_VERSION_REGEXP)

-- if not version then
-- 	return Error(
-- 		chalk.red(
-- 			chalk.bold('Outdated snapshot') .. ": No snapshot header found. " ..
-- 			"Jest 19 introduced version snapshots to ensure all developers " ..
-- 			"on a project are using the same version of Jest. " ..
-- 			"Please update all snapshots during this upgrade of Jest.\n\n"
-- 		) .. SNAPSHOT_VERSION_WARNING
-- 	)
-- end

-- if version < SNAPSHOT_VERSION then
-- 	return Error(
-- 		chalk.red(
-- 			chalk.red.bold('Outdated snapshot') .. ": The version of the snapshot " ..
-- 			"file associated with this test is outdated. The snapshot file " ..
-- 			"version ensures that all developers on a project are using " ..
-- 			"the same version of Jest. " ..
-- 			"Please update all snapshots during this upgrade of Jest.\n\n"
-- 		) ..
-- 		"Expected: v" .. SNAPSHOT_VERSION .. "\n" ..
-- 		"Received: v" .. version .. "\n\n" ..
-- 		SNAPSHOT_VERSION_WARNING
-- 	)
-- end

-- if version > SNAPSHOT_VERSION then
-- 	return Error(
-- 		chalk.red(
-- 			chalk.red.bold('Outdated Jest version') ..": The version of this " ..
-- 			"snapshot file indicates that this project is meant to be used " ..
-- 			"with a newer version of Jest. The snapshot file version ensures " ..
-- 			"that all developers on a project are using the same version of " ..
-- 			"Jest. Please update your version of Jest and re-run the tests.\n\n"
-- 		) ..
-- 		"Expected: v${SNAPSHOT_VERSION}\n" ..
-- 		"Received: v${version}"
-- 	)
-- end

-- return nil
-- end

local function isObject(item: any): boolean
	return item and typeof(item) == "table" and not Array.isArray(item)
end

local function testNameToKey(testName: ConfigPath, count: number): string
	return testName .. " " .. count
end

local function keyToTestName(key: string): string
	if not key:match(" %d+$") then
		error(Error("Snapshot keys must end with a number."))
	end

	return key:gsub(" %d+$", "")
end

local function getSnapshotData(
	-- ROBLOX deviation START: using ModuleScript instead of Config_Path
	snapshotPath: ModuleScript?,
	-- ROBLOX deviation END
	update: ConfigSnapshotUpdateState
): { data: SnapshotData, dirty: boolean }
	local data = {}
	local dirty = false

	-- ROBLOX deviation: snapshots in Jest Roblox are ModuleScripts, so we require them to load them
	pcall(function()
		data = require(snapshotPath) :: any
	end)
	-- ROBLOX deviation: omitted validateSnapshotVersion for now since we will have our own
	-- snapshot versioning
	-- local validationResult = validateSnapshotVersion(data)
	local isInvalid = false -- data and validationResult

	-- if update == "none" and isInvalid then
	-- 	error(validationResult)
	-- end

	if (update == "all" or update == "new") and isInvalid then
		dirty = true
	end

	return {
		data = data,
		dirty = dirty,
	}
end

-- Add extra line breaks at beginning and end of multiline snapshot
-- to make the content easier to read.
local function addExtraLineBreaks(string_: string): string
	if string_:match("\n") then
		return "\n" .. string_ .. "\n"
	else
		return string_
	end
end

-- Remove extra line breaks at beginning and end of multiline snapshot.
-- Instead of trim, which can remove additional newlines or spaces
-- at beginning or end of the content from a custom serializer.
local function removeExtraLineBreaks(string_: string): string
	if string_:len() > 2 and String.startsWith(string_, "\n") and String.endsWith(string_, "\n") then
		return string_:sub(2, -2)
	else
		return string_
	end
end

local escapeRegex = true
local printFunctionName = false

local function serialize(val: any, indent: number?, formatOverrides: PrettyFormatOptions?): string
	indent = indent or 2
	formatOverrides = formatOverrides or {}
	return normalizeNewLines(prettyFormat(
		val,
		Object.assign({
			escapeRegex = escapeRegex,
			indent = indent,
			plugins = getSerializers(),
			printFunctionName = printFunctionName,
		}, formatOverrides)
	))
end

local function minify(val: any): string
	return prettyFormat(val, {
		escapeRegex = true,
		min = true,
		plugins = getSerializers(),
		printFunctionName = printFunctionName,
	})
end

-- Remove double quote marks and unescape double quotes and backslashes.
local function deserializeString(stringified: string): string
	stringified = string.sub(stringified, 2, -2)
	stringified = string.gsub(stringified, "\\\\", "\\")
	stringified = string.gsub(stringified, '\\"', '"')
	return stringified
end

-- ROBLOX deviation: we don't escape any characters since multiline literals don't
-- consume escape sequences
local function escapeBacktickString(str: string): string
	return str
end

-- ROBLOX deviation: we change from backtick to our literal string delimiter [=[ and ]=]
local function printBacktickString(str: string): string
	return "[=[\n" .. str .. "]=]"
end

local function ensureDirectoryExists(filePath: string)
	-- ROBLOX deviation: gets path of parent directory, GetScriptFilePath can only be called on ModuleScripts
	local pathComponents = filePath:split("/")
	pathComponents = table.pack(table.unpack(pathComponents, 1, #pathComponents - 1))
	local path = table.concat(pathComponents, "/")
	local ok, err = pcall(function()
		if not FileSystemService:Exists(path) then
			FileSystemService:CreateDirectories(path)
		end
	end)

	if not ok and err:find("Error%(13%): Access Denied%. Path is outside of sandbox%.") then
		error(
			Error.new(
				"Provided path is invalid: you likely need to provide a different argument to --fs.readwrite.\n"
					.. "You may need to pass in `--fs.readwrite=$PWD`"
			)
		)
	end
end

function normalizeNewLines(string_: string)
	string_ = string.gsub(string_, "\r\n", "\n")
	local result = string.gsub(string_, "\r", "\n")
	return result
end

-- ROBLOX deviation: taken from http://notebook.kulchenko.com/algorithms/alphanumeric-natural-sorting-for-humans-in-lua
-- as an approximation of naturalCompare for now
local function alphanumsort(o)
	local function padnum(d)
		return ("%03d%s"):format(string.len(d), d)
	end
	table.sort(o, function(a, b)
		return tostring(a):gsub("%d+", padnum) < tostring(b):gsub("%d+", padnum)
	end)
	return o
end

-- ROBLOX deviation: saves a valid Roblox ModuleScript
local function saveSnapshotFile(snapshotData: SnapshotData, snapshotPath: ConfigPath)
	local snapshots = {
		writeSnapshotVersion(),
		"local exports = {}",
	}

	for _, key in ipairs(alphanumsort(Object.keys(snapshotData))) do
		table.insert(
			snapshots,
			"exports[ [=["
				-- ROBLOX deviation: we don't call printBacktickString here since we inline the
				-- multiline literal
				.. escapeBacktickString(key)
				.. "]=] ] = "
				.. printBacktickString(normalizeNewLines(snapshotData[key]))
				.. "\n"
		)
		-- ROBLOX deviation: we don't append a semicolon
	end
	table.insert(snapshots, "return exports")

	if FileSystemService == nil then
		FileSystemService = getFileSystemService() or false
	end
	-- ROBLOX deviation: error when FileSystemService doesn't exist
	if not FileSystemService then
		error(Error("Attempting to save snapshots in an environment where FileSystemService is inaccessible."))
	end
	ensureDirectoryExists(snapshotPath)
	FileSystemService:WriteFile(snapshotPath, table.concat(snapshots, "\n") .. "\n")
end

local function deepMergeArray(target: Array<any>, source: Array<any>)
	-- ROBLOX FIXME Luau: should be inferred from reduce's initial value
	local mergedOutput = Array.from(target) :: typeof(target)

	for index, sourceElement in ipairs(source) do
		local targetElement = mergedOutput[index]

		if Array.isArray(target[index]) then
			mergedOutput[index] = deepMergeArray(target[index], sourceElement)
		elseif isObject(targetElement) then
			mergedOutput[index] = deepMerge(target[index], sourceElement)
		else
			-- Source does not exist in target or target is primitive and cannot be deep merged
			mergedOutput[index] = sourceElement
		end
	end

	return mergedOutput
end

function deepMerge(target: any, source: any): any
	if isObject(target) and isObject(source) then
		-- ROBLOX deviation START: use table.clone instead of manual copy
		local mergedOutput = table.clone(target)
		-- ROBLOX deviation END

		for key, value in pairs(source) do
			if isObject(source[key]) and not source[key]["$$typeof"] then
				if not target[key] then
					Object.assign(mergedOutput, { [key] = source[key] })
				else
					mergedOutput[key] = deepMerge(target[key], source[key])
				end
			elseif Array.isArray(source[key]) then
				mergedOutput[key] = deepMergeArray(target[key], source[key])
			else
				Object.assign(mergedOutput, { [key] = source[key] })
			end
		end

		return mergedOutput
	elseif Array.isArray(target) and Array.isArray(source) then
		return deepMergeArray(target, source)
	end

	return target
end

-- ROBLOX deviation: added to handle file paths in snapshot/State
local function robloxGetParent(path: string, level_: number?): string
	local level = if level_ then level_ else 0

	local isUnixPath = string.sub(path, 1, 1) == "/"
	local t = {}

	for p in string.gmatch(path, "[^\\/][^\\/]*") do
		table.insert(t, p)
	end
	if level > 0 then
		t = { table.unpack(t, 1, #t - level) }
	end

	if isUnixPath then
		return "/" .. table.concat(t, "/")
	end

	return table.concat(t, "\\")
end

return {
	testNameToKey = testNameToKey,
	keyToTestName = keyToTestName,
	getSnapshotData = getSnapshotData,
	addExtraLineBreaks = addExtraLineBreaks,
	removeExtraLineBreaks = removeExtraLineBreaks,
	serialize = serialize,
	minify = minify,
	deserializeString = deserializeString,
	escapeBacktickString = escapeBacktickString,
	saveSnapshotFile = saveSnapshotFile,
	deepMerge = deepMerge,
	-- ROBLOX deviation: not in upstream
	robloxGetParent = robloxGetParent,
}
