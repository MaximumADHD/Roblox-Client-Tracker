-- ROBLOX upstream: https://github.com/testing-library/react-testing-library/blob/v12.1.5/src/index.js
local Packages = script.Parent

local JestGlobals = require(Packages.JestGlobals)
local afterEach = JestGlobals.afterEach

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local jsHelpers = script.jsHelpers
local isCallable = require(jsHelpers.isCallable)

local exports = {} :: { [string]: any }

local cleanup = require(script.pure).cleanup
-- if we're running in a test runner that supports afterEach
-- or teardown then we'll automatically run cleanup afterEach test
-- this ensures that tests run in isolation from each other
-- if you don't like this then either import the `pure` module
-- or set the RTL_SKIP_AUTO_CLEANUP env variable to 'true'.
if
	-- ROBLOX deviation START: adapt conditions
	not _G.RTL_SKIP_AUTO_CLEANUP
	-- ROBLOX deviation END
then
	-- ignore teardown() in code coverage because Jest does not support it
	--[[ istanbul ignore else ]]
	if isCallable(afterEach) then
		afterEach(function()
			cleanup()
		end)
		-- 	-- ROBLOX deviation START: does not apply
		-- 	-- elseif typeof(teardown) == "function" then
		-- 	-- 	-- Block is guarded by `typeof` check.
		-- 	-- 	-- eslint does not support `typeof` guards.
		-- 	-- 	-- eslint-disable-next-line no-undef
		-- 	-- 	teardown(function()
		-- 	-- 		cleanup()
		-- 	-- 	end)
		-- 	-- ROBLOX deviation END
	end
end

Object.assign(exports, require(script.pure))

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
export type DefaultNormalizerOptio = typesModule.DefaultNormalizerOptions
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
export type RenderResult<Q> = typesModule.RenderResult<Q>
export type RenderOptions<Q, Container, BaseElement> = typesModule.RenderOptions<Q, Container, BaseElement>
export type render<Q, Container = Instance, BaseElement = Container> = typesModule.render<Q, Container, BaseElement>
export type cleanup = typesModule.cleanup
export type act = typesModule.act
-- ROBLOX deviation END

return exports
