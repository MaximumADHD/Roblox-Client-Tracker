--[[
 * Copyright (c) Roblox Corporation
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
local LuauPolyfill = require(script.Parent.Parent.Parent.LuauPolyfill)
type Promise<T> = LuauPolyfill.Promise<T>

-- ROBLOX TODO: add Response type to LuauPolyfill
type Body = { text: (self: Body) -> Promise<string> }

export type Response = Body & { status: number }

return {}
