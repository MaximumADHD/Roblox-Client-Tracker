-- upstream: https://github.com/jasmine/jasmine/blob/v3.6.0/spec/core/SpyStrategySpec.js
--[[
	Our usual upstream of jest v26.5.3 doesn't include any tests for the
	SpyStrategy file so we instead look to the source that the jest/jasmine2
	is based off of, jasmine
]]

return function()
	describe("SpyStrategy", function()
		local Workspace = script.Parent.Parent
		local Modules = Workspace.Parent.Parent
		local Packages = Modules.Parent.Parent

		local SpyStrategy = require(Workspace.SpyStrategy)
		local createSpy = require(Workspace.createSpy)

		local equals = require(Modules.Expect.jasmineUtils).equals

		local Promise = require(Packages.Dev.Promise)

		it("defaults its name to unknown", function()
			local spyStrategy = SpyStrategy.new()

			expect(spyStrategy.identity).to.equal("unknown")
		end)

		it("takes a name", function()
			local spyStrategy = SpyStrategy.new({name = 'foo'})

			expect(spyStrategy.identity).to.equal("foo")
		end)

		it("stubs an original function, if provided", function()
			local originalFn = createSpy("original")
			local spyStrategy = SpyStrategy.new({fn = originalFn})

			spyStrategy:exec()

			-- deviation: toHaveBeenCalledWith() has not been implemented so
			-- we use calls:any() to see if a call has been made
			expect(equals(originalFn.calls:any())).to.equal(false)
		end)

		it("allows an original function to be called, passed through the params and returns it's value", function()
			local originalFn = createSpy("original").andAlso:returnValue(42)
			local spyStrategy = SpyStrategy.new({fn = originalFn})

			spyStrategy:callThrough()
			local returnValue = spyStrategy:exec(1, {'foo'})

			expect(originalFn.calls:any()).to.equal(true)
			expect(equals(originalFn.calls:mostRecent().args, {1, {'foo'}})).to.equal(true)
			expect(returnValue).to.equal(42)
		end)

		it("can return a specified value when executed", function()
			local originalFn = createSpy("original")
			local spyStrategy = SpyStrategy.new({fn = originalFn})
			local returnValue

			spyStrategy:returnValue(17)
			returnValue = spyStrategy:exec()

			expect(originalFn.calls:any()).to.equal(false)
			expect(returnValue).to.equal(17)
		end)

		it("can return specified values in order specified when executed", function()
			local originalFn = createSpy("original")
			local spyStrategy = SpyStrategy.new({fn = originalFn})

			spyStrategy:returnValues("value1", "value2", "value3")

			expect(spyStrategy:exec()).to.equal("value1")
			expect(spyStrategy:exec()).to.equal("value2")
			expect(spyStrategy:exec()).to.equal("value3")
			expect(spyStrategy:exec()).to.equal(nil)
			expect(originalFn.calls:any()).to.equal(false)
		end)

		it("allows an exception to be thrown when executed", function()
			local originalFn = createSpy("original")
			local spyStrategy = SpyStrategy.new({fn = originalFn})

			spyStrategy:throwError("bar")

			expect(function()
				spyStrategy:exec()
			end).to.throw("bar")

			expect(originalFn.calls:any()).to.equal(false)
		end)

		-- deviation: test skipped because its translation is identical to the
		-- one above
		itSKIP('allows a string to be thrown, wrapping it into an exception when executed', function()
			local originalFn = createSpy('original')
			local spyStrategy = SpyStrategy.new({fn = originalFn})

			spyStrategy:throwError("bar")

			expect(function()
				spyStrategy:exec()
			end).to.throw("bar")

			expect(originalFn.calls:any()).to.equal(false)
		end)

		it("allows a non-Error to be thrown when executed", function()
			local originalFn = createSpy("original")
			local spyStrategy = SpyStrategy.new({fn = originalFn})

			spyStrategy:throwError({code = "ESRCH"})

			local ok, err = pcall(function() spyStrategy:exec() end)
			expect(ok).to.equal(false)
			expect(equals(err, {code = "ESRCH"})).to.equal(true)

			expect(originalFn.calls:any()).to.equal(false)
		end)

		it("allows a fake function to be called instead", function()
			local originalFn = createSpy("original")
			local fakeFn = createSpy("fake").andAlso:returnValue(67)
			local spyStrategy = SpyStrategy.new({fn = originalFn})
			local returnValue

			spyStrategy:callFake(fakeFn)
			returnValue = spyStrategy:exec()

			expect(originalFn.calls:any()).to.equal(false)
			expect(returnValue).to.equal(67)
		end)

		it("allows a fake async function to be called instead", function()
			local originalFn = createSpy("original")
			local fakeFn = createSpy("fake").andAlso:callFake(
				function()
					return Promise.new(function(resolve, reject)
						resolve(67)
					end)
				end)

			local spyStrategy = SpyStrategy.new({fn = originalFn})

			--[[
				deviation: we use a Promise library to model the functionality
				of the upstream test
				Library: (https://github.com/evaera/roblox-lua-promise)
			]]
			spyStrategy:callFake(fakeFn)
			spyStrategy
				:exec()
				:andThen(function(returnValue)
					expect(originalFn.calls:any()).to.equal(false)
					expect(fakeFn.calls:any()).to.equal(true)
					expect(returnValue).to.equal(67)
				end)
				:catch(function(err)
					error(err)
				end)
		end)

		--[[
			deviation: all tests under the #resolveTo and #rejectWith describe
			blocks are omitted because our upstream (jest) does not replicate
			the resolveTo and rejectWith functions of jasmine so we do not need
			to provide tests

			For the same reason as above, tests with customStrategies are omitted
		]]

		-- ROBLOX TODO: provide a translation of this test once we have a
		-- translation for the spyRegistry file (and therefore can use spyOn)
		itSKIP("throws an error when a non-function is passed to callFake strategy", function()
			--[[
				var originalFn = jasmine.createSpy('original'),
			      spyStrategy = new jasmineUnderTest.SpyStrategy({ fn: originalFn });

				spyOn(jasmineUnderTest, 'isFunction_').and.returnValue(false);
				spyOn(jasmineUnderTest, 'isAsyncFunction_').and.returnValue(false);

				expect(function() {
					spyStrategy.callFake(function() {});
				}).toThrowError(/^Argument passed to callFake should be a function, got/);

				expect(function() {
					spyStrategy.callFake(function() {});
				}).toThrowError(/^Argument passed to callFake should be a function, got/);
			]]
		end)

		it("allows a return to plan stubbing after another strategy", function()
			local originalFn = createSpy("original")
			local fakeFn = createSpy("fake").andAlso:returnValue(67)
			local spyStrategy = SpyStrategy.new({fn = originalFn})
			local returnValue

			spyStrategy:callFake(fakeFn)
			returnValue = spyStrategy:exec()

			expect(originalFn.calls:any()).to.equal(false)
			expect(returnValue).to.equal(67)

			spyStrategy:stub()
			returnValue = spyStrategy:exec()

			expect(returnValue).to.equal(nil)
		end)

		it("returns the spy after changing the strategy", function()
			local spy = {}
			local spyFn = createSpy("spyFn").andAlso:returnValue(spy)
			local spyStrategy = SpyStrategy.new({getSpy = spyFn})

			expect(spyStrategy:callThrough()).to.equal(spy)
			expect(spyStrategy:returnValue()).to.equal(spy)
			expect(spyStrategy:throwError()).to.equal(spy)
			expect(spyStrategy:callFake(function() end)).to.equal(spy)
			expect(spyStrategy:stub()).to.equal(spy)
		end)
	end)
end