local LuauPolyfill = require(script.Parent.Parent.Parent.LuauPolyfill)
type Promise<T> = LuauPolyfill.Promise<T>

-- ROBLOX TODO: add Response type to LuauPolyfill
type Body = { text: (self: Body) -> Promise<string> }

export type Response = Body & { status: number }

return {}
