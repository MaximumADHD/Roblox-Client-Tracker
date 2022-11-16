-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-core/src/getChangedFilesPromise.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Promise<T> = LuauPolyfill.Promise<T>

local exports = {}

-- ROBLOX deviation START: skipped unnecessary imports
local typesModule = require(Packages.JestTypes)
type Config_GlobalConfig = typesModule.Config_GlobalConfig
type Config_ProjectConfig = typesModule.Config_ProjectConfig
type ChangedFilesPromise = Promise<nil>
-- ROBLOX deviation END
exports.default =
	function(_globalConfig: Config_GlobalConfig, _configs: Array<Config_ProjectConfig>): ChangedFilesPromise | nil
		--[[
			ROBLOX deviation: skipped lines 17-41
			original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-core/src/getChangedFilesPromise.ts#L17-L41
		]]
		return nil
	end
return exports
