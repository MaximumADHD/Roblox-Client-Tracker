-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/jest-jasmine2/src/jasmine/createSpy.ts
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

local Workspace = script.Parent
local Modules = Workspace.Parent.Parent
local Packages = Modules.Parent.Parent

local Polyfills = require(Packages.LuauPolyfill)
local Array = Polyfills.Array

--[[
	deviation: omitted import type {Spy} from '../types';
	We can't define this Spy type because it has a keyword "and" as one of
	its table keys
]]
local CallTracker = require(Workspace.CallTracker)
local SpyStrategy = require(Workspace.SpyStrategy)

-- deviation: we don't define a type like Fn

-- deviation: function not annotated with Spy
return function(name: string, originalFn: { [any] : any }?)
	originalFn = originalFn or {}

	local spyTable = {}

	local spyStrategy = SpyStrategy.new({
		name = name,
		fn = originalFn,
		getSpy = function() return spyTable end
	})

	local callTracker = CallTracker.new()
	-- deviation: spy not annotated with Spy
	local spy = function(...)
		local callData: CallTracker.Context = {
			object = nil,
			args = Array.slice({...}),
		}
		callData.object = callData

		callTracker:track(callData)
		local returnValue = spyStrategy:exec(nil, unpack({...}))
		callData.returnValue = returnValue

		return returnValue
	end

	if originalFn then
		for key, value in pairs(originalFn) do
			if key == "and" or key == "andAlso" or key == "calls" then
				error("Jasmine spies would overwrite the 'and', 'andAlso' and 'calls' properties " ..
					"on the object being spied upon")
			end
			spyTable[key] = value
		end
	end

	-- deviation: changed implementation since Lua doesn't support function
	-- properties so instead of returning the spy, the result returned by this
	-- function is a table with a __call metamethod
	setmetatable(spyTable, {__call = function(self, ...) return spy(...) end})

	spyTable['and'] = spyStrategy
	-- deviation: we expose andAlso to allow for cleaner method chaining since and
	-- is a Lua built in
	spyTable['andAlso'] = spyStrategy
	spyTable['calls'] = callTracker

	return spyTable
end