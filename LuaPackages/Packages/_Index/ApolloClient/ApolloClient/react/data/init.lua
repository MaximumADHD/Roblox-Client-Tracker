--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/data/index.ts
local exports = {}
-- exports.SubscriptionData = require(script.SubscriptionData).SubscriptionData
exports.OperationData = require(script.OperationData).OperationData
local mutationDataModule = require(script.MutationData)
exports.MutationData = mutationDataModule.MutationData
export type MutationData<TData, TVariables, TContext, TCache> = mutationDataModule.MutationData<
	TData,
	TVariables,
	TContext,
	TCache
>
local queryDataModule = require(script.QueryData)
exports.QueryData = queryDataModule.QueryData
export type QueryData<TData, TVariables> = queryDataModule.QueryData<TData, TVariables>
return exports
