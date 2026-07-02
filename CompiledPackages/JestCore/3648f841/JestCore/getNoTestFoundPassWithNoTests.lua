-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/getNoTestFoundPassWithNoTests.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent

local exports = {}

local chalk = require(Packages.ChalkLua)

local function getNoTestFoundPassWithNoTests(): string
	return chalk.bold("No tests found, exiting with code 0")
end
exports.default = getNoTestFoundPassWithNoTests

return exports
