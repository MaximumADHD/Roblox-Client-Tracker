-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Components/ScrollView/ScrollViewContext.js
--[[*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @flow strict
 * @format
 ]]
local srcWorkspace = script.Parent.Parent.Parent
local Packages = srcWorkspace.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local React = require(Packages.React)
type React_Context<T> = React.Context<T>
local exports = {}

type Value = { horizontal: boolean } | nil

-- ROBLOX FIXME Luau: should accept nil as valid. Cannot cast 'ReactContext<nil>' into 'React_Context<{| horizontal: boolean |}?>
local ScrollViewContext: React_Context<Value> = React.createContext(nil :: Value)
if _G.__DEV__ then
	ScrollViewContext.displayName = "ScrollViewContext"
end
exports.default = ScrollViewContext

local HORIZONTAL: Value = Object.freeze({ horizontal = true })
exports.HORIZONTAL = HORIZONTAL

local VERTICAL: Value = Object.freeze({ horizontal = false })
exports.VERTICAL = VERTICAL

return exports
