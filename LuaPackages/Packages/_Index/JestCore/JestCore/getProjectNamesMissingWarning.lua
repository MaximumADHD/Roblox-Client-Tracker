-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-core/src/getProjectNamesMissingWarning.ts
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
type Array<T> = LuauPolyfill.Array<T>

local exports = {}

local chalk = require(Packages.ChalkLua)
local typesModule = require(Packages.JestTypes)
type Config_ProjectConfig = typesModule.Config_ProjectConfig
local getProjectDisplayName = require(script.Parent.getProjectDisplayName).default

local function getProjectNamesMissingWarning(projectConfigs: Array<Config_ProjectConfig>): string | nil
	local numberOfProjectsWithoutAName = #Array.filter(projectConfigs, function(config)
		return not Boolean.toJSBoolean(getProjectDisplayName(config))
	end)
	if numberOfProjectsWithoutAName == 0 then
		return nil
	end
	return chalk.yellow(
		("You provided values for --selectProjects but %s.\n"):format(
			if numberOfProjectsWithoutAName == 1
				then "a project does not have a name"
				else ("%s projects do not have a name"):format(tostring(numberOfProjectsWithoutAName))
		) .. "Set displayName in the config of all projects in order to disable this warning.\n"
	)
end
exports.default = getProjectNamesMissingWarning

return exports
