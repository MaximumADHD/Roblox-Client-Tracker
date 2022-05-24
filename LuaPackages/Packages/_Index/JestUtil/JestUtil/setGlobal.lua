-- ROBLOX upstream: https://github.com/facebook/jest/tree/v27.4.7/packages/jest-util/src/setGlobal.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local exports = {}

-- ROBLOX deviation: use `unknown` type until Luau starts to support it
type unknown = any

exports.default = function(globalToMutate: typeof(_G), key: string, value: unknown): ()
	-- @ts-expect-error: no index
	globalToMutate[key] = value
end

return exports
