-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-circus/src/legacy-code-todo-rewrite/jestExpect.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent.Parent.Parent

local exports = {}

local typesModule = require(Packages.JestTypes)
type Config_GlobalConfig = typesModule.Config_GlobalConfig
local expect = require(Packages.Expect)
local jest_snapshotModule = require(Packages.JestSnapshot)
local addSerializer = jest_snapshotModule.addSerializer
-- ROBLOX TODO: not implemented yet
-- local toMatchInlineSnapshot = jest_snapshotModule.toMatchInlineSnapshot
local toMatchSnapshot = jest_snapshotModule.toMatchSnapshot
-- ROBLOX TODO: not implemented yet
-- local toThrowErrorMatchingInlineSnapshot = jest_snapshotModule.toThrowErrorMatchingInlineSnapshot
local toThrowErrorMatchingSnapshot = jest_snapshotModule.toThrowErrorMatchingSnapshot
export type Expect = typeof(expect)

-- ROBLOX deviation: inline type as Pick utility type is not available in Luau
type Pick_Config_GlobalConfig_expand = {
	expand: boolean,
}
exports.default = function(config: Pick_Config_GlobalConfig_expand): Expect
	expect.setState({ expand = config.expand })
	expect.extend({
		-- ROBLOX TODO: not implemented yet
		-- toMatchInlineSnapshot = toMatchInlineSnapshot,
		toMatchSnapshot = toMatchSnapshot,
		-- ROBLOX TODO: not implemented yet
		-- toThrowErrorMatchingInlineSnapshot = toThrowErrorMatchingInlineSnapshot,
		toThrowErrorMatchingSnapshot = toThrowErrorMatchingSnapshot,
	})
	expect.addSnapshotSerializer = addSerializer
	return expect
end
return exports
