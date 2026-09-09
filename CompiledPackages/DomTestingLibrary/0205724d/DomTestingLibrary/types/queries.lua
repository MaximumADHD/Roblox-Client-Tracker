-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/types/queries.d.ts
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>

local RegExp = require(Packages.LuauRegExp)
type RegExp = RegExp.RegExp

local exports = {}

local matchesModule = require(script.Parent.matches)
type ByRoleMatcher = matchesModule.ByRoleMatcher
type Matcher = matchesModule.Matcher
type MatcherOptions = matchesModule.MatcherOptions

local queryHelpersModule = require(script.Parent["query-helpers"])
type SelectorMatcherOptions = queryHelpersModule.SelectorMatcherOptions

local waitForModule = require(script.Parent["wait-for"])
type waitForOptions = waitForModule.waitForOptions

export type QueryByBoundAttribute<T = Instance> = (
	container: Instance,
	id: Matcher,
	options: MatcherOptions?
) -> T | nil

export type AllByBoundAttribute<T = Instance> = (
	container: Instance,
	id: Matcher,
	options: MatcherOptions?
) -> Array<T>

export type FindAllByBoundAttribute<T = Instance> = (
	container: Instance,
	id: Matcher,
	options: MatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<Array<T>>

export type GetByBoundAttribute<T = Instance> = (container: Instance, id: Matcher, options: MatcherOptions?) -> T

export type FindByBoundAttribute<T = Instance> = (
	container: Instance,
	id: Matcher,
	options: MatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<T>

export type QueryByText<T = Instance> = (
	container: Instance,
	id: Matcher,
	options: SelectorMatcherOptions?
) -> T | nil

export type AllByText<T = Instance> = (
	container: Instance,
	id: Matcher,
	options: SelectorMatcherOptions?
) -> Array<T>

export type FindAllByText<T = Instance> = (
	container: Instance,
	id: Matcher,
	options: SelectorMatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<Array<T>>

export type GetByText<T = Instance> = (container: Instance, id: Matcher, options: SelectorMatcherOptions?) -> T

export type FindByText<T = Instance> = (
	container: Instance,
	id: Matcher,
	options: SelectorMatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<T>

export type ByRoleOptions = MatcherOptions & {
	--[[*
   		* If true includes elements in the query set that are usually excluded from
   		* the accessibility tree. `role="none"` or `role="presentation"` are included
   		* in either case.
   	]]
	hidden: boolean?,
	--[[*
   		* If true only includes elements in the query set that are marked as
   		* selected in the accessibility tree, i.e., `aria-selected="true"`
   	]]
	selected: boolean?,
	--[[*
   		* If true only includes elements in the query set that are marked as
   		* checked in the accessibility tree, i.e., `aria-checked="true"`
   	]]
	checked: boolean?,
	--[[*
   		* If true only includes elements in the query set that are marked as
   		* pressed in the accessibility tree, i.e., `aria-pressed="true"`
   	]]
	pressed: boolean?,
	--[[*
   		* Filters elements by their `aria-current` state. `true` and `false` match `aria-current="true"` and `aria-current="false"` (as well as a missing `aria-current` attribute) respectively.
   	]]
	current: (boolean | string)?,
	--[[*
   		* If true only includes elements in the query set that are marked as
   		* expanded in the accessibility tree, i.e., `aria-expanded="true"`
   	]]
	expanded: boolean?,
	--[[*
   		* Includes elements with the `"heading"` role matching the indicated level,
   		* either by the semantic HTML heading elements `<h1>-<h6>` or matching
   		* the `aria-level` attribute.
   	]]
	level: number?,
	--[[*
   		* Includes every role used in the `role` attribute
   		* For example *ByRole('progressbar', {queryFallbacks: true})` will find <div role="meter progressbar">`.
   	]]
	queryFallbacks: boolean?,
	--[[*
   		* Only considers elements with the specified accessible name.
   	]]
	name: (RegExp | string | ((accessibleName: string, element: Instance) -> boolean))?,
	--[[*
   		* Only considers elements with the specified accessible description.
   	]]
	description: (RegExp | string | ((accessibleDescription: string, element: Instance) -> boolean))?,
}

export type AllByRole<T = Instance> = (
	container: Instance,
	role: ByRoleMatcher,
	options: ByRoleOptions?
) -> Array<T>

export type GetByRole<T = Instance> = (container: Instance, role: ByRoleMatcher, options: ByRoleOptions?) -> T

export type QueryByRole<T = Instance> = (
	container: Instance,
	role: ByRoleMatcher,
	options: ByRoleOptions?
) -> T | nil

export type FindByRole<T = Instance> = (
	container: Instance,
	role: ByRoleMatcher,
	options: ByRoleOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<T>

export type FindAllByRole<T = Instance> = (
	container: Instance,
	role: ByRoleMatcher,
	options: ByRoleOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<Array<T>>

-- ROBLOX deviation START: inline return type, parameters, etc
export type getByLabelText<T = Instance> = <T>(container: Instance, id: Matcher, options: SelectorMatcherOptions?) -> T
export type getAllByLabelText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: SelectorMatcherOptions?
) -> Array<T>
export type queryByLabelText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: SelectorMatcherOptions?
) -> T?
export type queryAllByLabelText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: SelectorMatcherOptions?
) -> Array<T>
export type findByLabelText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: SelectorMatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<T>
export type findAllByLabelText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: SelectorMatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<Array<T>>
export type getByPlaceholderText<T = Instance> = <T>(container: Instance, id: Matcher, options: MatcherOptions?) -> T
export type getAllByPlaceholderText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?
) -> Array<T>
export type queryByPlaceholderText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?
) -> T?
export type queryAllByPlaceholderText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?
) -> Array<T>
export type findByPlaceholderText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<T>
export type findAllByPlaceholderText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<Array<T>>
export type getByText<T = Instance> = <T>(container: Instance, id: Matcher, options: SelectorMatcherOptions?) -> T
export type getAllByText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: SelectorMatcherOptions?
) -> Array<T>
export type queryByText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: SelectorMatcherOptions?
) -> T | nil
export type queryAllByText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: SelectorMatcherOptions?
) -> Array<T>
export type findByText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: SelectorMatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<T>
export type findAllByText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: SelectorMatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<Array<T>>
export type getByAltText<T = Instance> = <T>(container: Instance, id: Matcher, options: MatcherOptions?) -> T
export type getAllByAltText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?
) -> Array<T>
export type queryByAltText<T = Instance> = <T>(container: Instance, id: Matcher, options: MatcherOptions?) -> T?
export type queryAllByAltText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?
) -> Array<T>
export type findByAltText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<T>
export type findAllByAltText<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<Array<T>>
export type getByTitle<T = Instance> = <T>(container: Instance, id: Matcher, options: MatcherOptions?) -> T
export type getAllByTitle<T = Instance> = <T>(container: Instance, id: Matcher, options: MatcherOptions?) -> Array<T>
export type queryByTitle<T = Instance> = <T>(container: Instance, id: Matcher, options: MatcherOptions?) -> T?
export type queryAllByTitle<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?
) -> Array<T>
export type findByTitle<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<T>
export type findAllByTitle<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<Array<T>>
export type getByDisplayValue<T = Instance> = <T>(container: Instance, id: Matcher, options: MatcherOptions?) -> T
export type getAllByDisplayValue<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?
) -> Array<T>
export type queryByDisplayValue<T = Instance> = <T>(container: Instance, id: Matcher, options: MatcherOptions?) -> T?
export type queryAllByDisplayValue<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?
) -> Array<T>
export type findByDisplayValue<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<T>
export type findAllByDisplayValue<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<Array<T>>
export type getByRole<T = Instance> = <T>(container: Instance, role: ByRoleMatcher, options: ByRoleOptions?) -> T
export type getAllByRole<T = Instance> = <T>(
	container: Instance,
	role: ByRoleMatcher,
	options: ByRoleOptions?
) -> Array<T>
export type queryByRole<T = Instance> = <T>(container: Instance, role: ByRoleMatcher, options: ByRoleOptions?) -> T?
export type queryAllByRole<T = Instance> = <T>(
	container: Instance,
	role: ByRoleMatcher,
	options: ByRoleOptions?
) -> Array<T>
export type findByRole<T = Instance> = <T>(
	container: Instance,
	role: ByRoleMatcher,
	options: ByRoleOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<T>
export type findAllByRole<T = Instance> = <T>(
	container: Instance,
	role: ByRoleMatcher,
	options: ByRoleOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<Array<T>>
export type getByTestId<T = Instance> = <T>(container: Instance, id: Matcher, options: MatcherOptions?) -> T
export type getAllByTestId<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?
) -> Array<T>
export type queryByTestId<T = Instance> = <T>(container: Instance, id: Matcher, options: MatcherOptions?) -> T?
export type queryAllByTestId<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?
) -> Array<T>
export type findByTestId<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<T>
export type findAllByTestId<T = Instance> = <T>(
	container: Instance,
	id: Matcher,
	options: MatcherOptions?,
	waitForElementOptions: waitForOptions?
) -> Promise<Array<T>>

return exports
