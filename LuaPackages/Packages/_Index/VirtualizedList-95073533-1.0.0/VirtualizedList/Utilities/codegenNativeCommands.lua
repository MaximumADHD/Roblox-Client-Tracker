-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Utilities/codegenNativeCommands.js
--[[
  Copyright (c) Meta Platforms, Inc. and affiliates.
 
  This source code is licensed under the MIT license found in the
  LICENSE file in the root directory of this source tree.
 
  @format
  @flow strict-local
 ]]
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>

--[[ ROBLOX upstream: Dependency not implemented locally
import {dispatchCommand} from '../../Libraries/Renderer/shims/ReactNative';
]]
local dispatchCommand = function(...)
	error("Not implemented. Dependencies used upstream aren't implemented")
end

-- ROBLOX deviation START: Unsupported types - Replace with actual types when available
type Readonly<T> = T
type ReadonlyArray<T> = Array<T>
type Options<T> = Readonly<{
	supportedCommands: ReadonlyArray<T>,
}>
type Keys<T> = any
-- ROBLOX deviation END

local codegenNativeCommands = function<T>(options: Options<Keys<T>>): T
	local commandObj = {}

	for _, command in ipairs(options.supportedCommands) do
		commandObj[command] = function(ref, ...)
			dispatchCommand(ref, command, ...)
		end
	end

	return (commandObj :: any) :: T
end

return {
	default = codegenNativeCommands,
}
