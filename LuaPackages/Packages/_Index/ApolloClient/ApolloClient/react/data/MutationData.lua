--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/data/MutationData.ts
local exports = {}

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
local Boolean, Object = LuauPolyfill.Boolean, LuauPolyfill.Object
type Object = { [string]: any }
type Record<T, U> = { [T]: U }

local equal = require(srcWorkspace.jsutils.equal)
local DocumentType = require(script.Parent.Parent.parser).DocumentType
local errorsModule = require(srcWorkspace.errors)
local ApolloError = errorsModule.ApolloError
type ApolloError = errorsModule.ApolloError
local typesModule = require(script.Parent.Parent.types.types)
type MutationDataOptions<TData, TVariables, TContext, TCache> = typesModule.MutationDataOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
type MutationTuple<TData, TVariables, TContext, TCache> = typesModule.MutationTuple<TData, TVariables, TContext, TCache>
type MutationFunctionOptions<TData, TVariables, TContext, TCache> = typesModule.MutationFunctionOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
type MutationResult<TData> = typesModule.MutationResult<TData>
local OperationDataModule = require(script.Parent.OperationData)
local OperationData = OperationDataModule.OperationData
type OperationData<TOptions> = OperationDataModule.OperationData<TOptions>
local coreModule = require(srcWorkspace.core)
type MutationOptions<TData, TVariables, TContext, TCache> = coreModule.MutationOptions<
	TData,
	TVariables,
	TContext,
	TCache
>
local mergeOptions = coreModule.mergeOptions
-- local ApolloCache = coreModule.ApolloCache
-- local OperationVariables = coreModule.OperationVariables
-- local DefaultContext = coreModule.DefaultContext
local LinkCoreModule = require(srcWorkspace.link.core)
type FetchResult<TData, C, E> = LinkCoreModule.FetchResult<TData, C, E>

type MutationResultWithoutClient<TData> = {
	data: (TData | nil)?,
	error: ApolloError?,
	loading: boolean,
	called: boolean,
}

local MutationData = setmetatable({}, { __index = OperationData })
MutationData.__index = MutationData

export type MutationData<TData, TVariables, TContext, TCache> = OperationData<
	MutationDataOptions<TData, TVariables, TContext, TCache>
> & {
	execute: (
		self: MutationData<TData, TVariables, TContext, TCache>,
		result: MutationResultWithoutClient<TData>
	) -> MutationTuple<TData, TVariables, TContext, TCache>,
	afterExecute: (self: MutationData<TData, TVariables, TContext, TCache>) -> (),
	cleanup: (self: MutationData<TData, TVariables, TContext, TCache>) -> (),
}

type MutationDataConstructorArgs<TData, TVariables, TContext, TCache> = {
	options: MutationDataOptions<TData, TVariables, TContext, TCache>,
	context: any,
	result: MutationResultWithoutClient<TData>,
	setResult: (self: any, MutationResultWithoutClient<TData>) -> any,
}

function MutationData.new<TData, TVariables, TContext, TCache>(
	ref: MutationDataConstructorArgs<
		TData,
		TVariables,
		TContext,
		TCache
	>
): MutationData<TData, TVariables, TContext, TCache>
	local self: any = OperationData.new(ref.options, ref.context)
	self.runMutation = function(mutationFunctionOptions: Object?)
		if mutationFunctionOptions == nil then
			mutationFunctionOptions = {}
		end
		self:onMutationStart()
		local mutationId = self:generateNewMutationId()

		return self:mutate(mutationFunctionOptions)
			:andThen(function(response)
				self:onMutationCompleted(response, mutationId)
				return response
			end)
			:catch(function(error_: ApolloError)
				local ref_ = self:getOptions()
				local onError = ref_.onError
				self:onMutationError(error_, mutationId)
				if Boolean.toJSBoolean(onError) then
					onError(ref_, error_)
					return {
						data = nil,
						errors = error_,
					}
				else
					error(error_)
				end
			end)
	end

	self:verifyDocumentType(ref.options.mutation, DocumentType.Mutation)
	self.result = ref.result
	self.setResult = ref.setResult
	self.mostRecentMutationId = 0
	return (setmetatable(self, MutationData) :: any) :: MutationData<any, any, any, any>
end

function MutationData:execute(result: any): MutationTuple<any, any, any, any>
	self.isMounted = true
	self:verifyDocumentType(self:getOptions().mutation, DocumentType.Mutation)
	return { self.runMutation, Object.assign({}, result, { client = self:refreshClient().client }) }
end

function MutationData:afterExecute()
	self.isMounted = true
	return function(...)
		return self:unmount(...)
	end
end

function MutationData:cleanup()
	-- // No cleanup required.
end

function MutationData:mutate(options: MutationFunctionOptions<any, any, any, any>)
	return self:refreshClient().client:mutate(mergeOptions(self:getOptions(), options))
end

function MutationData:onMutationStart()
	if not self.result.loading and not self:getOptions().ignoreResults then
		self:updateResult({
			loading = true,
			error = nil,
			data = nil,
			called = true,
		})
	end
end

-- ROBLOX TODO: use default type args to acheive FetchResult<TData>
function MutationData:onMutationCompleted(
	response: FetchResult<any, Record<string, any>, Record<string, any>>,
	mutationId: number
)
	local options = self:getOptions()
	local onCompleted, ignoreResults = options.onCompleted, options.ignoreResults

	local data, errors = response.data, response.errors

	-- ROBLOX FIXME Luau: typecheck required to silence false positive error message
	local error_ = if errors and #(errors :: Array<any>) > 0 then ApolloError.new({ graphQLErrors = errors }) else nil

	local function callOncomplete()
		if Boolean.toJSBoolean(onCompleted) then
			return onCompleted(data)
		else
			return nil
		end
	end

	if self:isMostRecentMutation(mutationId) and not ignoreResults then
		self:updateResult({
			called = true,
			loading = false,
			data = data,
			error = error_,
		})
	end
	callOncomplete()
end

function MutationData:onMutationError(error_: ApolloError, mutationId: number)
	if self:isMostRecentMutation(mutationId) then
		self:updateResult({
			loading = false,
			error = error_,
			data = nil,
			called = true,
		})
	end
end

function MutationData:generateNewMutationId(): number
	(self :: { mostRecentMutationId: number }).mostRecentMutationId += 1
	return self.mostRecentMutationId
end

function MutationData:isMostRecentMutation(mutationId: number)
	return self.mostRecentMutationId == mutationId
end

function MutationData:updateResult(result: MutationResultWithoutClient<any>): MutationResultWithoutClient<any> | nil
	if self.isMounted and (not self.previousResult or not equal(self.previousResult, result)) then
		self:setResult(result)
		self.previousResult = result
		return result
	end
	return nil
end

exports.MutationData = MutationData

return exports
