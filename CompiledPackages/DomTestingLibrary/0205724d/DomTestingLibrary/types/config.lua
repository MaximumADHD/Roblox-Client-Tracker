-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/types/config.d.ts
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
type Error = LuauPolyfill.Error
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>

-- ROBLOX deviation START: unknown types
type Partial<T> = Object
-- ROBLOX deviation END

local exports = {}

export type Config = {
	testIdAttribute: string,
	--[[*
   		* WARNING: `unstable` prefix means this API may change in patch and minor releases.
   		* @param cb
   	]]
	unstable_advanceTimersWrapper: (cb: (...any) -> unknown) -> unknown,
	-- eslint-disable-next-line @typescript-eslint/no-explicit-any
	asyncWrapper: (cb: (...any) -> any) -> Promise<any>,
	-- eslint-disable-next-line @typescript-eslint/no-explicit-any
	eventWrapper: (cb: (...any) -> any) -> (),
	asyncUtilTimeout: number,
	computedStyleSupportsPseudoElements: boolean,
	defaultHidden: boolean,
	--[[* default value for the `ignore` option in `ByText` queries ]]
	defaultIgnore: { [number]: string },
	showOriginalStackTrace: boolean,
	throwSuggestions: boolean,
	getElementError: (message: string | nil, container: Instance) -> Error,
}

export type ConfigFn = (existingConfig: Config) -> Partial<Config>

export type configure = (configDelta: ConfigFn | Partial<Config>) -> ()
export type getConfig = () -> Config

return exports
