-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/jest.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local exports = {}

exports.SearchSource = require(script.SearchSource).default
exports.createTestScheduler = require(script.TestScheduler).createTestScheduler
exports.TestWatcher = require(script.TestWatcher).default
exports.runCLI = require(script.cli).runCLI
-- ROBLOX deviation START: not needed
-- exports.getVersion = require(script.version).default
-- ROBLOX deviation END
return exports
