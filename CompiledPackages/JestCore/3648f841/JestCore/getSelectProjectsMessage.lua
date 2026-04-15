-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/getSelectProjectsMessage.ts
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

-- ROBLOX deviation START: predefine functions
local getNoSelectionWarning
local getProjectsRunningMessage
local getProjectNameListElement
-- ROBLOX deviation END

local function getSelectProjectsMessage(
	projectConfigs: Array<Config_ProjectConfig>,
	opts: {
		ignoreProjects: Array<string> | nil,
		selectProjects: Array<string> | nil,
	}
): string
	-- ROBLOX deviation START: fix length check
	-- if projectConfigs.length == 1 then
	if #projectConfigs == 0 then
		-- ROBLOX deviation END
		return getNoSelectionWarning(opts)
	end
	return getProjectsRunningMessage(projectConfigs)
end
exports.default = getSelectProjectsMessage

function getNoSelectionWarning(opts: {
	ignoreProjects: Array<string> | nil,
	selectProjects: Array<string> | nil,
}): string
	if
		Boolean.toJSBoolean(
			if Boolean.toJSBoolean(opts.ignoreProjects) then opts.selectProjects else opts.ignoreProjects
		)
	then
		return chalk.yellow(
			"You provided values for --selectProjects and --ignoreProjects, but no projects were found matching the selection.\n"
				.. "Are you ignoring all the selected projects?\n"
		)
	elseif Boolean.toJSBoolean(opts.ignoreProjects) then
		return chalk.yellow(
			"You provided values for --ignoreProjects, but no projects were found matching the selection.\n"
				.. "Are you ignoring all projects?\n"
		)
	elseif Boolean.toJSBoolean(opts.selectProjects) then
		return chalk.yellow(
			"You provided values for --selectProjects but no projects were found matching the selection.\n"
		)
	else
		return chalk.yellow("No projects were found.\n")
	end
end

function getProjectsRunningMessage(projectConfigs: Array<Config_ProjectConfig>): string
	if #projectConfigs == 1 then
		local name = getProjectDisplayName(projectConfigs[1])
		return ("Running one project: %s\n"):format(chalk.bold(name))
	end
	local projectsList = Array.join(Array.sort(Array.map(projectConfigs, getProjectNameListElement)), "\n")
	return ("Running %s projects:\n%s\n"):format(tostring(#projectConfigs), tostring(projectsList))
end

function getProjectNameListElement(projectConfig: Config_ProjectConfig): string
	local name = getProjectDisplayName(projectConfig)
	local elementContent = if Boolean.toJSBoolean(name) then chalk.bold(name) else "<unnamed project>"
	return ("- %s"):format(tostring(elementContent))
end

return exports
