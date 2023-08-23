--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/data/OperationData.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean

local graphQLModule = require(rootWorkspace.GraphQL)
type DocumentNode = graphQLModule.DocumentNode
local equal = require(srcWorkspace.jsutils.equal)
local invariant = require(srcWorkspace.jsutils.invariant).invariant
local coreModule = require(script.Parent.Parent.Parent.core)
type ApolloClient<TCacheShape> = coreModule.ApolloClient<TCacheShape>
local parserModule = require(script.Parent.Parent.parser)
type DocumentType = parserModule.DocumentType
local parser = parserModule.parser
local operationName = parserModule.operationName
local typesModule = require(script.Parent.Parent.types.types)
type CommonOptions<TOptions> = typesModule.CommonOptions<TOptions>

local OperationData = {}
OperationData.__index = OperationData

export type OperationData<TOptions> = {
	isMounted: boolean,
	previousOptions: CommonOptions<TOptions>,
	context: any,
	client: ApolloClient<any>,
	getOptions: (self: OperationData<TOptions>) -> TOptions,
	setOptions: (self: OperationData<TOptions>, newOptions: CommonOptions<TOptions>, storePrevious: boolean?) -> (),
}

function OperationData.new(options: any, context: any?)
	local self = {}
	self.options = Boolean.toJSBoolean(options) and options or {}
	self.context = Boolean.toJSBoolean(context) and context or {}
	return setmetatable(self, OperationData)
end

function OperationData:getOptions()
	return self.options
end

function OperationData:setOptions(newOptions: CommonOptions<any>, storePrevious: boolean?)
	if storePrevious == nil then
		storePrevious = false
	end
	if storePrevious and not equal(self.options, newOptions) then
		self.previousOptions = self.options
	end
	self.options = newOptions
end

function OperationData:unmount()
	self.isMounted = false
end

function OperationData:refreshClient()
	local client = Boolean.toJSBoolean((function()
		if Boolean.toJSBoolean(self.options) then
			return self.options.client
		else
			return self.options
		end
	end)()) and (function()
		if Boolean.toJSBoolean(self.options) then
			return self.options.client
		else
			return self.options
		end
	end)() or (function()
		if Boolean.toJSBoolean(self.context) then
			return self.context.client
		else
			return self.context
		end
	end)()
	invariant(
		Boolean.toJSBoolean(client),
		'Could not find "client" in the context or passed in as an option. '
			.. "Wrap the root component in an <ApolloProvider>, or pass an "
			.. "ApolloClient instance in via options."
	)
	local isNew = false
	if client ~= self.client then
		isNew = true
		self.client = client
		self:cleanup()
	end
	return { client = self.client, isNew = isNew }
end

function OperationData:verifyDocumentType(document: DocumentNode, type_: DocumentType)
	local operation = parser(document)
	local requiredOperationName = operationName(type_)
	local usedOperationName = operationName(operation.type)
	invariant(
		operation.type == type_,
		("Running a %s requires a graphql "):format(requiredOperationName)
			.. ("%s, but a %s was used instead."):format(requiredOperationName, usedOperationName)
	)
end

exports.OperationData = OperationData

return exports
