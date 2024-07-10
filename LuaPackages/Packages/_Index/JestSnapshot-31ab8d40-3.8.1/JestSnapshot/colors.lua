-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-snapshot/src/colors.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

-- ROBLOX deviation: tuples not currently supported in Luau so we use a number array instead
export type RGB = { number }

return {
	aForeground2 = 90,
	aBackground2 = 225,

	bForeground2 = 23,
	bBackground2 = 195,

	aForeground3 = { 0x80, 0, 0x80 },
	aBackground3 = { 0xff, 0xd7, 0xff },

	bForeground3 = { 0, 0x5f, 0x5f },
	bBackground3 = { 0xd7, 0xff, 0xff },
}
