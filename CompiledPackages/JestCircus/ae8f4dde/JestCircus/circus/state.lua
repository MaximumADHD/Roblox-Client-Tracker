-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-circus/src/state.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

-- ROBLOX deviation START: moved implementation to `combined.lua` to avoid cyclic dependencies

local combinedModule = require(script.Parent.combined)

local exports = {}

exports.ROOT_DESCRIBE_BLOCK_NAME = combinedModule.ROOT_DESCRIBE_BLOCK_NAME
exports.resetState = combinedModule.resetState
exports.getState = combinedModule.getState
exports.setState = combinedModule.setState
exports.dispatch = combinedModule.dispatch
exports.dispatchSync = combinedModule.dispatchSync
exports.addEventHandler = combinedModule.addEventHandler

-- ROBLOX deviation END

return exports
