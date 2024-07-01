-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/test-utils/src/index.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

local CurrentModule = script

local alignedAnsiStyleSerializer = require(CurrentModule.alignedAnsiStyleSerializer)
local configModule = require(CurrentModule.config)

--[[
	ROBLOX deviation: ommiting ConditionalTest and config imports
	original code:
	export {
	  isJestJasmineRun,
	  skipSuiteOnJasmine,
	  skipSuiteOnJestCircus,
	  onNodeVersions,
	} from './ConditionalTest';

	export {makeGlobalConfig, makeProjectConfig} from './config';
]]

return {
	alignedAnsiStyleSerializer = alignedAnsiStyleSerializer,
	makeGlobalConfig = configModule.makeGlobalConfig,
	makeProjectConfig = configModule.makeProjectConfig,
}
