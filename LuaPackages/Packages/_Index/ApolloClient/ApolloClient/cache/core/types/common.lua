--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/cache/core/types/common.ts
local exports = {}

local srcWorkspace = script.Parent.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Error = LuauPolyfill.Error
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object
type Record<T, U> = { [T]: U }

local GraphQL = require(rootWorkspace.GraphQL)
type FieldNode = GraphQL.FieldNode
type DocumentNode = GraphQL.DocumentNode

-- ROBLOX deviation START: more directly require the original type export to avoid a circular dependency
-- import {
-- 	Reference,
-- 	StoreObject,
-- 	StoreValue,
-- 	isReference,
--   } from '../../../utilities';
local utilitiesGraphqlTypesModule = require(srcWorkspace.utilities.graphql.types)
type Reference = utilitiesGraphqlTypesModule.Reference
type StoreObject = utilitiesGraphqlTypesModule.StoreObject
type StoreValue = utilitiesGraphqlTypesModule.StoreValue
-- ROBLOX deviation end

-- ROBLOX deviation START: causes circular dep, inline trivial type
-- import { StorageType } from '../../inmemory/policies';
type StorageType = Record<string, any> -- Policies.StorageType
-- ROBLOX deviation END

--[[
 * The Readonly<T> type only really works for object types, since it marks
 * all of the object's properties as readonly, but there are many cases when
 * a generic type parameter like TExisting might be a string or some other
 * primitive type, in which case we need to avoid wrapping it with Readonly.
 * SafeReadonly<string> collapses to just string, which makes string
 * assignable to SafeReadonly<any>, whereas string is not assignable to
 * Readonly<any>, somewhat surprisingly.
]]
export type SafeReadonly<T> = T

export type MissingFieldError = {
	message: string,
	path: Array<string | number>,
	query: DocumentNode,
	variables: Record<string, any>?,
}

local MissingFieldError = setmetatable({}, { __index = Error })
MissingFieldError.__index = MissingFieldError

function MissingFieldError.new(
	message: string,
	path: Array<string | number>,
	query: DocumentNode,
	variables: Record<string, any>?
): MissingFieldError
	local self: any = Error.new(message)
	self.message = message
	self.path = path
	self.query = query
	self.variables = variables

	-- We're not using `Object.setPrototypeOf` here as it isn't fully
	-- supported on Android (see issue #3236).
	-- ROBLOX deviation: luau is not a prototype based language
	-- (this as any).__proto__ = MissingFieldError.prototype;
	return (setmetatable(self, MissingFieldError) :: any) :: MissingFieldError
end
exports.MissingFieldError = MissingFieldError

export type FieldSpecifier = {
	typename: string?,
	fieldName: string,
	field: FieldNode?,
	args: Record<string, any>?,
	variables: Record<string, any>?,
}

export type ReadFieldOptions = FieldSpecifier & { from: (StoreObject | Reference)? }

-- ROBLOX FIXME Luau: this is a union upstream, but Luau can't currently disambiguate function unions by arity
export type ReadFieldFunction<V = StoreValue> = (
	self: any,
	optionsOrFieldName: ReadFieldOptions | string,
	from: (StoreObject | Reference)?
) -> SafeReadonly<V>?

export type ToReferenceFunction = (
	self: any,
	objOrIdOrRef: StoreObject | string | Reference,
	mergeIntoStore: boolean?
) -> Reference?

export type CanReadFunction = (self: any, value: StoreValue) -> boolean

type ModifierDetails = {
	DELETE: any,
	INVALIDATE: any,
	fieldName: string,
	storeFieldName: string,
	readField: ReadFieldFunction,
	canRead: CanReadFunction,
	isReference: (self: any, obj: any) -> boolean, -- typeof(isReference),
	toReference: ToReferenceFunction,
	storage: StorageType,
}

export type Modifier<T> = (self: Object | nil, value: T, details: ModifierDetails) -> T

export type Modifiers = { [string]: Modifier<any> }

return exports
