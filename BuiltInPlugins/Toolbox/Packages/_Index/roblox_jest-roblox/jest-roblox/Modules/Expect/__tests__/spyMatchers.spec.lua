 -- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/__tests__/spyMatchers.test.ts
 -- /**
 -- * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 -- *
 -- * This source code is licensed under the MIT license found in the
 -- * LICENSE file in the root directory of this source tree.
 -- */

 return function()
	local Workspace = script.Parent.Parent
	local Modules = Workspace.Parent
	local Packages = Modules.Parent.Parent

	local Polyfill = require(Packages.LuauPolyfill)
	local Array = Polyfill.Array
	local Error = Polyfill.Error
	local Set = Polyfill.Set

	local snapshots = require(script.Parent.__snapshots__['spyMatchers.snap'])

	local jestExpect = require(Workspace)
	local mock = require(Modules.JestMock)

	local function createSpy(fn)
		local spy = {}
		setmetatable(spy, {
			__call = function() end
		})

		spy.calls = {
			all = function()
				return Array.map(
					fn.mock.calls,
					function(args)
						return {args = args}
					end
				)
			end,
			count = function()
				return #fn.mock.calls
			end
		}

		return spy
	end

	-- For now, we are doing this instead of having a global namespace
	local jest
	beforeAll(function()
		jest = mock.new()
	end)

	for _, called in ipairs({'toBeCalled', 'toHaveBeenCalled'}) do
		describe(called, function()
			it('works only on spies or jest.fn', function()
				local fn = function() end

				jestExpect(function() jestExpect(fn)[called]() end).toThrow(snapshots[called .. ' works only on spies or jest.fn 1'])
			end)

			it('passes when called', function()
				local fn = jest:fn()
				fn('arg0', 'arg1', 'arg2')
				jestExpect(createSpy(fn))[called]()
				jestExpect(fn)[called]()
				jestExpect(function() jestExpect(fn).never[called]() end).toThrow(snapshots[called .. ' passes when called 1'])
			end)

			it('.not passes when called', function()
				local fn = jest:fn()
				local spy = createSpy(fn)

				jestExpect(spy).never[called]()
				jestExpect(fn).never[called]()
				jestExpect(function() jestExpect(spy)[called]() end).toThrow(snapshots[called .. ' .not passes when called 1'])
			end)

			it('fails with any argument passed', function()
				local fn = jest:fn()

				fn()
				jestExpect(function() jestExpect(fn)[called](555) end).toThrow(snapshots[called .. ' fails with any argument passed 1'])
			end)

			it('.not fails with any argument passed', function()
				local fn = jest:fn()

				jestExpect(function()
					jestExpect(fn).never[called](555)
				end).toThrow(snapshots[called .. ' .not fails with any argument passed 1'])
			end)

			it('includes the custom mock name in the error message', function()
				local fn = jest:fn().mockName('named-mock')

				fn()
				jestExpect(fn)[called]()
				jestExpect(function() jestExpect(fn).never[called]() end).toThrow(snapshots[called .. ' includes the custom mock name in the error message 1'])
			end)
		end)
	end

	for _, calledTimes in ipairs({'toBeCalledTimes', 'toHaveBeenCalledTimes'}) do
		describe(('%s'):format(calledTimes), function()
			it('.not works only on spies or jest.fn', function()
				local fn = function() end

				jestExpect(function()
					jestExpect(fn).never[calledTimes](2)
				end).toThrow(snapshots[calledTimes .. ' .not works only on spies or jest.fn 1'])
			end)

			it('only accepts a number argument', function()
				local fn = jest:fn()
				fn()
				jestExpect(fn)[calledTimes](1)

				for i, value in ipairs({{}, true, 'a', function() end}) do
					jestExpect(function()
						jestExpect(fn)[calledTimes](value)
					end).toThrow(snapshots[calledTimes .. ' only accepts a number argument ' .. i])
				end
			end)

			it('.not only accepts a number argument', function()
				local fn = jest:fn()
				jestExpect(fn).never[calledTimes](1)

				for i, value in ipairs({{}, true, 'a', function() end}) do
					jestExpect(function()
						jestExpect(fn).never[calledTimes](value)
					end).toThrow(snapshots[calledTimes .. ' .not only accepts a number argument ' .. i])
				end
			end)

			it('passes if function called equal to expected times', function()
				local fn = jest:fn()
				fn()
				fn()

				local spy = createSpy(fn)
				jestExpect(spy)[calledTimes](2)
				jestExpect(fn)[calledTimes](2)

				jestExpect(function()
					jestExpect(spy).never[calledTimes](2)
				end).toThrow(snapshots[calledTimes .. ' passes if function called equal to expected times 1'])
			end)

			it('.not passes if function called more than expected times', function()
				local fn = jest:fn()
				fn()
				fn()
				fn()

				local spy = createSpy(fn)
				jestExpect(spy)[calledTimes](3)
				jestExpect(spy).never[calledTimes](2)

				jestExpect(fn)[calledTimes](3)
				jestExpect(fn).never[calledTimes](2)

				jestExpect(function()
					jestExpect(fn)[calledTimes](2)
				end).toThrow(snapshots[calledTimes .. ' .not passes if function called more than expected times 1'])
			end)

			it('.not passes if function called less than expected times', function()
				local fn = jest:fn()
				fn()

				local spy = createSpy(fn)
				jestExpect(spy)[calledTimes](1)
				jestExpect(spy).never[calledTimes](2)

				jestExpect(fn)[calledTimes](1)
				jestExpect(fn).never[calledTimes](2)

				jestExpect(function()
					jestExpect(fn)[calledTimes](2)
				end).toThrow(snapshots[calledTimes .. ' .not passes if function called less than expected times 1'])
			end)

			it('includes the custom mock name in the error message', function()
				local fn = jest:fn().mockName('named-mock')
				fn()

				jestExpect(function()
					jestExpect(fn)[calledTimes](2)
				end).toThrow(snapshots[calledTimes .. ' includes the custom mock name in the error message 1'])
			end)
		end)
	end

	for _, calledWith in ipairs({
		'lastCalledWith',
		'toHaveBeenLastCalledWith',
		'nthCalledWith',
		'toHaveBeenNthCalledWith',
		'toBeCalledWith',
		'toHaveBeenCalledWith'
	}) do
		local caller = function(
			callee: any,
			...
		)
			if
				calledWith == 'nthCalledWith' or
				calledWith == 'toHaveBeenNthCalledWith'
			then
				callee(1, ...)
			else
				callee(...)
			end
		end

		describe(('%s'):format(calledWith), function()
			it('works only on spies or jest.fn', function()
				local fn = function() end

				jestExpect(function() jestExpect(fn)[calledWith]() end).toThrow(snapshots[calledWith .. ' works only on spies or jest.fn 1'])
			end)

			it('works when not called', function()
				local fn = jest:fn()
				caller(jestExpect(createSpy(fn)).never[calledWith], 'foo', 'bar')
				caller(jestExpect(fn).never[calledWith], 'foo', 'bar')

				jestExpect(function()
					caller(jestExpect(fn)[calledWith], 'foo', 'bar')
				end).toThrow(snapshots[calledWith .. ' works when not called 1'])
			end)

			it('works with no arguments', function()
				local fn = jest:fn()
				fn()

				caller(jestExpect(createSpy(fn))[calledWith])
				caller(jestExpect(fn)[calledWith])
			end)

			it('works with arguments that don\'t match', function()
				local fn = jest:fn()
				fn('foo', 'bar1')

				caller(jestExpect(createSpy(fn)).never[calledWith], 'foo', 'bar')
				caller(jestExpect(fn).never[calledWith], 'foo', 'bar')

				jestExpect(function()
					caller(jestExpect(fn)[calledWith], 'foo', 'bar')
				end).toThrow(snapshots[calledWith .. ' works with arguments that don\'t match 1'])
			end)

			it('works with arguments that match', function()
				local fn = jest:fn()
				fn('foo', 'bar')

				caller(jestExpect(createSpy(fn))[calledWith], 'foo', 'bar')
				caller(jestExpect(fn)[calledWith], 'foo', 'bar')

				jestExpect(function()
					caller(jestExpect(fn).never[calledWith], 'foo', 'bar')
				end).toThrow(snapshots[calledWith .. ' works with arguments that match 1'])
			end)

			-- deviation: replaced undefined with false
			it('works with trailing undefined arguments', function()
				local fn = jest:fn()
				fn('foo', false)

				jestExpect(function()
					caller(jestExpect(fn)[calledWith], 'foo')
				end).toThrow(snapshots[calledWith .. ' works with trailing undefined arguments 1'])
			end)

			-- deviation: test changed from Map to table
			it('works with Map', function()
				local fn = jest:fn()

				local m1 = {
					{1, 2},
					{2, 1}
				}
				local m2 = {
					{1, 2},
					{2, 1}
				}
				local m3 = {
					{'a', 'b'},
					{'b', 'a'}
				}

				fn(m1)

				caller(jestExpect(fn)[calledWith], m2)
				caller(jestExpect(fn).never[calledWith], m3)

				jestExpect(function()
					caller(jestExpect(fn).never[calledWith], m2)
				end).toThrow(snapshots[calledWith .. ' works with Map 1'])

				jestExpect(function()
					caller(jestExpect(fn)[calledWith], m3)
				end).toThrow(snapshots[calledWith .. ' works with Map 2'])
			end)

			it('works with Set', function()
				local fn = jest:fn()

				local s1 = Set.new({1, 2})
				local s2 = Set.new({1, 2})
				local s3 = Set.new({3, 4})

				fn(s1)

				caller(jestExpect(fn)[calledWith], s2)
				caller(jestExpect(fn).never[calledWith], s3)

				jestExpect(function()
					caller(jestExpect(fn).never[calledWith], s2)
				end).toThrow(snapshots[calledWith .. ' works with Set 1'])

				jestExpect(function()
					caller(jestExpect(fn)[calledWith], s3)
				end).toThrow(snapshots[calledWith .. ' works with Set 2'])
			end)

			-- deviation: skipped test that relies on Immutable.js
			itSKIP('works with Immutable.js objects', function() end)

			-- deviation: changed from array to table with keys as array
			-- entries and value as true for quick lookup
			local basicCalledWith = {
				lastCalledWith = true,
				toHaveBeenLastCalledWith = true,
				toBeCalledWith = true,
				toHaveBeenCalledWith = true
			}

			if basicCalledWith[calledWith] then
				it('works with many arguments', function()
					local fn = jest:fn()
					fn('foo1', 'bar')
					fn('foo', 'bar1')
					fn('foo', 'bar')

					jestExpect(fn)[calledWith]('foo', 'bar')

					jestExpect(function()
						jestExpect(fn).never[calledWith]('foo', 'bar')
					end).toThrow(snapshots[calledWith .. ' works with many arguments 1'])
				end)

				it('works with many arguments that don\'t match', function()
					local fn = jest:fn()
					fn('foo', 'bar1')
					fn('foo', 'bar2')
					fn('foo', 'bar3')

					jestExpect(fn).never[calledWith]('foo', 'bar')

					jestExpect(function()
						jestExpect(fn)[calledWith]('foo', 'bar')
					end).toThrow(snapshots[calledWith .. ' works with many arguments that don\'t match 1'])
				end)
			end

			-- deviation: changed from array to table with keys as array
			-- entries and value as true for quick lookup
			local nthCalled = {
				toHaveBeenNthCalledWith = true,
				nthCalledWith = true
			}

			if nthCalled[calledWith] then
				it('works with three calls', function()
					local fn = jest:fn()
					fn('foo1', 'bar')
					fn('foo', 'bar1')
					fn('foo', 'bar')

					jestExpect(fn)[calledWith](1, 'foo1', 'bar')
					jestExpect(fn)[calledWith](2, 'foo', 'bar1')
					jestExpect(fn)[calledWith](3, 'foo', 'bar')

					jestExpect(function()
						jestExpect(fn).never[calledWith](1, 'foo1', 'bar')
					end).toThrow(snapshots[calledWith .. ' works with three calls 1'])
				end)

				it('positive throw matcher error for n that is not positive integer', function()
					local fn = jest:fn()
					fn('foo1', 'bar')

					jestExpect(function()
						jestExpect(fn)[calledWith](0, 'foo1', 'bar')
					end).toThrow(snapshots[calledWith .. ' positive throw matcher error for n that is not positive integer 1'])
				end)

				it('positive throw matcher error for n that is not integer', function()
					local fn = jest:fn()
					fn('foo1', 'bar')

					jestExpect(function()
						jestExpect(fn)[calledWith](0.1, 'foo1', 'bar')
					end).toThrow(snapshots[calledWith .. ' positive throw matcher error for n that is not integer 1'])
				end)

				it('negative throw matcher error for n that is not integer', function()
					local fn = jest:fn()
					fn('foo1', 'bar')

					jestExpect(function()
						jestExpect(fn).never[calledWith](1/0, 'foo1', 'bar')
					end).toThrow(snapshots[calledWith .. ' negative throw matcher error for n that is not integer 1'])
				end)
			end

			it('includes the custom mock name in the error message', function()
				local fn = jest:fn().mockName('named-mock')
				fn('foo', 'bar')

				caller(jestExpect(fn)[calledWith], 'foo', 'bar')

				jestExpect(function()
					caller(jestExpect(fn).never[calledWith], 'foo', 'bar')
				end).toThrow(snapshots[calledWith .. ' includes the custom mock name in the error message 1'])
			end)
		end)
	end

	for _, returned in ipairs({'toReturn', 'toHaveReturned'}) do
		describe(('%s'):format(returned), function()
			it('.not works only on jest.fn', function()
				local fn = function() end

				jestExpect(function()
					jestExpect(fn).never[returned]()
				end).toThrow(snapshots[returned .. ' .not works only on jest.fn 1'])
			end)

			it('throw matcher error if received is spy', function()
				local spy = createSpy(jest:fn())

				jestExpect(function()
					jestExpect(spy)[returned]()
				end).toThrow(snapshots[returned .. ' throw matcher error if received is spy 1'])
			end)

			it('passes when returned', function()
				local fn = jest:fn(function() return 42 end)
				fn()
				jestExpect(fn)[returned]()
				jestExpect(function()
					jestExpect(fn).never[returned]()
				end).toThrow(snapshots[returned .. ' passes when returned 1'])
			end)

			-- deviation: changed undefined to nil
			it('passes when undefined is returned', function()
				local fn = jest:fn(function() return nil end)
				fn()
				jestExpect(fn)[returned]()
				jestExpect(function()
					jestExpect(fn).never[returned]()
				end).toThrow(snapshots[returned .. ' passes when undefined is returned 1'])
			end)

			it('passes when at least one call does not throw', function()
				local fn = jest:fn(function(causeError)
					if causeError then
						error(Error('Error!'))
					end

					return 42
				end)

				fn(false)

				pcall(function()
					fn(true)
				end)

				fn(false)

				jestExpect(fn)[returned]()

				jestExpect(function()
					jestExpect(fn).never[returned]()
				end).toThrow(snapshots[returned .. ' passes when at least one call does not throw 1'])
			end)

			it('.not passes when not returned', function()
				local fn = jest:fn()

				jestExpect(fn).never[returned]()
				jestExpect(function()
					jestExpect(fn)[returned]()
				end).toThrow(snapshots[returned .. ' .not passes when not returned 1'])
			end)

			it('.not passes when all calls throw', function()
				local fn = jest:fn(function()
					error(Error('Error!'))
				end)

				pcall(function()
					fn()
				end)

				pcall(function()
					fn()
				end)

				jestExpect(fn).never[returned]()
				jestExpect(function()
					jestExpect(fn)[returned]()
				end).toThrow(snapshots[returned .. ' .not passes when all calls throw 1'])
			end)

			-- deviation: changed undefined to nil
			it('.not passes when a call throws undefined', function()
				local fn = jest:fn(function()
					error(nil)
				end)

				pcall(function()
					fn()
				end)

				jestExpect(fn).never[returned]()
				jestExpect(function() jestExpect(fn)[returned]() end).toThrow(snapshots[returned .. ' .not passes when a call throws undefined 1'])
			end)

			it('fails with any argument passed', function()
				local fn = jest:fn()

				fn()
				jestExpect(function()
					jestExpect(fn)[returned](555)
				end).toThrow(snapshots[returned .. ' fails with any argument passed 1'])
			end)

			it('.not fails with any argument passed', function()
				local fn = jest:fn()

				jestExpect(function()
					jestExpect(fn).never[returned](555)
				end).toThrow(snapshots[returned .. ' .not fails with any argument passed 1'])
			end)

			it('includes the custom mock name in the error message', function()
				local fn = jest:fn(function() return 42 end).mockName('named-mock')
				fn()
				jestExpect(fn)[returned]()
				jestExpect(function()
					jestExpect(fn).never[returned]()
				end).toThrow(snapshots[returned .. ' includes the custom mock name in the error message 1'])
			end)

			it('incomplete recursive calls are handled properly', function()
				-- // sums up all integers from 0 -> value, using recursion
				local fn
				fn = jest:fn(function(value)
					if value == 0 then
						-- // Before returning from the base case of recursion, none of the
						-- // calls have returned yet.
						jestExpect(fn).never[returned]()
						jestExpect(function()
							jestExpect(fn)[returned]()
						end).toThrow(snapshots[returned .. ' incomplete recursive calls are handled properly 1'])

						return 0
					else
						return value + fn(value - 1)
					end
				end)

				fn(3)
			end)
		end)
	end

	for _, returnedTimes in ipairs({'toReturnTimes', 'toHaveReturnedTimes'}) do
		describe(('%s'):format(returnedTimes), function()
			it('throw matcher error if received is spy', function()
				local spy = createSpy(jest:fn())

				-- deviation: we don't test against the snapshot because the error
				-- message is sufficiently deviated (we report a table instead of a function)
				expect(function()
					jestExpect(spy).never[returnedTimes](2)
				end).to.throw(snapshots[returnedTimes .. ' throw matcher error if received is spy 1'])
			end)

			it('only accepts a number argument', function()
				local fn = jest:fn(function() return 42 end)
				fn()
				jestExpect(fn)[returnedTimes](1)

				for i, value in ipairs({{}, true, 'a', function() end}) do
					jestExpect(function()
						jestExpect(fn)[returnedTimes](value)
					end).toThrow(snapshots[returnedTimes .. ' only accepts a number argument ' .. i])
				end
			end)

			it('.not only accepts a number argument', function()
				local fn = jest:fn(function() return 42 end)
				jestExpect(fn).never[returnedTimes](2)

				for i, value in ipairs({{}, true, 'a', function() end}) do
					jestExpect(function()
						jestExpect(fn).never[returnedTimes](value)
					end).toThrow(snapshots[returnedTimes .. ' .not only accepts a number argument ' .. i])
				end
			end)

			it('passes if function returned equal to expected times', function()
				local fn = jest:fn(function() return 42 end)
				fn()
				fn()

				jestExpect(fn)[returnedTimes](2)

				jestExpect(function()
					jestExpect(fn).never[returnedTimes](2)
				end).toThrow(snapshots[returnedTimes .. ' passes if function returned equal to expected times 1'])
			end)

			-- deviation: changed undefined to nil
			it('calls that return undefined are counted as returns', function()
				local fn = jest:fn(function() return nil end)
				fn()
				fn()

				jestExpect(fn)[returnedTimes](2)

				jestExpect(function()
					jestExpect(fn).never[returnedTimes](2)
				end).toThrow(snapshots[returnedTimes .. ' calls that return undefined are counted as returns 1'])
			end)

			it('.not passes if function returned more than expected times', function()
				local fn = jest:fn(function() return 42 end)
				fn()
				fn()
				fn()

				jestExpect(fn)[returnedTimes](3)
				jestExpect(fn).never[returnedTimes](2)

				jestExpect(function()
					jestExpect(fn)[returnedTimes](2)
				end).toThrow(snapshots[returnedTimes .. ' .not passes if function returned more than expected times 1'])
			end)

			it('.not passes if function called less than expected times', function()
				local fn = jest:fn(function() return 42 end)
				fn()

				jestExpect(fn)[returnedTimes](1)
				jestExpect(fn).never[returnedTimes](2)

				jestExpect(function()
					jestExpect(fn)[returnedTimes](2)
				end).toThrow(snapshots[returnedTimes .. ' .not passes if function called less than expected times 1'])
			end)

			it('calls that throw are not counted', function()
				local fn = jest:fn(function(causeError)
					if causeError then
						error(Error('Error!'))
					end

					return 42
				end)

				fn(false)

				pcall(function()
					fn(true)
				end)

				fn(false)

				jestExpect(fn).never[returnedTimes](3)

				jestExpect(function()
					jestExpect(fn)[returnedTimes](3)
				end).toThrow(snapshots[returnedTimes .. ' calls that throw are not counted 1'])
			end)

			it('calls that throw undefined are not counted', function()
				local fn = jest:fn(function(causeError)
					if causeError then
						error(nil)
					end

					return 42
				end)

				fn(false)

				pcall(function()
					fn(true)
				end)

				fn(false)

				jestExpect(fn)[returnedTimes](2)

				jestExpect(function()
					jestExpect(fn).never[returnedTimes](2)
				end).toThrow(snapshots[returnedTimes .. ' calls that throw undefined are not counted 1'])
			end)

			it('includes the custom mock name in the error message', function()
				local fn = jest:fn(function() return 42 end).mockName('named-mock')
				fn()
				fn()

				jestExpect(fn)[returnedTimes](2)

				jestExpect(function()
					jestExpect(fn)[returnedTimes](1)
				end).toThrow(snapshots[returnedTimes .. ' includes the custom mock name in the error message 1'])
			end)

			it('incomplete recursive calls are handled properly', function()
				-- // sums up all integers from 0 -> value, using recursion
				local fn
				fn = jest:fn(function(value)
					if value == 0 then
						return 0
					else
						local recursiveResult = fn(value - 1)

						if value == 2 then
							-- // Only 2 of the recursive calls have returned at this point
							jestExpect(fn)[returnedTimes](2)
							jestExpect(function()
								jestExpect(fn).never[returnedTimes](2)
							end).toThrow(snapshots[returnedTimes .. ' incomplete recursive calls are handled properly 1'])
						end

						return value + recursiveResult
					end
				end)

				fn(3)
			end)
		end)
	end

	for _, returnedWith in ipairs({
		'lastReturnedWith',
		'toHaveLastReturnedWith',
		'nthReturnedWith',
		'toHaveNthReturnedWith',
		'toReturnWith',
		'toHaveReturnedWith'
	}) do
		local caller = function(
			callee,
			...
		)
			if
				returnedWith == 'nthReturnedWith' or
				returnedWith == 'toHaveNthReturnedWith'
			then
				callee(1, ...)
			else
				callee(...)
			end
		end

		describe(('%s'):format(returnedWith), function()
			it('works only on spies or jest.fn', function()
				local fn = function() end

				jestExpect(function()
					jestExpect(fn)[returnedWith]()
				end).toThrow(snapshots[returnedWith .. ' works only on spies or jest.fn 1'])
			end)

			it('works when not called', function()
				local fn = jest:fn()
				caller(jestExpect(fn).never[returnedWith], 'foo')

				jestExpect(function()
					caller(jestExpect(fn)[returnedWith], 'foo')
				end).toThrow(snapshots[returnedWith .. ' works when not called 1'])
			end)

			it('works with no arguments', function()
					local fn = jest:fn()
					fn()

					caller(jestExpect(fn)[returnedWith])
			end)

			it('works with argument that does not match', function()
				local fn = jest:fn(function() return 'foo' end)
				fn()

				caller(jestExpect(fn).never[returnedWith], 'bar')

				jestExpect(function()
					caller(jestExpect(fn)[returnedWith], 'bar')
				end).toThrow(snapshots[returnedWith .. ' works with argument that does not match 1'])
			end)

			it('works with argument that does match', function()
				local fn = jest:fn(function() return 'foo' end)
				fn()

				caller(jestExpect(fn)[returnedWith], 'foo')

				jestExpect(function()
					caller(jestExpect(fn).never[returnedWith], 'foo')
				end).toThrow(snapshots[returnedWith .. ' works with argument that does match 1'])
			end)

			it('works with undefined', function()
				local fn = jest:fn(function() return nil end)
				fn()

				caller(jestExpect(fn)[returnedWith], nil)

				jestExpect(function()
					caller(jestExpect(fn).never[returnedWith], nil)
				end).toThrow(snapshots[returnedWith .. ' works with undefined 1'])
			end)

			-- deviation: test changed from Map to table
			it('works with Map', function()
				local m1 = {
					{1, 2},
					{2, 1}
				}
				local m2 = {
					{1, 2},
					{2, 1}
				}
				local m3 = {
					{'a', 'b'},
					{'b', 'a'}
				}

				local fn = jest:fn(function() return m1 end)
				fn()

				caller(jestExpect(fn)[returnedWith], m2)
				caller(jestExpect(fn).never[returnedWith], m3)

				jestExpect(function()
					caller(jestExpect(fn).never[returnedWith], m2)
				end).toThrow(snapshots[returnedWith .. ' works with Map 1'])
				jestExpect(function()
					caller(jestExpect(fn)[returnedWith], m3)
				end).toThrow(snapshots[returnedWith .. ' works with Map 2'])
			end)

			it('works with Set', function()
				local s1 = Set.new({1, 2})
				local s2 = Set.new({1, 2})
				local s3 = Set.new({3, 4})

				local fn = jest:fn(function() return s1 end)
				fn()

				caller(jestExpect(fn)[returnedWith], s2)
				caller(jestExpect(fn).never[returnedWith], s3)

				jestExpect(function()
					caller(jestExpect(fn).never[returnedWith], s2)
				end).toThrow(snapshots[returnedWith .. ' works with Set 1'])

				jestExpect(function()
					caller(jestExpect(fn)[returnedWith], s3)
				end).toThrow(snapshots[returnedWith .. ' works with Set 2'])
			end)

			-- deviation: skipped test that relies on Immutable.js
			itSKIP('works with Immutable.js objects directly created', function() end)

			it('a call that throws is not considered to have returned', function()
				local fn = jest:fn(function()
					error(Error('Error!'))
				end)

				pcall(function()
					fn()
				end)

				-- // It doesn't matter what return value is tested if the call threw
				caller(jestExpect(fn).never[returnedWith], 'foo')
				caller(jestExpect(fn).never[returnedWith], nil)
				-- deviation: omitted call with undefined value

				jestExpect(function()
					caller(jestExpect(fn)[returnedWith], nil)
				end).toThrow(snapshots[returnedWith .. ' a call that throws is not considered to have returned 1'])
			end)

			-- deviation: changed undefined to nil
			it('a call that throws undefined is not considered to have returned', function()
				local fn = jest:fn(function()
					error(nil)
				end)

				pcall(function()
					fn()
				end)

				-- // It doesn't matter what return value is tested if the call threw
				caller(jestExpect(fn).never[returnedWith], 'foo')
				caller(jestExpect(fn).never[returnedWith], nil)
				-- deviation: omitted call with undefined value

				jestExpect(function()
					caller(jestExpect(fn)[returnedWith], nil)
				end).toThrow(snapshots[returnedWith .. ' a call that throws undefined is not considered to have returned 1'])
			end)

			-- deviation: changed from array to table with keys as array
			-- entries and value as true for quick lookup
			local basicReturnedWith = {
				toHaveReturnedWith = true,
				toReturnWith = true
			}

			if basicReturnedWith[returnedWith] then
				describe('returnedWith', function()
					it('works with more calls than the limit', function()
						local fn = jest:fn()
						fn.mockReturnValueOnce('foo1')
						fn.mockReturnValueOnce('foo2')
						fn.mockReturnValueOnce('foo3')
						fn.mockReturnValueOnce('foo4')
						fn.mockReturnValueOnce('foo5')
						fn.mockReturnValueOnce('foo6')

						fn()
						fn()
						fn()
						fn()
						fn()
						fn()

						jestExpect(fn).never[returnedWith]('bar')

						jestExpect(function()
							jestExpect(fn)[returnedWith]('bar')
						end).toThrow(snapshots[returnedWith .. ' returnedWith works with more calls than the limit 1'])
					end)

					it('incomplete recursive calls are handled properly', function()
						-- // sums up all integers from 0 -> value, using recursion
						local fn
						fn = jest:fn(function(value)
							if value == 0 then
								-- // Before returning from the base case of recursion, none of the
								-- // calls have returned yet.
								-- // This test ensures that the incomplete calls are not incorrectly
								-- // interpretted as have returned undefined
								jestExpect(fn).never[returnedWith](nil)
								jestExpect(function()
									jestExpect(fn)[returnedWith](nil)
								end).toThrow(snapshots[returnedWith .. ' returnedWith incomplete recursive calls are handled properly 1'])

								return 0
							else
								return value + fn(value - 1)
							end
						end)

						fn(3)
					end)
				end)
			end

			-- deviation: changed from array to table with keys as array
			-- entries and value as true for quick lookup
			local nthReturnedWith = {
				toHaveNthReturnedWith = true,
				nthReturnedWith = true
			}

			if nthReturnedWith[returnedWith] then
				describe('nthReturnedWith', function()
					it('works with three calls', function()
						local fn = jest:fn()
						fn.mockReturnValueOnce('foo1')
						fn.mockReturnValueOnce('foo2')
						fn.mockReturnValueOnce('foo3')
						fn()
						fn()
						fn()

						jestExpect(fn)[returnedWith](1, 'foo1')
						jestExpect(fn)[returnedWith](2, 'foo2')
						jestExpect(fn)[returnedWith](3, 'foo3')

						jestExpect(function()
							jestExpect(fn).never[returnedWith](1, 'foo1')
							jestExpect(fn).never[returnedWith](2, 'foo2')
							jestExpect(fn).never[returnedWith](3, 'foo3')
						end).toThrow(snapshots[returnedWith .. ' nthReturnedWith works with three calls 1'])
					end)

					it('should replace 1st, 2nd, 3rd with first, second, third', function()
						local fn = jest:fn()
						fn.mockReturnValueOnce('foo1')
						fn.mockReturnValueOnce('foo2')
						fn.mockReturnValueOnce('foo3')
						fn()
						fn()
						fn()

						jestExpect(function()
							jestExpect(fn)[returnedWith](1, 'bar1')
							jestExpect(fn)[returnedWith](2, 'bar2')
							jestExpect(fn)[returnedWith](3, 'bar3')
						end).toThrow(snapshots[returnedWith .. ' nthReturnedWith should replace 1st, 2nd, 3rd with first, second, third 1'])

						jestExpect(function()
							jestExpect(fn).never[returnedWith](1, 'foo1')
							jestExpect(fn).never[returnedWith](2, 'foo2')
							jestExpect(fn).never[returnedWith](3, 'foo3')
						end).toThrow(snapshots[returnedWith .. ' nthReturnedWith should replace 1st, 2nd, 3rd with first, second, third 2'])
					end)

					it('positive throw matcher error for n that is not positive integer', function()
						local fn = jest:fn(function() return 'foo' end)
						fn()

						jestExpect(function()
							jestExpect(fn)[returnedWith](0, 'foo')
						end).toThrow(snapshots[returnedWith .. ' nthReturnedWith positive throw matcher error for n that is not positive integer 1'])
					end)

					it('should reject nth value greater than number of calls', function()
						local fn = jest:fn(function() return 'foo' end)
						fn()
						fn()
						fn()

						jestExpect(function()
							jestExpect(fn)[returnedWith](4, 'foo')
						end).toThrow(snapshots[returnedWith .. ' nthReturnedWith should reject nth value greater than number of calls 1'])
					end)

					it('positive throw matcher error for n that is not integer', function()
						local fn = jest:fn(function() return 'foo' end)
						fn('foo')

						jestExpect(function()
							jestExpect(fn)[returnedWith](0.1, 'foo')
						end).toThrow(snapshots[returnedWith .. ' nthReturnedWith positive throw matcher error for n that is not integer 1'])
					end)

					it('negative throw matcher error for n that is not number', function()
						local fn = jest:fn(function() return 'foo' end)
						fn('foo')

						jestExpect(function()
							jestExpect(fn).never[returnedWith]()
						end).toThrow(snapshots[returnedWith .. ' nthReturnedWith negative throw matcher error for n that is not number 1'])
					end)

					it('incomplete recursive calls are handled properly', function()
						-- // sums up all integers from 0 -> value, using recursion
						local fn
						fn = jest:fn(function(value)
							if value == 0 then
								return 0
							else
								local recursiveResult = fn(value - 1)

								if value == 2 then
									-- // Only 2 of the recursive calls have returned at this point
									jestExpect(fn).never[returnedWith](1, 6)
									jestExpect(fn).never[returnedWith](2, 3)
									jestExpect(fn)[returnedWith](3, 1)
									jestExpect(fn)[returnedWith](4, 0)

									jestExpect(function()
										jestExpect(fn)[returnedWIth](1, 6)
									end).toThrow(snapshots[returnedWith .. ' nthReturnedWith incomplete recursive calls are handled properly 1'])
									jestExpect(function()
										jestExpect(fn)[returnedWith](2, 3)
									end).toThrow(snapshots[returnedWith .. ' nthReturnedWith incomplete recursive calls are handled properly 2'])
									jestExpect(function()
										jestExpect(fn).never[returnedWith](3, 1)
									end).toThrow(snapshots[returnedWith .. ' nthReturnedWith incomplete recursive calls are handled properly 3'])
									jestExpect(function()
										jestExpect(fn).never[returnedWith](4, 0)
									end).toThrow(snapshots[returnedWith .. ' nthReturnedWith incomplete recursive calls are handled properly 4'])
								end
							end

							fn(3)
						end)
					end)
				end)
			end

			-- deviation: changed from array to table with keys as array
			-- entries and value as true for quick lookup
			local lastReturnedWith = {
				toHaveLastReturnedWith = true,
				lastReturnedWith = true
			}
			if lastReturnedWith[returnedWith] then
				describe('lastReturnedWith', function()
					it('works with three calls', function()
						local fn = jest:fn()
						fn.mockReturnValueOnce('foo1')
						fn.mockReturnValueOnce('foo2')
						fn.mockReturnValueOnce('foo3')
						fn()
						fn()
						fn()

						jestExpect(fn)[returnedWith]('foo3')

						jestExpect(function()
							jestExpect(fn).never[returnedWith]('foo3')
						end).toThrow(snapshots[returnedWith .. ' lastReturnedWith works with three calls 1'])
					end)

					it('incomplete recursive calls are handled properly', function()
						-- // sums up all integers from 0 -> value, using recursion
						local fn
						fn = jest:fn(function(value)
							if value == 0 then
								-- // Before returning from the base case of recursion, none of the
								-- // calls have returned yet
								jestExpect(fn).never[returnedWith](0)
								jestExpect(function()
									jestExpect(fn)[returnedWith](0)
								end).toThrow(snapshots[returnedWith .. ' lastReturnedWith incomplete recursive calls are handled properly 1'])
								return 0
							else
								return value + fn(value - 1)
							end
						end)

						fn(3)
					end)
				end)
			end

			it('includes the custom mock name in the error message', function()
				local fn = jest:fn().mockName('named-mock')
				caller(jestExpect(fn).never[returnedWith], 'foo')

				jestExpect(function()
					caller(jestExpect(fn)[returnedWith], 'foo')
				end).toThrow(snapshots[returnedWith .. ' lastReturnedWith includes the custom mock name in the error message 1'])
			end)
		end)
	end

	describe("Lua spyMatchers tests", function()
		-- some basic test cases that don't work properly that exhibit the behavior that should
		-- get fixed by ADO-1395. The second test case actually seems to be erroring correctly
		-- but we need the error message to be better
		describe("calls with nil arguments", function()
			itSKIP("lastCalledWith works with trailing nil arguments", function()
				local fn = jest:fn()
				fn('a', 'b', nil)
				jestExpect(fn).never.lastCalledWith('a', 'b')
			end)

			itSKIP("lastCalledWith works with inner nil argument", function()
				local fn = jest:fn()
				fn('a', nil, 'b')
				jestExpect(fn).lastCalledWith('a', nil)
			end)
		end)
	end)
end