-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-reporters/src/getSnapshotSummary.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local exports = {}

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean

local chalk = require(Packages.ChalkLua)

local testResultModule = require(Packages.JestTestResult)
type SnapshotSummary = testResultModule.SnapshotSummary

local typesModule = require(Packages.JestTypes)
type Config_GlobalConfig = typesModule.Config_GlobalConfig
type Config_ProjectConfig = typesModule.Config_ProjectConfig
type Config_Path = typesModule.Config_Path

local pluralize = require(Packages.JestUtil).pluralize
local formatTestPath = require(CurrentModule.utils).formatTestPath

local ARROW = " \u{203A} "
local DOWN_ARROW = " \u{21B3} "
local DOT = " \u{2022} "
-- ROBLOX deviation START: chalk doesn't support chaining methods. Using nested calls instead
local FAIL_COLOR = function(...)
	return chalk.bold(chalk.red(...))
end
local OBSOLETE_COLOR = function(...)
	return chalk.bold(chalk.yellow(...))
end
local SNAPSHOT_ADDED = function(...)
	return chalk.bold(chalk.green(...))
end
local SNAPSHOT_NOTE = chalk.dim
local SNAPSHOT_REMOVED = function(...)
	return chalk.bold(chalk.green(...))
end
local SNAPSHOT_SUMMARY = chalk.bold
local SNAPSHOT_UPDATED = function(...)
	return chalk.bold(chalk.green(...))
end
-- ROBLOX deviation END

exports.default = function(snapshots: SnapshotSummary, globalConfig: Config_GlobalConfig, updateCommand: string)
	local summary = {}
	table.insert(summary, SNAPSHOT_SUMMARY("Snapshot Summary"))

	if Boolean.toJSBoolean(snapshots.added) then
		table.insert(
			summary,
			SNAPSHOT_ADDED(ARROW .. pluralize("snapshot", snapshots.added) .. " written ")
				.. "from "
				.. pluralize("test suite", snapshots.filesAdded)
				.. "."
		)
	end

	if Boolean.toJSBoolean(snapshots.unmatched) then
		table.insert(
			summary,
			FAIL_COLOR(ARROW .. pluralize("snapshot", snapshots.unmatched) .. " failed")
				.. " from "
				.. pluralize("test suite", snapshots.filesUnmatched)
				.. ". "
				.. SNAPSHOT_NOTE("Inspect your code changes or " .. updateCommand .. " to update them.")
		)
	end

	if Boolean.toJSBoolean(snapshots.updated) then
		table.insert(
			summary,
			SNAPSHOT_UPDATED(ARROW .. pluralize("snapshot", snapshots.updated) .. " updated ")
				.. "from "
				.. pluralize("test suite", snapshots.filesUpdated)
				.. "."
		)
	end

	if Boolean.toJSBoolean(snapshots.filesRemoved) then
		if snapshots.didUpdate then
			table.insert(
				summary,
				SNAPSHOT_REMOVED(ARROW .. pluralize("snapshot file", snapshots.filesRemoved) .. " removed ")
					.. "from "
					.. pluralize("test suite", snapshots.filesRemoved)
					.. "."
			)
		else
			table.insert(
				summary,
				OBSOLETE_COLOR(ARROW .. pluralize("snapshot file", snapshots.filesRemoved) .. " obsolete ")
					.. "from "
					.. pluralize("test suite", snapshots.filesRemoved)
					.. ". "
					.. SNAPSHOT_NOTE(
						"To remove "
							.. (if snapshots.filesRemoved == 1 then "it" else "them all")
							.. ", "
							.. updateCommand
							.. "."
					)
			)
		end
	end

	if snapshots.filesRemovedList and #snapshots.filesRemovedList > 0 then
		local head = snapshots.filesRemovedList[1]
		local tail = table.pack(table.unpack(snapshots.filesRemovedList, 2))
		table.insert(summary, "  " .. DOWN_ARROW .. " " .. DOT .. formatTestPath(globalConfig, head))
		Array.forEach(tail, function(key)
			table.insert(summary, "    " .. DOT .. formatTestPath(globalConfig, key))
		end)
	end

	if Boolean.toJSBoolean(snapshots.unchecked) then
		if snapshots.didUpdate then
			table.insert(
				summary,
				SNAPSHOT_REMOVED(ARROW .. pluralize("snapshot", snapshots.unchecked) .. " removed ")
					.. "from "
					.. pluralize("test suite", #snapshots.uncheckedKeysByFile)
					.. "."
			)
		else
			table.insert(
				summary,
				OBSOLETE_COLOR(ARROW .. pluralize("snapshot", snapshots.unchecked) .. " obsolete ")
					.. "from "
					.. pluralize("test suite", #snapshots.uncheckedKeysByFile)
					.. ". "
					.. SNAPSHOT_NOTE(
						"To remove "
							.. (if snapshots.unchecked == 1 then "it" else "them all")
							.. ", "
							.. updateCommand
							.. "."
					)
			)
		end
	end

	Array.forEach(snapshots.uncheckedKeysByFile, function(uncheckedFile)
		table.insert(summary, "  " .. DOWN_ARROW .. formatTestPath(globalConfig, uncheckedFile.filePath))

		Array.forEach(uncheckedFile.keys, function(key)
			table.insert(summary, "    " .. DOT .. key)
		end)
	end)

	return summary
end

return exports
