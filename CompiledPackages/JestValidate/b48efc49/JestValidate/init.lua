-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-validate/src/index.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local utilsModule = require(script.utils)

export type ValidationError = utilsModule.ValidationError

return {
	ValidationError = utilsModule.ValidationError,
}
