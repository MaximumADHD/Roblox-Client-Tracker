-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-reporters/src/getSnapshotStatus.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>

local exports = {}

local chalk = require(Packages.ChalkLua)
local testResultModule = require(Packages.JestTestResult)
type Snapshot = testResultModule.Snapshot

local pluralize = require(Packages.JestUtil).pluralize

local ARROW = " \u{203A} "
local DOT = " \u{2022} "
-- ROBLOX deviation START: chalk doesn't support chaining methods. Using nested calls instead
local FAIL_COLOR = function(...)
	return chalk.bold(chalk.red(...))
end
local SNAPSHOT_ADDED = function(...)
	return chalk.bold(chalk.green(...))
end
local SNAPSHOT_UPDATED = function(...)
	return chalk.bold(chalk.green(...))
end
local SNAPSHOT_OUTDATED = function(...)
	return chalk.bold(chalk.yellow(...))
end
-- ROBLOX deviation END

exports.default = function(snapshot: Snapshot, afterUpdate: boolean): Array<string>
	local statuses = {}

	if Boolean.toJSBoolean(snapshot.added) then
		table.insert(statuses, SNAPSHOT_ADDED(ARROW .. pluralize("snapshot", snapshot.added) .. " written."))
	end

	if Boolean.toJSBoolean(snapshot.updated) then
		table.insert(statuses, SNAPSHOT_UPDATED(ARROW .. pluralize("snapshot", snapshot.updated) .. " updated."))
	end

	if Boolean.toJSBoolean(snapshot.unmatched) then
		table.insert(statuses, FAIL_COLOR(ARROW .. pluralize("snapshot", snapshot.unmatched) .. " failed."))
	end

	if Boolean.toJSBoolean(snapshot.unchecked) then
		if afterUpdate then
			table.insert(statuses, SNAPSHOT_UPDATED(ARROW .. pluralize("snapshot", snapshot.unchecked) .. " removed."))
		else
			table.insert(
				statuses,
				SNAPSHOT_OUTDATED(ARROW .. pluralize("snapshot", snapshot.unchecked) .. " obsolete.")
			)
		end

		Array.forEach(snapshot.uncheckedKeys, function(key: string)
			table.insert(statuses, "	" .. DOT .. key)
		end)
	end

	if snapshot.fileDeleted then
		table.insert(statuses, SNAPSHOT_UPDATED(ARROW .. "snapshot file removed."))
	end

	return statuses
end

return exports
