-- ROBLOX upstream: https://github.com/facebook/jest/tree/v28.0.0/packages/jest-console/src/index.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script

local exports = {}

-- ROBLOX deviation START: additional helper / polyfill modules
exports.helpers = require(CurrentModule.helpers)

local ConsoleModule = require(CurrentModule.Console)
exports.Console = ConsoleModule
export type Console = ConsoleModule.Console
export type ConsoleOptions = ConsoleModule.ConsoleOptions
-- ROBLOX deviation END

local BufferedConsoleModule = require(CurrentModule.BufferedConsole)
exports.BufferedConsole = BufferedConsoleModule.default
export type BufferedConsole = BufferedConsoleModule.BufferedConsole

local CustomConsoleModule = require(CurrentModule.CustomConsole)
exports.CustomConsole = CustomConsoleModule.default
export type CustomConsole = CustomConsoleModule.CustomConsole

local NullConsoleModule = require(CurrentModule.NullConsole)
exports.NullConsole = NullConsoleModule.default
export type NullConsole = NullConsoleModule.NullConsole
exports.getConsoleOutput = require(CurrentModule.getConsoleOutput).default

local typesModule = require(CurrentModule.types)
export type ConsoleBuffer = typesModule.ConsoleBuffer
export type LogMessage = typesModule.LogMessage
export type LogType = typesModule.LogType
export type LogEntry = typesModule.LogEntry
export type InspectOptions = typesModule.InspectOptions

return exports
