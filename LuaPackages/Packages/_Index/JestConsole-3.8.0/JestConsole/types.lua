-- ROBLOX upstream: https://github.com/facebook/jest/tree/v28.0.0/packages/jest-console/src/types.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>

local exports = {}

export type LogMessage = string

export type LogEntry = { message: LogMessage, origin: string, type: LogType }

export type LogCounters = { [string]: number }

export type LogTimers = { [string]: DateTime }

export type LogType =
	"assert"
	| "count"
	| "debug"
	| "dir"
	| "dirxml"
	| "error"
	| "group"
	| "groupCollapsed"
	| "info"
	| "log"
	| "time"
	| "warn"

export type ConsoleBuffer = Array<LogEntry>

-- ROBLOX deviation START: add type for supproted inspect options
export type InspectOptions = {
	depth: number?,
}
-- Roblox deviation END

return exports
