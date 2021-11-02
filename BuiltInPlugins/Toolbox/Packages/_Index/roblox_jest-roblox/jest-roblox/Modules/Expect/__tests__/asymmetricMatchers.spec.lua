-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/__tests__/asymmetricMatchers.test.ts
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

	local Polyfills = require(Packages.LuauPolyfill)
	local RegExp = Polyfills.RegExp

	local AsymmetricMatchers = require(script.Parent.Parent.asymmetricMatchers)
	local any = AsymmetricMatchers.any
	local anything = AsymmetricMatchers.anything
	local arrayContaining = AsymmetricMatchers.arrayContaining
	local arrayNotContaining = AsymmetricMatchers.arrayNotContaining
	local objectContaining = AsymmetricMatchers.objectContaining
	local objectNotContaining = AsymmetricMatchers.objectNotContaining
	local stringContaining = AsymmetricMatchers.stringContaining
	local stringNotContaining = AsymmetricMatchers.stringNotContaining
	local stringMatching = AsymmetricMatchers.stringMatching
	local stringNotMatching = AsymmetricMatchers.stringNotMatching

	it("Any.asymmetricMatch()", function()
		-- deviation: no primitive constructors in lua, we just supply a primitive
		for _, test in ipairs(
			{
				any("string"):asymmetricMatch("jest"),
				any("number"):asymmetricMatch(1),
				any("function"):asymmetricMatch(function() end),
				any("boolean"):asymmetricMatch(true),
				-- deviation: omitted BigInt and Symbol
				any("table"):asymmetricMatch({}),
				-- deviation: typeof(nil) is nil in Lua, not object, so test below is omitted
				-- any("table"):asymmetricMatch(nil),
			}
		) do
			expect(test).to.equal(true)
		end
	end)

	-- deviation: custom test for the Any matcher with Lua prototypes
	it("Any.asymmetricMatch() with Lua prototypical classes", function()
		local ThingOne = {}
		ThingOne.__index = ThingOne
		function ThingOne.new()
			local self = {}
			setmetatable(self, ThingOne)
			return self
		end

		local ThingTwo = {}
		ThingTwo.__index = ThingTwo
		function ThingTwo.new()
			local self = {}
			setmetatable(self, ThingTwo)
			return self
		end

		local ChildThingOne = {}
		ChildThingOne.__index = ChildThingOne
		setmetatable(ChildThingOne, ThingOne)
		function ChildThingOne.new()
			local self = {}
			setmetatable(self, ChildThingOne)
			return self
		end

		local GrandchildThingOne = {}
		GrandchildThingOne.__index = GrandchildThingOne
		setmetatable(GrandchildThingOne, ChildThingOne)
		function GrandchildThingOne.new()
			local self = {}
			setmetatable(self, GrandchildThingOne)
			return self
		end

		expect(any(ThingOne):asymmetricMatch(ThingOne.new())).to.equal(true)
		expect(any(ThingOne):asymmetricMatch(ThingTwo.new())).to.equal(false)
		expect(any(ThingTwo):asymmetricMatch(ThingOne.new())).to.equal(false)
		expect(any(ThingTwo):asymmetricMatch(ThingTwo.new())).to.equal(true)

		expect(any(ChildThingOne):asymmetricMatch(ChildThingOne.new())).to.equal(true)
		expect(any(ThingOne):asymmetricMatch(ChildThingOne.new())).to.equal(true)
		expect(any(ThingTwo):asymmetricMatch(ChildThingOne.new())).to.equal(false)
		expect(any(GrandchildThingOne):asymmetricMatch(ChildThingOne.new())).to.equal(false)

		expect(any(ThingOne):asymmetricMatch(GrandchildThingOne.new())).to.equal(true)
		expect(any(ChildThingOne):asymmetricMatch(GrandchildThingOne.new())).to.equal(true)
		expect(any(ThingTwo):asymmetricMatch(GrandchildThingOne.new())).to.equal(false)
	end)

	it("Any.toAsymmetricMatcher()", function()
		expect(any("number"):toAsymmetricMatcher()).to.equal("Any<number>")
	end)

	it('Any.toAsymmetricMatcher() with function', function()
		expect(any("function"):toAsymmetricMatcher()).to.equal('Any<function>')
	end)

	it("Any throws when called with empty constructor", function()
		expect(function() any() end).to.throw()
	end)

	it("Anything matches any type", function()
		for _, test in ipairs(
			{
				anything():asymmetricMatch("jest"),
				anything():asymmetricMatch(1),
				anything():asymmetricMatch(function() end),
				anything():asymmetricMatch(true),
				anything():asymmetricMatch({x = 1}),
				anything():asymmetricMatch({1, 2}),
			}
		) do
			expect(test).to.equal(true)
		end
	end)

	-- deviation: no undefined
	it("Anything does not match nil", function()
		expect(anything():asymmetricMatch(nil)).to.equal(false)
	end)

	it("Anything.toAsymmetricMatcher()", function()
		expect(anything():toAsymmetricMatcher()).to.equal("Anything")
	end)

	it("ArrayContaining matches", function()
		for _, test in ipairs(
			{
				arrayContaining({}):asymmetricMatch("jest"),
				arrayContaining({"foo"}):asymmetricMatch({"foo"}),
				arrayContaining({"foo"}):asymmetricMatch({"foo", "bar"}),
				arrayContaining({}):asymmetricMatch({}),
			}
		) do
			expect(test).to.equal(true)
		end
	end)

	it("ArrayContaining does not match", function()
		expect(arrayContaining({"foo"}):asymmetricMatch({"bar"})).to.equal(false)
	end)

	it("ArrayContaining throws for non-arrays", function()
		expect(function()
			arrayContaining('foo'):asymmetricMatch({})
		end).to.throw()
		-- deviation: additional test for non-arraylike tables
		expect(function()
			arrayContaining({x = 1}):asymmetricMatch({})
		end).to.throw()
	end)

	it("ArrayNotContaining matches", function()
		expect(arrayNotContaining({"foo"}):asymmetricMatch({"bar"})).to.equal(true)
	end)

	it("ArrayNotContaining does not match", function()
		for _, test in ipairs(
			{
				arrayNotContaining({}):asymmetricMatch("jest"),
				arrayNotContaining({"foo"}):asymmetricMatch({"foo"}),
				arrayNotContaining({"foo"}):asymmetricMatch({"foo", "bar"}),
				arrayNotContaining({}):asymmetricMatch({}),
			}
		) do
			expect(test).to.equal(false)
		end
	end)

	it("ArrayNotContaining throws for non-arrays", function()
		expect(function()
			arrayNotContaining('foo'):asymmetricMatch({})
		end).to.throw()
		-- deviation: additional test for non-arraylike tables
		expect(function()
			arrayNotContaining({x = 1}):asymmetricMatch({})
		end).to.throw()
	end)

	it("ObjectContaining matches", function()
		for _, test in ipairs(
			{
				objectContaining({}):asymmetricMatch("jest"),
				objectContaining({foo = "foo"}):asymmetricMatch({foo = "foo", jest = "jest"}),
				-- deviation: can't have nil values in table
				objectContaining({foo = "undefined"}):asymmetricMatch({foo = "undefined"}),
				objectContaining({first = objectContaining({second = {}})}):asymmetricMatch({
					first = {second = {}},
				}),
			}
		) do
			expect(test).to.equal(true)
		end
	end)

	it("ObjectContaining does not match", function()
		for _, test in ipairs(
			{
				objectContaining({foo = "foo"}):asymmetricMatch({bar = "bar"}),
				objectContaining({foo = "foo"}):asymmetricMatch({foo = "foox"}),
				-- deviation: can't have nil values in table
				objectContaining({foo = "undefined"}):asymmetricMatch({}),
			}
		) do
			expect(test).to.equal(false)
		end
	end)

	it("ObjectContaining matches defined properties", function()
		local definedPropertyObject = {}
		definedPropertyObject.foo = "bar"
		expect(
			objectContaining({foo = "bar"}):asymmetricMatch(definedPropertyObject)
		).to.equal(true)
	end)

	-- deviation: omitted prototype properties test, same as the others in Lua

	it("ObjectContaining throws for non-objects", function()
		expect(function()
			objectContaining(1337):asymmetricMatch()
		end).to.throw()
	end)

	it("ObjectNotContaining matches", function()
		for _, test in ipairs(
			{
				objectNotContaining({foo = "foo"}):asymmetricMatch({bar = "bar"}),
				objectNotContaining({foo = "foo"}):asymmetricMatch({foo = "foox"}),
				-- deviation: can't have nil values in table
				objectNotContaining({foo = "undefined"}):asymmetricMatch({}),
			}
		) do
			expect(test).to.equal(true)
		end
	end)

	it("ObjectNotContaining does not match", function()
		for _, test in ipairs(
			{
				objectNotContaining({foo = "foo"}):asymmetricMatch({
					foo = "foo",
					jest = "jest"
				}),
				-- deviation: can't have nil values in table
				objectNotContaining({foo = "undefined"}):asymmetricMatch({foo = "undefined"}),
				objectNotContaining({
					first = objectNotContaining({second = {}}),
				}):asymmetricMatch({first = {second = {}}}),
			}
		) do
			expect(test).to.equal(false)
		end
	end)

	it("ObjectNotContaining throws for non-objects", function()
		expect(function()
			objectNotContaining(1337):asymmetricMatch()
		end).to.throw()
	end)

	it("StringContaining matches string against string", function()
		expect(stringContaining("en*"):asymmetricMatch("queen*")).to.equal(true)
		expect(stringContaining("en"):asymmetricMatch("queue")).to.equal(false)
	end)

	it("StringContaining throws if expected value is not string", function()
		expect(function()
			stringContaining({1}):asymmetricMatch("queen")
		end).to.throw()
	end)

	it("StringContaining returns false if received value is not string", function()
		expect(stringContaining("en*"):asymmetricMatch(1)).to.equal(false)
	end)

	it("StringNotContaining matches string against string", function()
		expect(stringNotContaining("en*"):asymmetricMatch("queen*")).to.equal(false)
		expect(stringNotContaining("en"):asymmetricMatch("queue")).to.equal(true)
	end)

	it("StringNotContaining throws if expected value is not string", function()
		expect(function()
			stringNotContaining({1}):asymmetricMatch("queen")
		end).to.throw()
	end)

	it("StringNotContaining returns true if received value is not string", function()
		expect(stringNotContaining("en*"):asymmetricMatch(1)).to.equal(true)
	end)

	it('StringMatching matches string against regexp', function()
		expect(stringMatching(RegExp("en")):asymmetricMatch('queen')).to.equal(true)
		expect(stringMatching(RegExp("en")):asymmetricMatch('queue')).to.equal(false)
	end)

	-- deviation: Lua pattern test not included in upstream
	it("StringMatching matches string against pattern", function()
		expect(stringMatching("e+"):asymmetricMatch("queen")).to.equal(true)
		expect(stringMatching("%s"):asymmetricMatch("queue")).to.equal(false)
	end)

	it("StringMatching matches string against string", function()
		expect(stringMatching("en"):asymmetricMatch("queen")).to.equal(true)
		expect(stringMatching("en"):asymmetricMatch("queue")).to.equal(false)
	end)

	it("StringMatching throws if expected value is neither string nor regexp", function()
		expect(function()
			stringMatching({1}):asymmetricMatch("queen")
		end).to.throw()
	end)

	it("StringMatching returns false if received value is not string", function()
		expect(stringMatching("en"):asymmetricMatch(1)).to.equal(false)
	end)

	it("StringMatching returns false even if coerced non-string received value matches pattern", function()
		expect(stringMatching("nil"):asymmetricMatch(nil)).to.equal(false)
	end)

	it('StringNotMatching matches string against regexp', function()
		expect(stringNotMatching(RegExp("en")):asymmetricMatch('queen')).to.equal(false)
		expect(stringNotMatching(RegExp("en")):asymmetricMatch('queue')).to.equal(true)
	end)

	-- deviation: Lua pattern test not included in upstream
	it("StringNotMatching matches string against pattern", function()
		expect(stringNotMatching("e+"):asymmetricMatch("queen")).to.equal(false)
		expect(stringNotMatching("%s"):asymmetricMatch("queue")).to.equal(true)
	end)

	it("StringNotMatching matches string against string", function()
		expect(stringNotMatching("en"):asymmetricMatch("queen")).to.equal(false)
		expect(stringNotMatching("en"):asymmetricMatch("queue")).to.equal(true)
	end)

	it("StringNotMatching throws if expected value is neither string nor regexp", function()
		expect(function()
			stringNotMatching({1}):asymmetricMatch("queen")
		end).to.throw()
	end)

	it("StringNotMatching returns true if received value is not string", function()
		expect(stringNotMatching("en"):asymmetricMatch(1)).to.equal(true)
	end)
end
