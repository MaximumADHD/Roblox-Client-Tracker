-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/TestWatcher.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local exports = {}

type State = { interrupted: boolean }

export type TestWatcher = {
	state: State,
	setState: (self: TestWatcher, state: State) -> (),
	isInterrupted: (self: TestWatcher) -> boolean,
	isWatchMode: (self: TestWatcher) -> boolean,
	_isWatchMode: boolean,
}
local TestWatcher = {}
TestWatcher.__index = TestWatcher
function TestWatcher.new(ref: { isWatchMode: boolean }): TestWatcher
	local self = setmetatable({}, TestWatcher)
	local isWatchMode = ref.isWatchMode
	self.state = { interrupted = false }
	self._isWatchMode = isWatchMode
	return (self :: any) :: TestWatcher
end

function TestWatcher:setState(state: State)
	for k, v in state do
		self.state[k] = v
	end
end

function TestWatcher:isInterrupted(): boolean
	return self.state.interrupted
end

function TestWatcher:isWatchMode(): boolean
	return self._isWatchMode
end
exports.default = TestWatcher

return exports
