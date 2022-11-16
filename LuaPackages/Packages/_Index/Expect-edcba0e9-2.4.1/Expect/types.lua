-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/expect/src/types.ts

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local RegExp = require(Packages.RegExp)
type RegExp = RegExp.RegExp
local LuauPolyfill = require(Packages.LuauPolyfill)
type Error = LuauPolyfill.Error
type Array<T> = LuauPolyfill.Array<T>
type Record<K, T> = { [K]: T }
type Partial<T> = any
type Function = (...any) -> any
type Object = LuauPolyfill.Object

-- ROBLOX deviation: use `unknown` type until Luau starts to support it
type unknown = any

-- ROBLOX deviation: inline Promise type here. should probably go into LuauPolyfill
export type PromiseLike<T> = {
	andThen: (
		((T) -> T)? | (PromiseLike<T>)?, -- resolve
		((any) -> () | PromiseLike<T>)? -- reject
	) -> PromiseLike<T>,
}

export type Promise<T> = {
	andThen: ((
		((T) -> T | PromiseLike<T>)?, -- resolve
		((any) -> () | PromiseLike<nil>)? -- reject
	) -> Promise<T>)?,

	catch: ((((any) -> () | PromiseLike<nil>)) -> Promise<T>)?,

	onCancel: ((() -> ()?) -> boolean)?,
}

export type SyncExpectationResult = {
	pass: boolean,
	message: () -> string,
}

export type AsyncExpectationResult = Promise<SyncExpectationResult>

export type ExpectationResult = SyncExpectationResult | AsyncExpectationResult

--[[
	ROBLOX TODO: add default generic param when possible
	original code:
	export type RawMatcherFn<T extends MatcherState = MatcherState> = {
]]
-- ROBLOX FIXME: add Symbol to the definition: [INTERNAL_MATCHER_FLAG]: boolean?
export type RawMatcherFn<T> = any
-- ROBLOX FIXME: workaround for defult generic param
export type RawMatcherFn_ = RawMatcherFn<MatcherState>
-- ROBLOX deviation: currently no way – type the __call metamethod
-- {
--   __call: (any, any, any?) -> ExpectationResult,
-- -- ROBLOX deviation: [INTERNAL_MATCHER_FLAG]: boolean?
--   [Symbol]: boolean?
-- }

export type ThrowingMatcherFn = (any) -> ()
export type PromiseMatcherFn = (any) -> Promise<nil>

export type Tester = (any, any) -> boolean?

export type MatcherState = {
	assertionCalls: number,
	currentTestName: string?,
	dontThrow: (() -> ())?,
	error: Error?,
	equals: (any, any, Array<Tester>?, boolean?) -> boolean,
	expand: boolean?,
	expectedAssertionsNumber: number?,
	expectedAssertionsNumberError: Error?,
	isExpectingAssertions: boolean?,
	isExpectingAssertionsError: Error?,
	isNot: boolean,
	promise: string,
	suppressedErrors: Array<Error>,
	testPath: any, -- ROBLOX TODO: Config.Path?,
	utils: Object, -- ROBLOX deviation: no easy way to port to Lua: typeof jestMatcherUtils & {
	--   iterableEquality: Tester;
	--   subsetEquality: Tester;
	-- }
}

export type AsymmetricMatcher = {
	asymmetricMatch: (self: AsymmetricMatcher, other: unknown) -> boolean,
	toString: (self: AsymmetricMatcher) -> string,
	getExpectedType: ((self: AsymmetricMatcher) -> string)?,
	toAsymmetricMatcher: ((self: AsymmetricMatcher) -> string)?,
}

--[[
	ROBLOX TODO: add default generic param when possible
	original code:
	export type MatchersObject<T extends MatcherState = MatcherState> = {
]]
export type MatchersObject<T> = { [string]: RawMatcherFn<T> }
-- ROBLOX FIXME: workaround for defult generic param
export type MatchersObject_ = MatchersObject<MatcherState>
export type ExpectedAssertionsErrors = Array<{
	actual: string | number,
	error: Error,
	expected: string,
}>

-- ROBLOX deviation start: no Omit utility in Luau
type AsymmetricMatchersOmitAnyAndAnything = {
	arrayContaining: (Array<unknown>) -> AsymmetricMatcher,
	objectContaining: (Record<string, unknown>) -> AsymmetricMatcher,
	stringContaining: (string) -> AsymmetricMatcher,
	stringMatching: (string | RegExp) -> AsymmetricMatcher,
}

type AsymmetricMatchers = {
	any: (unknown) -> AsymmetricMatcher,
	anything: () -> AsymmetricMatcher,
} & AsymmetricMatchersOmitAnyAndAnything
-- ROBLOX deviation end

--[[
	ROBLOX TODO: add default generic param when possible
	original code:
	export type Expect<State extends MatcherState = MatcherState> = {
]]
export type Expect<State> = {
	-- ROBLOX deviation: no way to express __call metamethod typing
	-- <T = unknown>(actual: T) -> Matchers<void, T>;

	-- TODO: this is added by test runners, not `expect` itself
	addSnapshotSerializer: (any) -> (),
	assertions: (number) -> (),
	-- TODO: remove this `T extends` - should get from some interface merging
	extend: <T>(MatchersObject<T>) -> (),
	extractExpectedAssertionsErrors: () -> ExpectedAssertionsErrors,
	getState: () -> State,
	hasAssertions: () -> (),
	setState: (Partial<MatcherState>) -> (),
} & AsymmetricMatchers & {
	never: AsymmetricMatchersOmitAnyAndAnything,
}
-- ROBLOX FIXME: workaround for defult generic param
export type Expect_ = Expect<MatcherState>

type Constructable = {
	new: (...Array<any>) -> any,
}

-- This is a copy from https://github.com/DefinitelyTyped/DefinitelyTyped/blob/de6730f4463cba69904698035fafd906a72b9664/types/jest/index.d.ts#L570-L817
export type Matchers<R, T> = {
	-- /**
	-- * Ensures the last call to a mock function was provided specific args.
	-- */
	lastCalledWith: (...Array<any>) -> R,
	-- /**
	-- * Ensure that the last call to a mock function has returned a specified value.
	-- */
	lastReturnedWith: (any) -> R,
	-- /**
	-- * If you know how to test something, `.not` lets you test its opposite.
	-- */
	-- ROBLOX deviation: use never instead of not to avoid use of Lua key word
	never: Matchers<R, T>,
	-- /**
	-- * Ensure that a mock function is called with specific arguments on an Nth call.
	-- */
	nthCalledWith: (number, ...Array<any>) -> R,
	-- /**
	-- * Ensure that the nth call to a mock function has returned a specified value.
	-- */
	nthReturnedWith: (number, any) -> R,
	-- ROBLOX TODO: (LUAU) fix types for resolves and rejects
	-- /**
	-- * Use resolves to unwrap the value of a fulfilled promise so any other
	-- * matcher can be chained. If the promise is rejected the assertion fails.
	-- */
	resolves: any,
	-- /**
	-- * Unwraps the reason of a rejected promise so any other matcher can be chained.
	-- * If the promise is fulfilled the assertion fails.
	-- */
	rejects: any,
	-- /**
	-- * Checks that a value is what you expect. It uses `===` to check strict equality.
	-- * Don't use `toBe` with floating-point numbers.
	-- */
	toBe: (any) -> R,
	-- /**
	-- * Ensures that a mock function is called.
	-- */
	toBeCalled: () -> R,
	-- /**
	--  * Ensures that a mock function is called an exact number of times.
	--  */
	toBeCalledTimes: (number) -> R,
	-- /**
	--  * Ensure that a mock function is called with specific arguments.
	--  */
	toBeCalledWith: (...Array<any>) -> R,
	-- /**
	--  * Using exact equality with floating point numbers is a bad idea.
	--  * Rounding means that intuitive things fail.
	--  * The default for `precision` is 2.
	--  */
	toBeCloseTo: (number, precision: number?) -> R,
	-- /**
	--  * Ensure that a variable is not undefined.
	--  */
	toBeDefined: () -> R,
	-- /**
	--  * When you don't care what a value is, you just want to
	--  * ensure a value is false in a boolean context.
	--  */
	toBeFalsy: () -> R,
	-- /**
	--  * For comparing floating point numbers.
	--  */
	toBeGreaterThan: (number) -> R,
	-- /**
	--  * For comparing floating point numbers.
	--  */
	toBeGreaterThanOrEqual: (number) -> R,
	-- /**
	--  * Ensure that an object is an instance of a class.
	--  * This matcher uses `instanceof` underneath.
	--  */
	toBeInstanceOf: (unknown) -> R,
	-- /**
	--  * For comparing floating point numbers.
	--  */
	toBeLessThan: (number) -> R,
	-- /**
	--  * For comparing floating point numbers.
	--  */
	toBeLessThanOrEqual: (number) -> R,
	-- /**
	--  * This is the same as `.toBe(null)` but the error messages are a bit nicer.
	--  * So use `.toBeNull()` when you want to check that something is null.
	--  */
	toBeNull: () -> R,
	-- /**
	--  * Use when you don't care what a value is, you just want to ensure a value
	--  * is true in a boolean context. In JavaScript, there are six falsy values:
	--  * `false`, `0`, `''`, `null`, `undefined`, and `NaN`. Everything else is truthy.
	--  */
	toBeTruthy: () -> R,
	-- /**
	--  * Used to check that a variable is undefined.
	--  */
	toBeUndefined: () -> R,
	-- /**
	--  * Used to check that a variable is NaN.
	--  */
	toBeNaN: () -> R,
	-- /**
	--  * Used when you want to check that an item is in a list.
	--  * For testing the items in the list, this uses `===`, a strict equality check.
	--  */
	toContain: (any) -> R,
	-- /**
	--  * Used when you want to check that an item is in a list.
	--  * For testing the items in the list, this  matcher recursively checks the
	--  * equality of all fields, rather than checking for object identity.
	--  */
	toContainEqual: (any) -> R,
	-- /**
	--  * Used when you want to check that two objects have the same value.
	--  * This matcher recursively checks the equality of all fields, rather than checking for object identity.
	--  */
	toEqual: (any) -> R,
	-- /**
	--  * Ensures that a mock function is called.
	--  */
	toHaveBeenCalled: () -> R,
	-- /**
	--  * Ensures that a mock function is called an exact number of times.
	--  */
	toHaveBeenCalledTimes: (number) -> R,
	-- /**
	--  * Ensure that a mock function is called with specific arguments.
	--  */
	toHaveBeenCalledWith: (...Array<any>) -> R,
	-- /**
	--  * Ensure that a mock function is called with specific arguments on an Nth call.
	--  */
	toHaveBeenNthCalledWith: (number, ...Array<any>) -> R,
	-- /**
	--  * If you have a mock function, you can use `.toHaveBeenLastCalledWith`
	--  * to test what arguments it was last called with.
	--  */
	toHaveBeenLastCalledWith: (...Array<any>) -> R,
	-- /**
	--  * Use to test the specific value that a mock function last returned.
	--  * If the last call to the mock function threw an error, then this matcher will fail
	--  * no matter what value you provided as the expected return value.
	--  */
	toHaveLastReturnedWith: (any) -> R,
	-- /**
	--  * Used to check that an object has a `.length` property
	--  * and it is set to a certain numeric value.
	--  */
	toHaveLength: (number) -> R,
	-- /**
	--  * Use to test the specific value that a mock function returned for the nth call.
	--  * If the nth call to the mock function threw an error, then this matcher will fail
	--  * no matter what value you provided as the expected return value.
	--  */
	toHaveNthReturnedWith: (number, any) -> R,
	-- /**
	--  * Use to check if property at provided reference keyPath exists for an object.
	--  * For checking deeply nested properties in an object you may use dot notation or an array containing
	--  * the keyPath for deep references.
	--  *
	--  * Optionally, you can provide a value to check if it's equal to the value present at keyPath
	--  * on the target object. This matcher uses 'deep equality' (like `toEqual()`) and recursively checks
	--  * the equality of all fields.
	--  *
	--  * @example
	--  *
	--  * expect(houseForSale).toHaveProperty('kitchen.area', 20),
	--  */
	toHaveProperty: (string | Array<string>, any?) -> R,
	-- /**
	--  * Use to test that the mock function successfully returned (i.e., did not throw an error) at least one time
	--  */
	toHaveReturned: () -> R,
	-- /**
	--  * Use to ensure that a mock function returned successfully (i.e., did not throw an error) an exact number of times.
	--  * Any calls to the mock function that throw an error are not counted toward the number of times the function returned.
	--  */
	toHaveReturnedTimes: (number) -> R,
	-- /**
	--  * Use to ensure that a mock function returned a specific value.
	--  */
	toHaveReturnedWith: (any) -> R,
	-- /**
	--  * Check that a string matches a regular expression.
	--  */
	toMatch: (string | RegExp) -> R,
	-- /**
	--  * Used to check that a JavaScript object matches a subset of the properties of an object
	--  */
	toMatchObject: (Record<string, unknown> | Array<Record<string, unknown>>) -> R,
	-- /**
	--  * Ensure that a mock function has returned (as opposed to thrown) at least once.
	--  */
	toReturn: () -> R,
	-- /**
	--  * Ensure that a mock function has returned (as opposed to thrown) a specified number of times.
	--  */
	toReturnTimes: (number) -> R,
	-- /**
	--  * Ensure that a mock function has returned a specified value at least once.
	--  */
	toReturnWith: (any) -> R,
	-- /**
	--  * Use to test that objects have the same types as well as structure.
	--  */
	toStrictEqual: (any) -> R,
	-- /**
	--  * Used to test that a function throws when it is called.
	--  */
	toThrow: (unknown?) -> R,
	-- /**
	--  * If you want to test that a specific error is thrown inside a function.
	--  */
	toThrowError: (unknown?) -> R,

	-- /* TODO: START snapshot matchers are not from `expect`, the types should not be here */
	-- /**
	--  * This ensures that a value matches the most recent snapshot with property matchers.
	--  * Check out [the Snapshot Testing guide](https://jestjs.io/docs/snapshot-testing) for more information.
	--  */
	-- ROBLOX TODO: function generics and function overloads
	--    toMatchSnapshot<T extends {[P in keyof R]: unknown}>(
	--     propertyMatchers: Partial<T>,
	--     snapshotName?: string,
	--   ): R;

	-- /**
	--  * This ensures that a value matches the most recent snapshot.
	--  * Check out [the Snapshot Testing guide](https://jestjs.io/docs/snapshot-testing) for more information.
	--  */
	toMatchSnapshot: (string?) -> R,
	-- /**
	--  * This ensures that a value matches the most recent snapshot with property matchers.
	--  * Instead of writing the snapshot value to a .snap file, it will be written into the source code automatically.
	--  * Check out [the Snapshot Testing guide](https://jestjs.io/docs/snapshot-testing) for more information.
	--  */
	-- ROBLOX TODO: function generics and function overloads
	-- toMatchInlineSnapshot<T extends {[P in keyof R]: any}>(
	-- /**
	--  * This ensures that a value matches the most recent snapshot with property matchers.
	--  * Instead of writing the snapshot value to a .snap file, it will be written into the source code automatically.
	--  * Check out [the Snapshot Testing guide](https://jestjs.io/docs/snapshot-testing) for more information.
	--  */
	toMatchInlineSnapshot: (string?) -> R,
	-- /**
	--  * Used to test that a function throws a error matching the most recent snapshot when it is called.
	--  */
	toThrowErrorMatchingSnapshot: () -> R,
	-- /**
	--  * Used to test that a function throws a error matching the most recent snapshot when it is called.
	--  * Instead of writing the snapshot value to a .snap file, it will be written into the source code automatically.
	--  */
	toThrowErrorMatchingInlineSnapshot: (string?) -> R,
	-- /* TODO: END snapshot matchers are not from `expect`, the types should not be here */
}
-- ROBLOX FIXME: workaround for defult generic param
export type Matchers_<R> = Matchers<R, unknown>

return {}
