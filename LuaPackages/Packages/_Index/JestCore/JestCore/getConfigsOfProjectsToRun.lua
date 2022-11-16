-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-core/src/getConfigsOfProjectsToRun.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Set = LuauPolyfill.Set
type Array<T> = LuauPolyfill.Array<T>

local exports = {}

local typesModule = require(Packages.JestTypes)
type Config_ProjectConfig = typesModule.Config_ProjectConfig
local getProjectDisplayName = require(script.Parent.getProjectDisplayName).default

local function getConfigsOfProjectsToRun(
	namesOfProjectsToRun: Array<string>,
	projectConfigs: Array<Config_ProjectConfig>
): Array<Config_ProjectConfig>
	local setOfProjectsToRun = Set.new(namesOfProjectsToRun)
	return Array.filter(projectConfigs, function(config)
		local name = getProjectDisplayName(config)
		return name ~= nil and Boolean.toJSBoolean(name) and setOfProjectsToRun:has(name)
	end)
end
exports.default = getConfigsOfProjectsToRun
return exports
