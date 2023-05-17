-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Interaction/Batchinator.js
--[[*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @flow
 * @format
 ]]
local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local setTimeout = LuauPolyfill.setTimeout
local clearTimeout = LuauPolyfill.clearTimeout

-- ROBLOX FIXME: Mocking InteractionManager, must evaluate if required
-- local InteractionManager = require("./InteractionManager")
local InteractionManager = {
	runAfterInteractions = function(_self, fn: () -> ())
		-- ROBLOX comment: "Interactions are not handled by the interaction manager"
		fn()
		return nil
	end,
}

--[[*
 * A simple class for batching up invocations of a low-pri callback. A timeout is set to run the
 * callback once after a delay, no matter how many times it's scheduled. Once the delay is reached,
 * InteractionManager.runAfterInteractions is used to invoke the callback after any hi-pri
 * interactions are done running.
 *
 * Make sure to cleanup with dispose().  Example:
 *
 *   class Widget extends React.Component {
 *     _batchedSave: new Batchinator(() => this._saveState, 1000);
 *     _saveSate() {
 *       // save this.state to disk
 *     }
 *     componentDidUpdate() {
 *       this._batchedSave.schedule();
 *     }
 *     componentWillUnmount() {
 *       this._batchedSave.dispose();
 *     }
 *     ...
 *   }
 ]]

export type Batchinator = {
	_callback: () -> (),
	_delay: number,
	_taskHandle: { cancel: () -> () }?,
	dispose: (self: Batchinator, options_: {
		abort: boolean,
	}?) -> (),
	schedule: (self: Batchinator) -> (),
	new: (callback: () -> (), delayMS: number) -> Batchinator,
}

local Batchinator: Batchinator = ({} :: any) :: Batchinator;
(Batchinator :: any).__index = Batchinator

function Batchinator.new(callback: () -> (), delayMS: number): Batchinator
	local self = setmetatable({}, Batchinator)
	self._delay = delayMS
	self._callback = callback
	return self :: any
end

function Batchinator:dispose(options_: {
	abort: boolean,
}?): ()
	local options = if options_ then options_ else { abort = false }

	if self._taskHandle then
		self._taskHandle.cancel()
		if not options.abort then
			self._callback()
		end
		self._taskHandle = nil
	end
end

function Batchinator:schedule()
	if self._taskHandle then
		return
	end

	local timeoutHandle = setTimeout(function()
		self._taskHandle = InteractionManager:runAfterInteractions(function()
			-- Note that we clear the handle before invoking the callback so that if the callback calls
			-- schedule again, it will actually schedule another task.
			self._taskHandle = nil
			self._callback()
		end)
	end, self._delay)

	self._taskHandle = {
		cancel = function()
			return clearTimeout(timeoutHandle)
		end,
	}
end

return Batchinator
