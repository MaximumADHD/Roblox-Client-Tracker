-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-validate/src/utils.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local jestTypesModule = require(Packages.JestTypes)
local Error = jestTypesModule.Error
type Error = jestTypesModule.Error

local chalk = require(Packages.ChalkLua)

export type ValidationError = Error & { name: string, message: string }
local ValidationError = setmetatable({}, { __index = Error })
ValidationError.__index = ValidationError

function ValidationError.new(name: string, message: string, comment: string?): ValidationError
	local self = Error.new()
	local commentSuffix = if comment then "\n\n" .. comment else "\n"
	self.name = ""
	self.message = chalk.red(chalk.bold(name) .. ":\n\n" .. message .. commentSuffix)
	return (self :: any) :: ValidationError
end

return {
	ValidationError = ValidationError,
}
