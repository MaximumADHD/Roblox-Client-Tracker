-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/getChangedFilesPromise.ts
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

-- ROBLOX deviation START: getChangedFilesPromise is unimplemented
-- local function getChangedFilesPromise(
-- 	globalConfig: Config_GlobalConfig,
-- 	configs: Array<Config_ProjectConfig>
-- ): ChangedFilesPromise | nil
-- 	if Boolean.toJSBoolean(globalConfig.onlyChanged) then
-- 		local allRootsForAllProjects = Array.reduce(configs, function(roots, config)
-- 			if Boolean.toJSBoolean(config.roots) then
-- 				table.insert(
-- 					roots,
-- 					error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: SpreadElement ]] --[[ ...config.roots ]]
-- 				) --[[ ROBLOX CHECK: check if 'roots' is an Array ]]
-- 			end
-- 			return roots
-- 		end, {}) --[[ ROBLOX CHECK: check if 'configs' is an Array ]]
-- 		return getChangedFilesForRoots(allRootsForAllProjects, {
-- 			changedSince = globalConfig.changedSince,
-- 			lastCommit = globalConfig.lastCommit,
-- 			withAncestor = globalConfig.changedFilesWithAncestor,
-- 		}):catch(function(e)
-- 			local message = Array.join(
-- 				Array.filter(
-- 					formatExecError(
-- 						e,
-- 						configs[
-- 							1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 						],
-- 						{ noStackTrace = true }
-- 					):split("\n"),
-- 					function(line)
-- 						return not Boolean.toJSBoolean(
-- 							Array.includes(line, "Command failed:") --[[ ROBLOX CHECK: check if 'line' is an Array ]]
-- 						)
-- 					end
-- 				), --[[ ROBLOX CHECK: check if 'formatExecError(e, configs[0], {
--         noStackTrace: true
--       }).split('\n')' is an Array ]]
-- 				"\n"
-- 			)
-- 			console.error(chalk.red(("\n\n%s"):format(tostring(message))))
-- 			process:exit(1)
-- 		end)
-- 	end
-- 	return nil
-- end
exports.default = function(
	_globalConfig: Config_GlobalConfig,
	_configs: Array<Config_ProjectConfig>
): ChangedFilesPromise | nil
	--[[
			ROBLOX deviation: skipped lines 17-41
			original code: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/getChangedFilesPromise.ts#L17-L41
		]]
	return nil
end
-- ROBLOX deviation END

return exports
