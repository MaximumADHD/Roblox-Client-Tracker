local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Promise<T> = LuauPolyfill.Promise<T>

local Promise = require(rootWorkspace.Promise)
local PromiseOrValueModule = require(srcWorkspace.jsutils.PromiseOrValue)
type PromiseOrValue<T> = PromiseOrValueModule.PromiseOrValue<T>

local function coerceToPromise<T>(value: PromiseOrValue<T>): Promise<T>
	if Promise.is(value) then
		return value :: Promise<T>
	else
		return Promise.resolve(value) :: Promise<T>
	end
end

return {
	coerceToPromise = coerceToPromise,
}
