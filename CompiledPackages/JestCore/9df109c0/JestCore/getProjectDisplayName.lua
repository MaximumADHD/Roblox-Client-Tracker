-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/getProjectDisplayName.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean

local exports = {}

local typesModule = require(Packages.JestTypes)
type Config_ProjectConfig = typesModule.Config_ProjectConfig

local function getProjectDisplayName(projectConfig: Config_ProjectConfig): string | nil
	local ref = if typeof(projectConfig.displayName) == "table" then projectConfig.displayName.name else nil
	return Boolean.toJSBoolean(ref) and ref or nil
end
exports.default = getProjectDisplayName

return exports
