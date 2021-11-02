-- upstream: https://github.com/jasmine/jasmine/blob/v3.6.0/spec/core/SpySpec.js
--[[
	Our usual upstream of jest v26.5.3 doesn't include any tests for the
	createSpy file so we instead look to the source that the jest/jasmine2
	is based off of, jasmine
]]

return function()
	describe("Spies", function()
		local Workspace = script.Parent.Parent
		local createSpy = require(Workspace.createSpy)
		local SpyStrategy = require(Workspace.SpyStrategy)
		local CallTracker = require(Workspace.CallTracker)

		describe("createSpy", function()
			local TestClass = {}
			TestClass.prototype = {}

			beforeEach(function()
				setmetatable(TestClass, {__call = function() end})
				TestClass.prototype.someFunction = {}
				setmetatable(TestClass.prototype.someFunction, {__call = function() end})
				TestClass.prototype.someFunction.bob = "test"
			end)

			it("preserves the properties of the spied function", function()
				local spy = createSpy("TestClass.prototype", TestClass.prototype.someFunction)

				expect(spy.bob).to.equal("test")
			end)

			-- deviation: test skipped because we don't implement the
			-- env.createSpy function that would actually allow for this
			itSKIP("should allow you to omit the name argument and only pass the originalFn argument", function()
				--[[
					var fn = function test() {};
					var spy = env.createSpy(fn);

					// IE doesn't do `.name`
					if (fn.name === 'test') {
						expect(spy.and.identity).toEqual('test');
					} else {
						expect(spy.and.identity).toEqual('unknown');
					}
				]]
			end)

			it("warns the user that we intend to overwrite an existing property", function()
				TestClass.prototype.someFunction["and"] = "turkey"
				expect(function()
					createSpy("TestClass.prototype", TestClass.prototype.someFunction)
				end).to.throw("Jasmine spies would overwrite the 'and', 'andAlso' and 'calls' properties on the object being spied upon")

				TestClass.prototype.someFunction["and"] = nil
				TestClass.prototype.someFunction["andAlso"] = "turkey"
				expect(function()
					createSpy("TestClass.prototype", TestClass.prototype.someFunction)
				end).to.throw("Jasmine spies would overwrite the 'and', 'andAlso' and 'calls' properties on the object being spied upon")
			end)

			it("adds a spyStrategy and callTracker to the spy", function()
				local spy = createSpy("TestClass.prototype", TestClass.prototype.someFunction)

				expect(spy["and"].__index).to.equal(SpyStrategy)
				expect(spy.calls.__index).to.equal(CallTracker)
			end)

			-- ROBLOX TODO: implement more tests when we have more files
			-- translated such as spyRegistry (which will give access to the
			-- spyOn function)
		end)
	end)
end