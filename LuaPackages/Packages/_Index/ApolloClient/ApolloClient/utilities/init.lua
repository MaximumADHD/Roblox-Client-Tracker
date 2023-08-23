--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/index.ts
local exports: { [string]: any } = {}
local srcWorkspace = script.Parent
local rootWorkspace = srcWorkspace.Parent
local invariant = require(srcWorkspace.jsutils.invariant).invariant
local DEV = require(script.globals).DEV
invariant("boolean" == typeof(DEV), tostring(DEV))
exports.DEV = DEV
-- ROBLOX deviation: add polyfills for JS Primitives
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Object = LuauPolyfill.Object

local globalModule = require(script.globals)
exports.NULL = globalModule.NULL
export type NULL = globalModule.NULL

local directivesModule = require(script.graphql.directives)
exports.shouldInclude = directivesModule.shouldInclude
exports.hasDirectives = directivesModule.hasDirectives
exports.hasClientExports = directivesModule.hasClientExports
exports.getDirectiveNames = directivesModule.getDirectiveNames
exports.getInclusionDirectives = directivesModule.getInclusionDirectives
export type DirectiveInfo = directivesModule.DirectiveInfo
export type InclusionDirectives = directivesModule.InclusionDirectives
-- ROBLOX TODO: implement fragment module
local fragmentsModule = require(script.graphql.fragments)
export type FragmentMap = fragmentsModule.FragmentMap
exports.createFragmentMap = fragmentsModule.createFragmentMap
exports.getFragmentQueryDocument = fragmentsModule.getFragmentQueryDocument
exports.getFragmentFromSelection = fragmentsModule.getFragmentFromSelection

local getFromASTModule = require(script.graphql.getFromAST)
exports.checkDocument = getFromASTModule.checkDocument
exports.getOperationDefinition = getFromASTModule.getOperationDefinition
exports.getOperationName = getFromASTModule.getOperationName
exports.getFragmentDefinitions = getFromASTModule.getFragmentDefinitions
exports.getQueryDefinition = getFromASTModule.getQueryDefinition
exports.getFragmentDefinition = getFromASTModule.getFragmentDefinition
exports.getMainDefinition = getFromASTModule.getMainDefinition
exports.getDefaultValues = getFromASTModule.getDefaultValues

local storeUtilsModule = require(script.graphql.storeUtils)
export type StoreObject = storeUtilsModule.StoreObject
export type Reference = storeUtilsModule.Reference
export type StoreValue = storeUtilsModule.StoreValue
export type Directives = storeUtilsModule.Directives
export type VariableValue = storeUtilsModule.VariableValue
exports.makeReference = storeUtilsModule.makeReference
exports.isDocumentNode = storeUtilsModule.isDocumentNode
exports.isReference = storeUtilsModule.isReference
exports.isField = storeUtilsModule.isField
exports.isInlineFragment = storeUtilsModule.isInlineFragment
exports.valueToObjectRepresentation = storeUtilsModule.valueToObjectRepresentation
exports.storeKeyNameFromField = storeUtilsModule.storeKeyNameFromField
exports.argumentsObjectFromField = storeUtilsModule.argumentsObjectFromField
exports.resultKeyNameFromField = storeUtilsModule.resultKeyNameFromField
exports.getStoreKeyName = storeUtilsModule.getStoreKeyName
exports.getTypenameFromResult = storeUtilsModule.getTypenameFromResult

local transformModule = require(script.graphql.transform)
export type RemoveNodeConfig<N> = transformModule.RemoveNodeConfig<N>
export type GetNodeConfig<N> = transformModule.GetNodeConfig<N>
export type RemoveDirectiveConfig = transformModule.RemoveDirectiveConfig
export type GetDirectiveConfig = transformModule.GetDirectiveConfig
export type RemoveArgumentsConfig = transformModule.RemoveArgumentsConfig
export type GetFragmentSpreadConfig = transformModule.GetFragmentSpreadConfig
export type RemoveFragmentSpreadConfig = transformModule.RemoveFragmentSpreadConfig
export type RemoveFragmentDefinitionConfig = transformModule.RemoveFragmentDefinitionConfig
export type RemoveVariableDefinitionConfig = transformModule.RemoveVariableDefinitionConfig
exports.addTypenameToDocument = transformModule.addTypenameToDocument
exports.buildQueryFromSelectionSet = transformModule.buildQueryFromSelectionSet
exports.removeDirectivesFromDocument = transformModule.removeDirectivesFromDocument
exports.removeConnectionDirectiveFromDocument = transformModule.removeConnectionDirectiveFromDocument
exports.removeArgumentsFromDocument = transformModule.removeArgumentsFromDocument
exports.removeFragmentSpreadFromDocument = transformModule.removeFragmentSpreadFromDocument
exports.removeClientSetsFromDocument = transformModule.removeClientSetsFromDocument

local paginationModule = require(script.policies.pagination)
exports.concatPagination = paginationModule.concatPagination
exports.offsetLimitPagination = paginationModule.offsetLimitPagination
exports.relayStylePagination = paginationModule.relayStylePagination

local ObservableModule = require(script.observables.Observable)
exports.Observable = ObservableModule.Observable
export type Observable<T> = ObservableModule.Observable<T>
export type Observer<T> = ObservableModule.Observer<T>
export type ObservableSubscription = ObservableModule.ObservableSubscription

Object.assign(exports, require(script.common.mergeDeep))
Object.assign(exports, require(script.common.cloneDeep))
Object.assign(exports, require(script.common.maybeDeepFreeze))
Object.assign(exports, require(script.common.stringifyForDisplay))
Object.assign(exports, require(script.observables.iteration))
Object.assign(exports, require(script.observables.asyncMap))
local concastModule = require(script.observables.Concast)
Object.assign(exports, concastModule)
export type Concast<T> = concastModule.Concast<T>
export type ConcastSourcesIterable<T> = concastModule.ConcastSourcesIterable<T>
Object.assign(exports, require(script.observables.subclassing))
Object.assign(exports, require(script.common.arrays))
Object.assign(exports, require(script.common.objects))
Object.assign(exports, require(script.common.errorHandling))
Object.assign(exports, require(script.common.canUse))
Object.assign(exports, require(script.common.compact))
Object.assign(exports, require(script.common.makeUniqueId))

-- Object.assign(exports, require(script.types.IsStrictlyAny))

return exports
