--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/jsutils/PromiseOrValue.js

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Promise<T> = LuauPolyfill.Promise<T>

export type PromiseOrValue<T> = Promise<T> | T

return {} -- ROBLOX deviation - must return value
