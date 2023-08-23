--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/core/ApolloLink.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array, Boolean, Error = LuauPolyfill.Array, LuauPolyfill.Boolean, LuauPolyfill.Error
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error

local invariantModule = require(srcWorkspace.jsutils.invariant)
local InvariantError = invariantModule.InvariantError
local invariant = invariantModule.invariant
local utilitiesModule = require(srcWorkspace.utilities)
local Observable = utilitiesModule.Observable
type Observable<T> = utilitiesModule.Observable<T>
type Observer<T> = utilitiesModule.Observer<T>
local typesModule = require(script.Parent.types)
type NextLink = typesModule.NextLink
type Operation = typesModule.Operation
type RequestHandler = typesModule.RequestHandler
type FetchResult<TData, C, E> = typesModule.FetchResult<TData, C, E>
type GraphQLRequest = typesModule.GraphQLRequest
local utilsModule = require(script.Parent.Parent.utils)
local validateOperation = utilsModule.validateOperation
local createOperation = utilsModule.createOperation
local transformOperation = utilsModule.transformOperation

local ApolloLink = {}
ApolloLink.__index = ApolloLink

export type ApolloLink = {
	split: ((
		self: ApolloLink,
		test: ((op: Operation) -> boolean),
		left: ApolloLink | RequestHandler,
		right: (ApolloLink | RequestHandler)?
	) -> ApolloLink),
	concat: ((self: ApolloLink, next: ApolloLink | RequestHandler) -> ApolloLink),
	request: ((
		self: ApolloLink,
		operation: Operation,
		forward: NextLink?
	) -> (Observable<FetchResult<any, any, any>> | nil)),
	setOnError: ((self: ApolloLink, fn: any) -> ApolloLink),
}

local function passthrough(self: ApolloLink, op: Operation, forward: NextLink): Observable<any>
	if Boolean.toJSBoolean(forward) then
		return forward(op) :: Observable<any>
	else
		return Observable.of()
	end
end

local function toLink(handler: (RequestHandler | ApolloLink)): ApolloLink
	if typeof(handler) == "function" then
		return ApolloLink.new(handler :: RequestHandler)
	else
		return handler :: ApolloLink
	end
end

local function isTerminating(link: ApolloLink): boolean
	local argumentCount, _variadic = debug.info(link.request, "a")
	return argumentCount <= 2
end

type LinkError = Error & { link: ApolloLink? }

local LinkError = setmetatable({}, { __index = Error })
LinkError.__index = LinkError

function LinkError.new(message: string?, link: ApolloLink?): LinkError
	local self: any = Error.new(message)
	self.link = link

	return (setmetatable(self, LinkError) :: any) :: LinkError
end

function ApolloLink.empty(): ApolloLink
	return ApolloLink.new(function(self)
		return Observable.of()
	end)
end

function ApolloLink.from(links: Array<(ApolloLink | RequestHandler)>): ApolloLink
	if #links == 0 then
		return ApolloLink.empty()
	end
	return Array.reduce(Array.map(links, toLink, nil), function(x, y)
		return x:concat(y)
	end) :: ApolloLink
end

function ApolloLink.split_(
	test: ((op: Operation) -> boolean),
	left: ApolloLink | RequestHandler,
	right: (ApolloLink | RequestHandler)?
): ApolloLink
	local leftLink = toLink(left)
	local rightLink
	if Boolean.toJSBoolean(right) and right ~= nil then
		rightLink = toLink(right)
	else
		rightLink = toLink(ApolloLink.new(passthrough))
	end

	if isTerminating(leftLink) and isTerminating(rightLink) then
		return ApolloLink.new(function(self, operation)
			if test(operation) then
				local ref = leftLink:request(operation)
				return Boolean.toJSBoolean(ref) and ref or Observable.of()
			else
				local ref = rightLink:request(operation)
				return Boolean.toJSBoolean(ref) and ref or Observable.of()
			end
		end)
	else
		return ApolloLink.new(function(self, operation, forward)
			if test(operation) then
				local ref = leftLink:request(operation, forward)
				return Boolean.toJSBoolean(ref) and ref or Observable.of()
			else
				local ref = rightLink:request(operation, forward)
				return Boolean.toJSBoolean(ref) and ref or Observable.of()
			end
		end)
	end
end

function ApolloLink.execute(link: ApolloLink, operation: GraphQLRequest): Observable<FetchResult<any, any, any>>
	local ref = link:request(createOperation(operation.context, transformOperation(validateOperation(operation))))
	return Boolean.toJSBoolean(ref) and ref or Observable.of()
end

function ApolloLink.concat_(first: ApolloLink | RequestHandler, second: ApolloLink | RequestHandler): ApolloLink
	local firstLink = toLink(first)
	if isTerminating(firstLink) then
		invariant.warn(
			LinkError.new("You are calling concat on a terminating link, which will have no effect", firstLink)
		)
		return firstLink
	end

	local nextLink = toLink(second)
	if isTerminating(nextLink) then
		return ApolloLink.new(function(self, operation)
			local firstRef = firstLink:request(operation, function(op)
				local nextRef = nextLink:request(op)
				return Boolean.toJSBoolean(nextRef) and nextRef or Observable.of()
			end)
			return Boolean.toJSBoolean(firstRef) and firstRef or Observable.of()
		end)
	else
		return ApolloLink.new(function(self, operation, forward)
			local firstRef = firstLink:request(operation, function(op)
				local nextRef = nextLink:request(op, forward)
				return Boolean.toJSBoolean(nextRef) and nextRef or Observable.of()
			end)
			return Boolean.toJSBoolean(firstRef) and firstRef or Observable.of()
		end)
	end
end

function ApolloLink.new(request: RequestHandler?): ApolloLink
	local self = {}
	if Boolean.toJSBoolean(request) then
		self.request = request
	end
	return (setmetatable(self, ApolloLink) :: any) :: ApolloLink
end

function ApolloLink:split(
	test: ((op: Operation) -> boolean),
	left: ApolloLink | RequestHandler,
	right: (ApolloLink | RequestHandler)?
): ApolloLink
	return self:concat(
		ApolloLink.split_(test, left, Boolean.toJSBoolean(right) and right or ApolloLink.new(passthrough))
	)
end

function ApolloLink:concat(next: ApolloLink | RequestHandler): ApolloLink
	return ApolloLink.concat_(self, next)
end

function ApolloLink:request(operation: Operation, forward: NextLink?): (Observable<FetchResult<any, any, any>> | nil)
	error(InvariantError.new("request is not implemented"))
end

function ApolloLink:onError(error_: any, observer: Observer<FetchResult<any, any, any>>?)
	if Boolean.toJSBoolean(observer) and observer ~= nil and Boolean.toJSBoolean(observer.error) then
		(observer :: any):error(error_)

		-- Returning false indicates that observer.error does not need to be
		-- called again, since it was already called (on the previous line).
		-- Calling observer.error again would not cause any real problems,
		-- since only the first call matters, but custom onError functions
		-- might have other reasons for wanting to prevent the default
		-- behavior by returning false.
		return false
	end
	-- Throw errors will be passed to observer.error.
	error(error_)
end

function ApolloLink:setOnError(fn: any): ApolloLink
	(self :: any).onError = fn
	return self
end

exports.ApolloLink = ApolloLink
return exports
