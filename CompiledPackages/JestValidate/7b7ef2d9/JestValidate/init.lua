-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-validate/src/index.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local exports = {}

local utilsModule = require(script.utils)
exports.ValidationError = utilsModule.ValidationError
export type ValidationError = utilsModule.ValidationError
-- ROBLOX deviation START: not ported yet
-- exports.createDidYouMeanMessage = utilsModule.createDidYouMeanMessage
-- exports.format = utilsModule.format
-- exports.logValidationWarning = utilsModule.logValidationWarning
-- local typesModule = require(script.types)
-- exports.DeprecatedOptions = typesModule.DeprecatedOptions
-- exports.validate = require(script.validate).default
-- exports.validateCLIOptions = require(script.validateCLIOptions).default
-- exports.multipleValidOptions = require(script.condition).multipleValidOptions
-- ROBLOX deviation END
return exports
