-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/index.js
local Packages = script.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local exports = {} :: { [string]: any }

local getQueriesForElement = require(script["get-queries-for-element"]).getQueriesForElement
local queries = require(script.queries)
local queryHelpers = require(script["query-helpers"])

Object.assign(exports, require(script.queries))
Object.assign(exports, require(script["wait-for"]))
Object.assign(exports, require(script["wait-for-element-to-be-removed"]))
exports.getDefaultNormalizer = require(script.matches).getDefaultNormalizer
Object.assign(exports, require(script["get-node-text"]))
Object.assign(exports, require(script.events))
Object.assign(exports, require(script["get-queries-for-element"]))
Object.assign(exports, require(script.screen))
Object.assign(exports, require(script["query-helpers"]))
-- local role_helpersModule = require(script["role-helpers"])
-- exports.getRoles = role_helpersModule.getRoles
-- exports.logRoles = role_helpersModule.logRoles
-- exports.isInaccessible = role_helpersModule.isInaccessible
Object.assign(exports, require(script["pretty-dom"]))
local configModule = require(script.config)
exports.configure = configModule.configure
exports.getConfig = configModule.getConfig
Object.assign(exports, require(script.suggestions))

-- "within" reads better in user-code
-- "getQueriesForElement" reads better in library code
-- so we have both
exports.within = getQueriesForElement
-- export query utils under a namespace for convenience:
exports.queries = queries
exports.queryHelpers = queryHelpers
exports.document = require(script.jsHelpers.document)

-- ROBLOX deviation START: reexport types
local typesModule = require(script.types)
export type within = typesModule.within
export type QueryByBoundAttribute<T = Instance> = typesModule.QueryByBoundAttribute<T>
export type AllByBoundAttribute<T = Instance> = typesModule.AllByBoundAttribute<T>
export type FindAllByBoundAttribute<T = Instance> = typesModule.FindAllByBoundAttribute<T>
export type GetByBoundAttribute<T = Instance> = typesModule.GetByBoundAttribute<T>
export type FindByBoundAttribute<T = Instance> = typesModule.FindByBoundAttribute<T>
export type QueryByText<T = Instance> = typesModule.QueryByText<T>
export type AllByText<T = Instance> = typesModule.AllByText<T>
export type FindAllByText<T = Instance> = typesModule.FindAllByText<T>
export type GetByText<T = Instance> = typesModule.GetByText<T>
export type FindByText<T = Instance> = typesModule.FindByText<T>
export type getByPlaceholderText<T = Instance> = typesModule.getByPlaceholderText<T>
export type getAllByPlaceholderText<T = Instance> = typesModule.getAllByPlaceholderText<T>
export type queryByPlaceholderText<T = Instance> = typesModule.queryByPlaceholderText<T>
export type queryAllByPlaceholderText<T = Instance> = typesModule.queryAllByPlaceholderText<T>
export type findByPlaceholderText<T = Instance> = typesModule.findByPlaceholderText<T>
export type findAllByPlaceholderText<T = Instance> = typesModule.findAllByPlaceholderText<T>
export type getByText<T = Instance> = typesModule.getByText<T>
export type getAllByText<T = Instance> = typesModule.getAllByText<T>
export type queryByText<T = Instance> = typesModule.queryByText<T>
export type queryAllByText<T = Instance> = typesModule.queryAllByText<T>
export type findByText<T = Instance> = typesModule.findByText<T>
export type findAllByText<T = Instance> = typesModule.findAllByText<T>
export type getByDisplayValue<T = Instance> = typesModule.getByDisplayValue<T>
export type getAllByDisplayValue<T = Instance> = typesModule.getAllByDisplayValue<T>
export type queryByDisplayValue<T = Instance> = typesModule.queryByDisplayValue<T>
export type queryAllByDisplayValue<T = Instance> = typesModule.queryAllByDisplayValue<T>
export type findByDisplayValue<T = Instance> = typesModule.findByDisplayValue<T>
export type findAllByDisplayValue<T = Instance> = typesModule.findAllByDisplayValue<T>
export type getByTestId<T = Instance> = typesModule.getByTestId<T>
export type getAllByTestId<T = Instance> = typesModule.getAllByTestId<T>
export type queryByTestId<T = Instance> = typesModule.queryByTestId<T>
export type queryAllByTestId<T = Instance> = typesModule.queryAllByTestId<T>
export type findByTestId<T = Instance> = typesModule.findByTestId<T>
export type findAllByTestId<T = Instance> = typesModule.findAllByTestId<T>
export type WithSuggest = typesModule.WithSuggest
export type GetErrorFunction<Argument = any> = typesModule.GetErrorFunction<Argument>
export type SelectorMatcherOptions = typesModule.SelectorMatcherOptions
export type QueryByAttribute = typesModule.QueryByAttribute
export type AllByAttribute = typesModule.AllByAttribute
export type queryByAttribute = typesModule.queryByAttribute
export type queryAllByAttribute = typesModule.queryAllByAttribute
export type getElementError = typesModule.getElementError
export type QueryMethod<Argument, Return> = typesModule.QueryMethod<Argument, Return>
export type QueryBy<Argument> = typesModule.QueryBy<Argument>
export type GetAllBy<Argument> = typesModule.GetAllBy<Argument>
export type FindAllBy<Argument> = typesModule.FindAllBy<Argument>
export type GetBy<Argument> = typesModule.GetBy<Argument>
export type FindBy<Argument> = typesModule.FindBy<Argument>
export type BuiltQueryMethods<Argument> = typesModule.BuiltQueryMethods<Argument>
export type buildQueries<Argument> = typesModule.buildQueries<Argument>
export type Screen<Q> = typesModule.Screen<Q>
export type screen = typesModule.screen
export type waitForOptions = typesModule.waitForOptions
export type waitFor = typesModule.waitFor
export type waitForElementToBeRemoved<T> = typesModule.waitForElementToBeRemoved<T>
export type MatcherFunction = typesModule.MatcherFunction
export type Matcher = typesModule.Matcher
export type ByRoleMatcher = typesModule.ByRoleMatcher
export type NormalizerFn = typesModule.NormalizerFn
export type NormalizerOptions = typesModule.NormalizerOptions
export type MatcherOptions = typesModule.MatcherOptions
export type Match = typesModule.Match
export type DefaultNormalizerOptions = typesModule.DefaultNormalizerOptions
export type getDefaultNormalizer = typesModule.getDefaultNormalizer
export type getNodeText = typesModule.getNodeText
export type EventType = typesModule.EventType
export type FireFunction = typesModule.FireFunction
export type FireObject = typesModule.FireObject
export type CreateFunction = typesModule.CreateFunction
export type CreateObject = typesModule.CreateObject
export type createEvent = typesModule.createEvent
export type fireEvent = typesModule.fireEvent
export type BoundFunction<T> = typesModule.BoundFunction<T>
export type BoundFunctions<Q> = typesModule.BoundFunctions<Q>
export type Query = typesModule.Query
export type Queries = typesModule.Queries
export type getQueriesForElement = typesModule.getQueriesForElement
export type PrettyDOMOptions = typesModule.PrettyDOMOptions
export type prettyDOM = typesModule.prettyDOM
export type logDOM = typesModule.logDOM
export type prettyFormat_Colors = typesModule.prettyFormat_Colors
export type prettyFormat_CompareKeys = typesModule.prettyFormat_CompareKeys
export type prettyFormat_Options = typesModule.prettyFormat_Options
export type prettyFormat_OptionsReceived = typesModule.prettyFormat_OptionsReceived
export type prettyFormat_OldPlugin = typesModule.prettyFormat_OldPlugin
export type prettyFormat_NewPlugin = typesModule.prettyFormat_NewPlugin
export type prettyFormat_Plugin = typesModule.prettyFormat_Plugin
export type prettyFormat_Plugins = typesModule.prettyFormat_Plugins
export type prettyFormat_PrettyFormatOptions = typesModule.prettyFormat_PrettyFormatOptions
export type prettyFormat_Printer = typesModule.prettyFormat_Printer
export type prettyFormat_Refs = typesModule.prettyFormat_Refs
export type prettyFormat_Theme = typesModule.prettyFormat_Theme
export type Config = typesModule.Config
export type ConfigFn = typesModule.ConfigFn
export type configure = typesModule.configure
export type getConfig = typesModule.getConfig
export type QueryOptions = typesModule.QueryOptions
export type QueryArgs = typesModule.QueryArgs
export type Suggestion = typesModule.Suggestion
export type Variant = typesModule.Variant
export type Method = typesModule.Method
export type getSuggestedQuery = typesModule.getSuggestedQuery
-- ROBLOX deviation END

return exports
