-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/__tests__/extend.test.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  *
--  */

return function()
	local Workspace = script.Parent.Parent
	local Modules = Workspace.Parent
	local Packages = Modules.Parent.Parent

	local snapshots = require(script.Parent.__snapshots__["extend.snap"])

	local Polyfill = require(Packages.LuauPolyfill)
	local Object = Polyfill.Object
	local Symbol = Polyfill.Symbol

	local matcherUtils = require(Modules.JestMatcherUtils)

	local iterableEquality = require(Workspace.utils).iterableEquality
	local subsetEquality = require(Workspace.utils).subsetEquality

	local equals = require(Workspace.jasmineUtils).equals

	local jestExpect = require(Workspace)

	jestExpect.extend({
		toBeDivisibleBy = function(self, actual: number, expected: number)
			local pass = actual % expected == 0
			local message
			if pass then
				message = function()
					return string.format(
						"expected %s not to be divisible by %s",
						tostring(actual), tostring(expected)
					)
				end
			else
				message = function()
					return string.format(
						"expected %s to be divisible by %s",
						tostring(actual), tostring(expected)
					)
				end
			end

			return {message = message, pass = pass}
		end,
		toBeSymbol = function(self, actual, expected)
			local pass = actual == expected
			local message = function()
				return string.format(
					"expected %s to be Symbol %s",
					tostring(actual), tostring(expected)
				)
			end

			return {message = message, pass = pass}
		end,
		toBeWithinRange = function(self, actual: number, floor: number, ceiling: number)
			local pass
			if type(actual) ~= 'number' or type(floor) ~= 'number' or type(ceiling) ~= 'number' then
				pass = false
			else 
				pass = actual >= floor and actual <= ceiling
			end
			local message
			if pass then
				message = function()
					string.format(
						"expected %s not to be within range %s - %s",
						tostring(actual), tostring(floor), tostring(ceiling)
					)
				end
			else
				message = function()
					return string.format(
						"expected %s to be within range %s - %s",
						tostring(actual), tostring(floor), tostring(ceiling)
					)
				end
			end

			return {message = message, pass = pass}
		end
	})

	it('is available globally when matcher is unary', function()
		jestExpect(15).toBeDivisibleBy(5)
		jestExpect(15).toBeDivisibleBy(3)
		jestExpect(15).never.toBeDivisibleBy(6)

		expect(function()
			jestExpect(15).toBeDivisibleBy(2)
		end).to.throw(
			snapshots['is available globally when matcher is unary 1']
		)
	end)

	it('is available globally when matcher is variadic', function()
		jestExpect(15).toBeWithinRange(10, 20)
		jestExpect(15).never.toBeWithinRange(6)

		expect(function()
			jestExpect(15).toBeWithinRange(1, 3)
		end).to.throw(
			snapshots['is available globally when matcher is variadic 1']
		)
	end)

	it('exposes matcherUtils in context', function()
		jestExpect.extend({
			_shouldNotError = function(self, _actual, _expected)
				local pass = self.equals(
					self.utils,
					Object.assign(matcherUtils, iterableEquality, subsetEquality)
				)
				local message
				if pass then
					message = function()
						return "expected this.utils to be defined in an extend call"
					end
				else
					message = function()
						return "expected this.utils not to be defined in an extend call"
					end
				end

				return {message = message, pass = pass}
			end
		})

		jestExpect()._shouldNotError()
	end)

	it('is ok if there is no message specified', function()
		jestExpect.extend({
			toFailWithoutMessage = function(_, _expected)
				return {pass = false}
			end
		})
	
		expect(function()
			jestExpect(true).toFailWithoutMessage()
		end).to.throw(snapshots['is ok if there is no message specified 1'])
	end)

	it('exposes an equality function to custom matchers', function()
		-- // jestExpect and expect share the same global state
		-- expect.assertions(3)
		jestExpect.extend({
			toBeOne = function(self)
				jestExpect(self.equals).toBe(equals)
				return {pass = not not self.equals(1, 1)}
			end
		})
	
		expect(function() jestExpect().toBeOne() end).never.to.throw()
	end)

	it('defines asymmetric unary matchers', function()
		expect(function()
			jestExpect({value = 2}).toEqual({value = jestExpect.toBeDivisibleBy(2)})
		end).never.to.throw()
		expect(function()
			jestExpect({value = 3}).toEqual({value = jestExpect.toBeDivisibleBy(2)})
		end).to.throw(snapshots['defines asymmetric unary matchers 1'])
	end)

	it('defines asymmetric unary matchers that can be prefixed by never', function()
		expect(function()
			jestExpect({value = 2}).toEqual({value = jestExpect.never.toBeDivisibleBy(2)})
		end).to.throw(snapshots['defines asymmetric unary matchers that can be prefixed by never 1'])
		expect(function()
			jestExpect({value = 3}).toEqual({value = jestExpect.never.toBeDivisibleBy(2)})
		end).never.to.throw()
	end)

	it('defines asymmetric variadic matchers', function()
		expect(function()
			jestExpect({value = 2}).toEqual({value = jestExpect.toBeWithinRange(1, 3)})
		end).never.to.throw()
		expect(function()
			jestExpect({value = 3}).toEqual({value = jestExpect.toBeWithinRange(4, 11)})
		end).to.throw(snapshots['defines asymmetric variadic matchers 1'])
	end)

	it('defines asymmetric variadic matchers that can be prefixed by never', function()
		expect(function()
			jestExpect({value = 2}).toEqual({
				value = jestExpect.never.toBeWithinRange(1, 3),
			})
		end).to.throw(snapshots['defines asymmetric variadic matchers that can be prefixed by never 1'])
		expect(function()
			jestExpect({value = 3}).toEqual({
				value = jestExpect.never.toBeWithinRange(5, 7),
			})
		end).never.to.throw()
	end)

	it('prints the Symbol into the error message', function()
		local foo = Symbol('foo')
		local bar = Symbol('bar')
	
		expect(function()
			jestExpect({a = foo}).toEqual({
				a = jestExpect.toBeSymbol(bar),
			})
		end).to.throw(snapshots['prints the Symbol into the error message 1'])
	end)

	-- deviation: lua specific test to handle asymmetric unary matcher with a table argument
	it('works for asymmetric unary matchers with a table argument', function()
		local input = {1, 2, 3}
		jestExpect.extend({
			unaryShouldNotError = function(_self, _actual, sample)
				local pass = sample == input
				return {pass = pass}
			end
		})
		expect(function()
			jestExpect({value = 0}).toEqual({value = jestExpect.unaryShouldNotError(input)})
		end).never.to.throw()
	end)
end