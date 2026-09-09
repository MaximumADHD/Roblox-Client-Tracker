-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/lib/createContext.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent.Parent

local exports = {}

local typesModule = require(Packages.JestTypes)
type Config_ProjectConfig = typesModule.Config_ProjectConfig
-- ROBLOX deviation START: no haste maps support
-- local jest_haste_mapModule = require(Packages["jest-haste-map"])
-- type HasteMapObject = jest_haste_mapModule.HasteMapObject
type HasteMapObject = nil
-- ROBLOX deviation END
local jest_runtimeModule = require(Packages.JestRuntime)
-- local Runtime = jest_runtimeModule.default
type Context = jest_runtimeModule.Context

-- ROBLOX deviation START: no haste maps support
-- local function createContext(config: Config_ProjectConfig, ref0: HasteMapObject): TestContext
-- 	local hasteFS, moduleMap = ref.hasteFS, ref.moduleMap
-- ROBLOX deviation END
local function createContext(config: Config_ProjectConfig, _ref: HasteMapObject): Context
	return {
		config = config,
		-- ROBLOX deviation START: no haste maps support
		-- hasteFS = hasteFS,
		-- moduleMap = moduleMap,
		-- resolver = Runtime:createResolver(config, moduleMap),
		-- ROBLOX deviation END
	}
end
exports.default = createContext

return exports
