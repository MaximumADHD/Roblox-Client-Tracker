-- ROBLOX upstream: https://github.com/facebook/jest/tree/v28.0.0/packages/jest-util/src/isInteractive.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]
--[[
	ROBLOX deviation: no equivalent in Lua. Always returning false
	original code:
	import {isCI} from 'ci-info';

	export default !!process.stdout.isTTY && process.env.TERM !== 'dumb' && !isCI;
]]
return {
	default = false,
}
