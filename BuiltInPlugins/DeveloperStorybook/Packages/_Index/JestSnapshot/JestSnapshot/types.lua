-- upstream: https://github.com/facebook/jest/blob/v27.0.6/packages/jest-snapshot/src/types.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

-- ROBLOX TODO: Context defined as any for now since we don't have MatcherState
-- defined in expect
export type Context = any

export type MatchSnapshotConfig = {
	context: Context,
	hint: string?,
	inlineSnapshot: string?,
	isInline: boolean,
	matcherName: string,
	properties: any?,
	received: any,
}

export type SnapshotData = { [string]: string }

-- // copied from `expect` - should be shared
export type ExpectationResult = {
	pass: boolean,
	message: () -> string
}

return {}