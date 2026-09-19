-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/lib/logDebugMessages.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>

local exports = {}

local typesModule = require(Packages.JestTypes)
type Config_GlobalConfig = typesModule.Config_GlobalConfig
type Config_ProjectConfig = typesModule.Config_ProjectConfig
-- ROBLOX FIXME START: no version available
-- local VERSION = require_("../../package.json").version -- if the output here changes, update `getConfig` in e2e/runJest.ts
local VERSION = "27.4.7"
-- ROBLOX FIXME END

-- ROBLOX deviation START: added missing variables to limit nr deviations
local RobloxShared = require(Packages.RobloxShared)
local nodeUtils = RobloxShared.nodeUtils
type NodeJS_WriteStream = RobloxShared.NodeJS_WriteStream
local JSON = nodeUtils.JSON
-- ROBLOX deviation END

local function logDebugMessages(
	globalConfig: Config_GlobalConfig,
	configs: Array<Config_ProjectConfig> | Config_ProjectConfig,
	outputStream: NodeJS_WriteStream
): ()
	local output = { configs = configs, globalConfig = globalConfig, version = VERSION }
	outputStream:write((JSON.stringify(output, nil, "  ")) .. "\n")
end
exports.default = logDebugMessages

return exports
