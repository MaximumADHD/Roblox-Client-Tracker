-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/jest-jasmine2/src/jasmine/CallTracker.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  *
--  */
-- // This file is a heavily modified fork of Jasmine. Original license:
-- /*
-- Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
-- Permission is hereby granted, free of charge, to any person obtaining
-- a copy of this software and associated documentation files (the
-- "Software"), to deal in the Software without restriction, including
-- without limitation the rights to use, copy, modify, merge, publish,
-- distribute, sublicense, and/or sell copies of the Software, and to
-- permit persons to whom the Software is furnished to do so, subject to
-- the following conditions:
-- The above copyright notice and this permission notice shall be
-- included in all copies or substantial portions of the Software.
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
-- EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
-- MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
-- NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
-- LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
-- OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
-- WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
-- */

type Array<T> = { T };

export type Context = {
	object: any,
	args: Array<any>,
	returnValue: any?
}

local CallTracker = {}

CallTracker.__index = CallTracker
function CallTracker.new()
	local self: {calls: Array<Context>} = {
		calls = {}
	}

	setmetatable(self, CallTracker)

	return self
end

function CallTracker:track(context: Context)
	-- In javascript, this function would add 'undefined' to calls if track is
	-- called with empty arguments but in Lua if we add nil to calls, the table
	-- won't actually increase in size, so we opt to insert a nil context
	if context == nil then
		local nilContext = {object = nil, args = {nil}}
		table.insert(self.calls, nilContext)
	else
		table.insert(self.calls, context)
	end
end

function CallTracker:any(): boolean
	return #self.calls > 0
end

function CallTracker:count(): number
	return #self.calls
end

function CallTracker:argsFor(index: number): Array<any>
	local call = self.calls[index + 1]
	if call then
		return call.args
	else
		return {}
	end
end

function CallTracker:all(): Array<Context>
	return self.calls
end

function CallTracker:allArgs(): Array<any>
	local callArgs = {}
	for i, call in ipairs(self.calls) do
		table.insert(callArgs, call.args)
	end

	return callArgs
end

function CallTracker:first(): Context
	return self.calls[1]
end

function CallTracker:mostRecent(): Context
	return self.calls[#self.calls]
end

function CallTracker:reset()
	self.calls = {}
end

return CallTracker

