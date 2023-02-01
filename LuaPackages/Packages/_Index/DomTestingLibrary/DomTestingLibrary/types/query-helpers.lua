-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/types/query-helpers.d.ts
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>
type Error = LuauPolyfill.Error

local exports = {}

local matchesModule = require(script.Parent.matches)
type Matcher = matchesModule.Matcher
type MatcherOptions = matchesModule.MatcherOptions
local waitForModule = require(script.Parent["wait-for"])
type waitForOptions = waitForModule.waitForOptions

export type WithSuggest = { suggest: boolean? }

export type GetErrorFunction<Argument = any> = (c: Instance | nil, ...Argument) -> string

export type SelectorMatcherOptions = MatcherOptions & { selector: Array<string>?, ignore: (boolean | string)? }

export type QueryByAttribute = (
	attribute: string,
	container: Instance,
	id: Matcher,
	options: MatcherOptions?
) -> Instance | nil

export type AllByAttribute = (
	attribute: string,
	container: Instance,
	id: Matcher,
	options: MatcherOptions?
) -> Array<Instance>

export type queryByAttribute = QueryByAttribute
export type queryAllByAttribute = AllByAttribute
export type getElementError = (message: string | nil, container: Instance) -> Error

--[[*
 	* query methods have a common call signature. Only the return type differs.
]]
export type QueryMethod<Argument, Return> = (container: Instance, ...Argument) -> Return
export type QueryBy<Argument> = QueryMethod<Argument, Instance | nil>
export type GetAllBy<Argument> = QueryMethod<Argument, Array<Instance>>

export type FindAllBy<Argument> = QueryMethod<
	-- ROBLOX deviation START: Tuple used upstream. [Arguments[0], Arguments[1]?, waitForOptions?]
	Array<Argument>,
	-- ROBLOX deviation END
	Promise<Array<Instance>>
>

export type GetBy<Argument> = QueryMethod<Argument, Instance>
export type FindBy<Argument> = QueryMethod<Array<Argument | waitForOptions | nil>, Promise<Array<Instance>>>

-- ROBLOX deviation START: Can't represent list in lua type
export type BuiltQueryMethods<Argument> = any
-- ROBLOX deviation END

export type buildQueries<Argument> = (
	queryAllBy: GetAllBy<Argument>,
	getMultipleError: GetErrorFunction<Argument>,
	getMissingError: GetErrorFunction<Argument>
) -> (QueryBy<Argument>, GetAllBy<Argument>, GetBy<Argument>, FindAllBy<Argument>, FindBy<Argument>)

return exports
