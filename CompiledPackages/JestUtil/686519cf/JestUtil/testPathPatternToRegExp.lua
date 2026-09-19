-- ROBLOX upstream: https://github.com/facebook/jest/tree/v28.0.0/packages/jest-util/src/testPathPatternToRegExp.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local RegExp = require(Packages.RegExp)
type RegExp = RegExp.RegExp

local exports = {}

local typesModule = require(Packages.JestTypes)
type Config_GlobalConfig = typesModule.Config_GlobalConfig

-- Because we serialize/deserialize globalConfig when we spawn workers,
-- we can't pass regular expression. Using this shared function on both sides
-- will ensure that we produce consistent regexp for testPathPattern.
exports.default = function(testPathPattern: typeof((({} :: any) :: Config_GlobalConfig).testPathPattern)): RegExp
	return RegExp(testPathPattern, "i")
end

return exports
