-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-types/src/Transform.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

-- this is here to make it possible to avoid huge dependency trees just for types
export type TransformResult = {
	code: string,
	originalCode: string,
	sourceMapPath: string | nil,
}
return {}
