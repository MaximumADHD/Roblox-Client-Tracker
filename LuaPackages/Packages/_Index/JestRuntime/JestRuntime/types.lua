-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-runtime/src/types.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local typesModule = require(Packages.JestTypes)
type Config_ProjectConfig = typesModule.Config_ProjectConfig

export type Context = {
	config: Config_ProjectConfig,
	-- ROBLOX deviation START: no supported
	-- hasteFS: HasteFS,
	-- moduleMap: ModuleMap,
	-- resolver: Resolver,
	-- ROBLOX deviation END
}

return {}
