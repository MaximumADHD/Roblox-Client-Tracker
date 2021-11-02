-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/jest-jasmine2/src/jasmine/SpyStrategy.ts
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

type Array<T> = { T };

local SpyStrategy = {}

SpyStrategy.__index = SpyStrategy
function SpyStrategy.new(args)
	args = args or {}

	-- deviation: API changed we allow originalFn to also be a table with a
	-- __call metamethod since this allows for the typical use case of passing
	-- in a spy as the originalFn
	local self = {
		identity = args.name or "unknown",
		originalFn = args.fn or function() end,
		getSpy = args.getSpy or function() end,
		plan = function() end
	}

	setmetatable(self, SpyStrategy)

	return self
end

function SpyStrategy:identity(): string
	return self.identity
end

function SpyStrategy:exec(...): any
	local arg: Array<any> = {...}

	return self.plan(unpack(arg))
end

function SpyStrategy:callThrough(): any
	self.plan = self.originalFn

	return self.getSpy()
end

function SpyStrategy:returnValue(value: any): any
	self.plan = function() return value end

	return self.getSpy()
end

function SpyStrategy:returnValues(...): any
	local values = Array.slice({...})
	self.plan = function()
		return Array.shift(values)
	end

	return self.getSpy()
end

function SpyStrategy:throwError(something: string | { [any]: any }): any
	self.plan = function()
		error(something)
	end

	return self.getSpy()
end

function SpyStrategy:callFake(fn): any
	-- deviation: we modify this type check to include table since we can have
	-- fn be a spy which is a table with a __call metafunction not a function
	-- as in upstream
	if typeof(fn) ~= "function" and typeof(fn) ~= "table" then
		error("Argument passed to callFake should be a function or table, got " .. tostring(fn))
	end
	self.plan = fn

	return self.getSpy()
end

function SpyStrategy:stub(_fn): any
	self.plan = function() end

	return self.getSpy()
end

return SpyStrategy