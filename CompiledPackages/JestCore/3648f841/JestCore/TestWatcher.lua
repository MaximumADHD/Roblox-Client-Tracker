-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/TestWatcher.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>
local Promise = require(Packages.Promise)

local exports = {}

local emitteryModule = require(Packages.Emittery)
local emittery = emitteryModule.default
type emittery<EventData> = emitteryModule.Emittery

type State = { interrupted: boolean }

export type TestWatcher = emittery<{ change: State }> & {
	state: State,
	setState: (self: TestWatcher, state: State) -> Promise<nil>,
	isInterrupted: (self: TestWatcher) -> boolean,
	isWatchMode: (self: TestWatcher) -> boolean,
	_isWatchMode: boolean,
}
local TestWatcher = setmetatable({}, { __index = emittery })
TestWatcher.__index = TestWatcher
function TestWatcher.new(ref: { isWatchMode: boolean }): TestWatcher
	local self = setmetatable(emittery.new(), TestWatcher) :: any
	local isWatchMode = ref.isWatchMode
	self.state = { interrupted = false }
	self._isWatchMode = isWatchMode
	return (self :: any) :: TestWatcher
end

function TestWatcher:setState(state: State): Promise<nil>
	return Promise.resolve():andThen(function()
		Object.assign(self.state, state)
		self:emit("change", self.state):expect()
	end)
end

function TestWatcher:isInterrupted(): boolean
	return self.state.interrupted
end

function TestWatcher:isWatchMode(): boolean
	return self._isWatchMode
end
exports.default = TestWatcher

return exports
