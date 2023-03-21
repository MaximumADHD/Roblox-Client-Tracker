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

local ObservableModule = require(script.observables.Observable)
exports.Observable = ObservableModule.Observable
export type Observable<T> = ObservableModule.Observable<T>
export type Observer<T> = ObservableModule.Observer<T>
export type ObservableSubscription = ObservableModule.ObservableSubscription

Object.assign(exports, require(script.common.cloneDeep))
Object.assign(exports, require(script.common.stringifyForDisplay))
Object.assign(exports, require(script.common.makeUniqueId))

return exports
