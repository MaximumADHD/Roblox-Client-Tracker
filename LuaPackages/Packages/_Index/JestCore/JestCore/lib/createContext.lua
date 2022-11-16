-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-core/src/lib/createContext.ts
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
exports.default = function(config: Config_ProjectConfig, _ref: HasteMapObject): Context
	-- ROBLOX deviation START: no haste maps support
	-- local hasteFS, moduleMap = ref.hasteFS, ref.moduleMap
	return {
		config = config,
		-- hasteFS = hasteFS,
		-- moduleMap = moduleMap,
		-- resolver = Runtime:createResolver(config, moduleMap),
	}
	-- ROBLOX deviation END
end
return exports
