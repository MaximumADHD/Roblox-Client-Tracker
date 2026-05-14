-- ROBLOX upstream: https://github.com/facebook/jest/tree/v28.0.0/packages/jest-util/src/pluralize.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local exports = {}

local function pluralize(word: string, count: number): string
	return ("%s %s%s"):format(tostring(count), word, if count == 1 then "" else "s")
end
exports.default = pluralize
return exports
