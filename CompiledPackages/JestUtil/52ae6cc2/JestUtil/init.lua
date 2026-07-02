-- ROBLOX upstream: https://github.com/facebook/jest/tree/v28.0.0/packages/jest-util/src/index.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local LuauPolyfill = require(script.Parent.LuauPolyfill)
local Object = LuauPolyfill.Object

local exports = {}

exports.clearLine = require(script.clearLine).default
exports.createDirectory = require(script.createDirectory).default
local ErrorWithStackModule = require(script.ErrorWithStack)
exports.ErrorWithStack = ErrorWithStackModule.default
export type ErrorWithStack = ErrorWithStackModule.ErrorWithStack
-- ROBLOX deviation: need to execute the module explicitly
exports.installCommonGlobals = require(script.installCommonGlobals)().default
-- ROBLOX deviation not ported as it doesn't seem necessary in Lua
-- exports.interopRequireDefault = require(script.interopRequireDefault).default
exports.isInteractive = require(script.isInteractive).default
exports.isPromise = require(script.isPromise).default
exports.setGlobal = require(script.setGlobal).default
exports.deepCyclicCopy = require(script.deepCyclicCopy).default
exports.convertDescriptorToString = require(script.convertDescriptorToString).default
local specialCharsModule = require(script.specialChars)
Object.assign(exports, specialCharsModule)
exports.specialChars = specialCharsModule
-- ROBLOX deviation START: additional assignments for Lua type inferrence to work
exports.ARROW = specialCharsModule.ARROW
exports.ICONS = specialCharsModule.ICONS
exports.CLEAR = specialCharsModule.CLEAR
-- ROBLOX deviation END
-- ROBLOX deviation: not ported as it doesn't seem necessary in Lua
-- exports.replacePathSepForGlob = require(script.replacePathSepForGlob).default
exports.testPathPatternToRegExp = require(script.testPathPatternToRegExp).default
exports.globsToMatcher = require(script.globsToMatcher).default
local preRunMessageModule = require(script.preRunMessage)
exports.preRunMessage = preRunMessageModule
-- ROBLOX deviation START: additional assignments for Lua type inferrence to work
exports.print = preRunMessageModule.print
exports.remove = preRunMessageModule.remove
-- ROBLOX deviation END
exports.pluralize = require(script.pluralize).default
exports.formatTime = require(script.formatTime).default
-- ROBLOX deviation START: not ported as it doesn't seem necessary in Lua
-- exports.tryRealpath = require(script.tryRealpath).default
-- exports.requireOrImportModule = require(script.requireOrImportModule).default
-- ROBLOX deviation END
return exports
