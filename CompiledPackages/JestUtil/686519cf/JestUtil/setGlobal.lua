-- ROBLOX upstream: https://github.com/facebook/jest/tree/v28.0.0/packages/jest-util/src/setGlobal.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local exports = {}

exports.default = function(globalToMutate: typeof(_G), key: string, value: unknown): ()
	-- @ts-expect-error: no index
	globalToMutate[key] = value
end

return exports
