-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/types/get-queries-for-element.d.ts
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Promise<T> = LuauPolyfill.Promise<T>

local exports = {}

-- local _queries = require(script.Parent.queries)

-- ROBLOX deviation START: some contraints for types not available, inline return types
export type BoundFunction<T> = (container: Instance, ...any) -> any
export type BoundFunctions<Q> = {
	-- getByLabelText: (element: Instance, ...any) -> Instance,
	-- getAllByLabelText: (element: Instance, ...any) -> Array<Instance>,
	-- queryByLabelText: (element: Instance, ...any) -> Instance?,
	-- queryAllByLabelText: (element: Instance, ...any) -> Array<Instance>,
	-- findByLabelText: (element: Instance, ...any) -> Promise<Instance>,
	-- findAllByLabelText: (element: Instance, ...any) -> Promise<Array<Instance>>,
	getByPlaceholderText: (element: Instance, ...any) -> Instance,
	getAllByPlaceholderText: (element: Instance, ...any) -> Array<Instance>,
	queryByPlaceholderText: (element: Instance, ...any) -> Instance?,
	queryAllByPlaceholderText: (element: Instance, ...any) -> Array<Instance>,
	findByPlaceholderText: (element: Instance, ...any) -> Promise<Instance>,
	findAllByPlaceholderText: (element: Instance, ...any) -> Promise<Array<Instance>>,
	getByText: (element: Instance, ...any) -> Instance,
	getAllByText: (element: Instance, ...any) -> Array<Instance>,
	queryByText: (element: Instance, ...any) -> Instance?,
	queryAllByText: (element: Instance, ...any) -> Array<Instance>,
	findByText: (element: Instance, ...any) -> Promise<Instance>,
	findAllByText: (element: Instance, ...any) -> Promise<Array<Instance>>,
	-- getByAltText: (element: Instance, ...any) -> Instance,
	-- getAllByAltText: (element: Instance, ...any) -> Array<Instance>,
	-- queryByAltText: (element: Instance, ...any) -> Instance?,
	-- queryAllByAltText: (element: Instance, ...any) -> Array<Instance>,
	-- findByAltText: (element: Instance, ...any) -> Promise<Instance>,
	-- findAllByAltText: (element: Instance, ...any) -> Promise<Array<Instance>>,
	-- getByTitle: (element: Instance, ...any) -> Instance,
	-- getAllByTitle: (element: Instance, ...any) -> Array<Instance>,
	-- queryByTitle: (element: Instance, ...any) -> Instance?,
	-- queryAllByTitle: (element: Instance, ...any) -> Array<Instance>,
	-- findByTitle: (element: Instance, ...any) -> Promise<Instance>,
	-- findAllByTitle: (element: Instance, ...any) -> Promise<Array<Instance>>,
	getByDisplayValue: (element: Instance, ...any) -> Instance,
	getAllByDisplayValue: (element: Instance, ...any) -> Array<Instance>,
	queryByDisplayValue: (element: Instance, ...any) -> Instance?,
	queryAllByDisplayValue: (element: Instance, ...any) -> Array<Instance>,
	findByDisplayValue: (element: Instance, ...any) -> Promise<Instance>,
	findAllByDisplayValue: (element: Instance, ...any) -> Promise<Array<Instance>>,
	-- getByRole: (element: Instance, ...any) -> Instance,
	-- getAllByRole: (element: Instance, ...any) -> Array<Instance>,
	-- queryByRole: (element: Instance, ...any) -> Instance?,
	-- queryAllByRole: (element: Instance, ...any) -> Array<Instance>,
	-- findByRole: (element: Instance, ...any) -> Promise<Instance>,
	-- findAllByRole: (element: Instance, ...any) -> Promise<Array<Instance>>,
	getByTestId: (element: Instance, ...any) -> Instance,
	getAllByTestId: (element: Instance, ...any) -> Array<Instance>,
	queryByTestId: (element: Instance, ...any) -> Instance?,
	queryAllByTestId: (element: Instance, ...any) -> Array<Instance>,
	findByTestId: (element: Instance, ...any) -> Promise<Instance>,
	findAllByTestId: (element: Instance, ...any) -> Promise<Array<Instance>>,
} & { [string]: (element: Instance, ...any) -> any }

export type Query = (
	container: Instance,
	...any
) -> Error | Instance | Array<Instance> | Promise<Array<Instance>> | Promise<Instance> | nil

export type Queries = { [string]: Query }

export type getQueriesForElement = <
	QueriesToBind,
	-- Extra type parameter required for reassignment.
	T
>(element: Instance, queriesToBind: T?) -> BoundFunctions<T>
-- ROBLOX deviation END
return exports
