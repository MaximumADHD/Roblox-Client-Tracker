--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/utils/index.ts
local exports = {}
exports.fromError = require(script.fromError).fromError
exports.toPromise = require(script.toPromise).toPromise
exports.fromPromise = require(script.fromPromise).fromPromise
local throwServerErrorModule = require(script.throwServerError)
export type ServerError = throwServerErrorModule.ServerError
exports.throwServerError = throwServerErrorModule.throwServerError
exports.validateOperation = require(script.validateOperation).validateOperation
exports.createOperation = require(script.createOperation).createOperation
exports.transformOperation = require(script.transformOperation).transformOperation
return exports
