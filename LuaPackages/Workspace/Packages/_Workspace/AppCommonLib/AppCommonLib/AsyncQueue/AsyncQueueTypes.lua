local AppCommonLib = script:FindFirstAncestor("AppCommonLib")
local Packages = AppCommonLib.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)

export type Promise<T> = LuauPolyfill.Promise<T>

export type AcquireFn = () -> ()
export type ReleaseFn = () -> ()

export type AsyncQueue = {
	-- This should really be Promise<()>, but our promise type doesn't use a generic type pack
	head: Promise<nil>,
	request: (AsyncQueue, AcquireFn) -> ReleaseFn,
}

return nil
