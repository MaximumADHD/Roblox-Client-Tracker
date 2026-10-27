-- ROBLOX upstream: https://github.com/testing-library/react-testing-library/blob/v12.1.5/types/index.d.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object

type React_ReactElement = any
type DocumentFragment = any
type React_JSXElementConstructor<T> = any

local exports = {}

-- TypeScript Version: 3.8
local domModule = require(Packages.DomTestingLibrary)
local queries = domModule.queries
type typeofQueries = typeof(queries)

-- ROBLOX deviation START: ReactDOM not available
type Renderer = any
-- ROBLOX deviation END
local reactAct = require(script.Parent.jsHelpers["react-dom"]["test-utils"]).act
Object.assign(exports, require(Packages.DomTestingLibrary))

export type within = domModule.within
export type QueryByBoundAttribute<T = Instance> = domModule.QueryByBoundAttribute<T>
export type AllByBoundAttribute<T = Instance> = domModule.AllByBoundAttribute<T>
export type FindAllByBoundAttribute<T = Instance> = domModule.FindAllByBoundAttribute<T>
export type GetByBoundAttribute<T = Instance> = domModule.GetByBoundAttribute<T>
export type FindByBoundAttribute<T = Instance> = domModule.FindByBoundAttribute<T>
export type QueryByText<T = Instance> = domModule.QueryByText<T>
export type AllByText<T = Instance> = domModule.AllByText<T>
export type FindAllByText<T = Instance> = domModule.FindAllByText<T>
export type GetByText<T = Instance> = domModule.GetByText<T>
export type FindByText<T = Instance> = domModule.FindByText<T>
export type getByPlaceholderText<T = Instance> = domModule.getByPlaceholderText<T>
export type getAllByPlaceholderText<T = Instance> = domModule.getAllByPlaceholderText<T>
export type queryByPlaceholderText<T = Instance> = domModule.queryByPlaceholderText<T>
export type queryAllByPlaceholderText<T = Instance> = domModule.queryAllByPlaceholderText<T>
export type findByPlaceholderText<T = Instance> = domModule.findByPlaceholderText<T>
export type findAllByPlaceholderText<T = Instance> = domModule.findAllByPlaceholderText<T>
export type getByText<T = Instance> = domModule.getByText<T>
export type getAllByText<T = Instance> = domModule.getAllByText<T>
export type queryByText<T = Instance> = domModule.queryByText<T>
export type queryAllByText<T = Instance> = domModule.queryAllByText<T>
export type findByText<T = Instance> = domModule.findByText<T>
export type findAllByText<T = Instance> = domModule.findAllByText<T>
export type getByDisplayValue<T = Instance> = domModule.getByDisplayValue<T>
export type getAllByDisplayValue<T = Instance> = domModule.getAllByDisplayValue<T>
export type queryByDisplayValue<T = Instance> = domModule.queryByDisplayValue<T>
export type queryAllByDisplayValue<T = Instance> = domModule.queryAllByDisplayValue<T>
export type findByDisplayValue<T = Instance> = domModule.findByDisplayValue<T>
export type findAllByDisplayValue<T = Instance> = domModule.findAllByDisplayValue<T>
export type getByTestId<T = Instance> = domModule.getByTestId<T>
export type getAllByTestId<T = Instance> = domModule.getAllByTestId<T>
export type queryByTestId<T = Instance> = domModule.queryByTestId<T>
export type queryAllByTestId<T = Instance> = domModule.queryAllByTestId<T>
export type findByTestId<T = Instance> = domModule.findByTestId<T>
export type findAllByTestId<T = Instance> = domModule.findAllByTestId<T>
export type WithSuggest = domModule.WithSuggest
export type GetErrorFunction<Argument = any> = domModule.GetErrorFunction<Argument>
export type SelectorMatcherOptions = domModule.SelectorMatcherOptions
export type QueryByAttribute = domModule.QueryByAttribute
export type AllByAttribute = domModule.AllByAttribute
export type queryByAttribute = domModule.queryByAttribute
export type queryAllByAttribute = domModule.queryAllByAttribute
export type getElementError = domModule.getElementError
export type QueryMethod<Argument, Return> = domModule.QueryMethod<Argument, Return>
export type QueryBy<Argument> = domModule.QueryBy<Argument>
export type GetAllBy<Argument> = domModule.GetAllBy<Argument>
export type FindAllBy<Argument> = domModule.FindAllBy<Argument>
export type GetBy<Argument> = domModule.GetBy<Argument>
export type FindBy<Argument> = domModule.FindBy<Argument>
export type BuiltQueryMethods<Argument> = domModule.BuiltQueryMethods<Argument>
export type buildQueries<Argument> = domModule.buildQueries<Argument>
export type Screen<Q> = domModule.Screen<Q>
export type screen = domModule.screen
export type waitForOptions = domModule.waitForOptions
export type waitFor = domModule.waitFor
export type waitForElementToBeRemoved<T> = domModule.waitForElementToBeRemoved<T>
export type MatcherFunction = domModule.MatcherFunction
export type Matcher = domModule.Matcher
export type ByRoleMatcher = domModule.ByRoleMatcher
export type NormalizerFn = domModule.NormalizerFn
export type NormalizerOptions = domModule.NormalizerOptions
export type MatcherOptions = domModule.MatcherOptions
export type Match = domModule.Match
export type DefaultNormalizerOptions = domModule.DefaultNormalizerOptions
export type getDefaultNormalizer = domModule.getDefaultNormalizer
export type getNodeText = domModule.getNodeText
export type EventType = domModule.EventType
export type FireFunction = domModule.FireFunction
export type FireObject = domModule.FireObject
export type CreateFunction = domModule.CreateFunction
export type CreateObject = domModule.CreateObject
export type createEvent = domModule.createEvent
export type fireEvent = domModule.fireEvent
export type BoundFunction<T> = domModule.BoundFunction<T>
export type BoundFunctions<Q> = domModule.BoundFunctions<Q>
export type Query = domModule.Query
export type Queries = domModule.Queries
export type getQueriesForElement = domModule.getQueriesForElement
export type PrettyDOMOptions = domModule.PrettyDOMOptions
export type prettyDOM = domModule.prettyDOM
export type logDOM = domModule.logDOM
export type prettyFormat_Colors = domModule.prettyFormat_Colors
export type prettyFormat_CompareKeys = domModule.prettyFormat_CompareKeys
export type prettyFormat_Options = domModule.prettyFormat_Options
export type prettyFormat_OptionsReceived = domModule.prettyFormat_OptionsReceived
export type prettyFormat_OldPlugin = domModule.prettyFormat_OldPlugin
export type prettyFormat_NewPlugin = domModule.prettyFormat_NewPlugin
export type prettyFormat_Plugin = domModule.prettyFormat_Plugin
export type prettyFormat_Plugins = domModule.prettyFormat_Plugins
export type prettyFormat_PrettyFormatOptions = domModule.prettyFormat_PrettyFormatOptions
export type prettyFormat_Printer = domModule.prettyFormat_Printer
export type prettyFormat_Refs = domModule.prettyFormat_Refs
export type prettyFormat_Theme = domModule.prettyFormat_Theme
export type Config = domModule.Config
export type ConfigFn = domModule.ConfigFn
export type configure = domModule.configure
export type getConfig = domModule.getConfig
export type QueryOptions = domModule.QueryOptions
export type QueryArgs = domModule.QueryArgs
export type Suggestion = domModule.Suggestion
export type Variant = domModule.Variant
export type Method = domModule.Method
export type getSuggestedQuery = domModule.getSuggestedQuery

export type RenderResult<Q = typeofQueries, Container = Instance, BaseElement = Container> = {
	container: Container,
	baseElement: BaseElement,
	debug_: (
		baseElement: (Instance | Array<Instance>)?,
		maxLength: number?,
		options: prettyFormat_OptionsReceived?
	) -> (),
	rerender: (ui: React_ReactElement) -> (),
	unmount: () -> (),
	asFragment: () -> DocumentFragment,
} & Object --[[ ROBLOX TODO: Unhandled node for type: TSMappedType ]] --[[ { [P in keyof Q]: BoundFunction<Q[P]> } ]]

export type RenderOptions<Q = typeofQueries, Container = Instance, BaseElement = Container> = {
	--[[  *
         * By default, React Testing Library will create a div and append that div to the document.body. Your React component will be rendered in the created div. If you provide your own HTMLElement container via this option,
         *  it will not be appended to the document.body automatically.
         *
         *  For example: If you are unit testing a `<tbody>` element, it cannot be a child of a div. In this case, you can
         *  specify a table as the render container.
         *
         *  @see https://testing-library.com/docs/react-testing-library/api/#container
   ]]
	container: Container?,
	--[[  *
         * Defaults to the container if the container is specified. Otherwise `document.body` is used for the default. This is used as
         *  the base element for the queries as well as what is printed when you use `debug()`.
         *
         *  @see https://testing-library.com/docs/react-testing-library/api/#baseelement
         ]]
	baseElement: BaseElement?,
	--[[  *
         * If `hydrate` is set to `true`, then it will render with `ReactDOM.hydrate`. This may be useful if you are using server-side
         *  rendering and use ReactDOM.hydrate to mount your components.
         *
         *  @see https://testing-library.com/docs/react-testing-library/api/#hydrate)
   ]]
	hydrate: boolean?,
	--[[  *
         * Queries to bind. Overrides the default set from DOM Testing Library unless merged.
         *
         *  @see https://testing-library.com/docs/react-testing-library/api/#queries
   ]]
	queries: Q?,
	--[[  *
         * Pass a React Component as the wrapper option to have it rendered around the inner element. This is most useful for creating
         *  reusable custom render functions for common data providers. See setup for examples.
         *
         *  @see https://testing-library.com/docs/react-testing-library/api/#wrapper
   ]]
	wrapper: React_JSXElementConstructor<{ children: React_ReactElement }>?,
}
-- ROBLOX deviation START: can't express equivalent, we just return same type
-- type Omit<T, K> = Pick<T, Exclude<any --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ keyof T ]], K>>
type Omit<T, K> = T
-- ROBLOX deviation END

--[[  *
      * Render into a container which is appended to document.body. It should be used with cleanup.
]]
export type render<Q = typeofQueries, Container = Instance, BaseElement = Container> =
	((
		ui: React_ReactElement,
		options: RenderOptions<Q, Container, BaseElement>
	) -> RenderResult<Q, Container, BaseElement>)
	| ((ui: React_ReactElement, options: Omit<RenderOptions, "queries">?) -> RenderResult)

--[[*
 * Unmounts React trees that were mounted with render.
]]
export type cleanup = () -> ()

--[[  *
      * Simply calls ReactDOMTestUtils.act(cb)
      * If that's not available (older version of react) then it
      * simply calls the given callback immediately
]]
-- ROBLOX deviation START: dropped support for oder versions
export type act = typeof(reactAct)
-- ROBLOX deviation END
return exports
