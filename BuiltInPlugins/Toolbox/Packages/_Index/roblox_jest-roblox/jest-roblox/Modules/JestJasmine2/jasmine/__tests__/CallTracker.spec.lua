-- upstream: https://github.com/jasmine/jasmine/blob/v3.6.0/spec/core/CallTrackerSpec.js
--[[
	Our usual upstream of jest v26.5.3 doesn't include any tests for the
	CallTracker file so we instead look to the source that the jest/jasmine2
	is based off of, jasmine
]]
return function()
	local Workspace = script.Parent.Parent
	local CallTracker = require(Workspace.CallTracker)

	local Modules = Workspace.Parent.Parent
	local equals = require(Modules.Expect.jasmineUtils).equals

	describe("CallTracker", function()
		it("tracks that it was called when executed", function()
			local callTracker = CallTracker.new()

			expect(callTracker:any()).to.equal(false)

			expect(callTracker:track())

			expect(callTracker:any()).to.equal(true)
		end)

		it("tracks that number of times that it is executed", function()
			local callTracker = CallTracker.new()

			expect(callTracker:count()).to.equal(0)

			callTracker:track()

			expect(callTracker:count()).to.equal(1)
		end)

		it("tracks the params from each execution", function()
			local callTracker = CallTracker.new()

			callTracker:track({ object = nil, args = {} })
			callTracker:track({ object = {}, args = {0, "foo"} })

			expect(equals(callTracker:argsFor(0), {})).to.equal(true)

			expect(equals(callTracker:argsFor(1), {0, 'foo'})).to.equal(true)
		end)

		it("returns any empty array when there was no call", function()
			local callTracker = CallTracker.new()

			expect(equals(callTracker:argsFor(0), {})).to.equal(true)
		end)

		it("allows access for the arguments for all calls", function()
			local callTracker = CallTracker.new()

			callTracker:track({ object = {}, args = {} })
			callTracker:track({ object = {}, args = {0, "foo"} })

			expect(equals(callTracker:allArgs(), { {}, {0, "foo"} })).to.equal(true)
		end)

		it("tracks the context and arguments for each call", function()
			local callTracker = CallTracker.new()

			callTracker:track({ object = {}, args = {} })
			callTracker:track({ object = {}, args = {0, "foo"}})

			expect(equals(callTracker:all()[1], {object = {}, args = {}})).to.equal(true)

			expect(equals(callTracker:all()[2], { object = {}, args = {0, "foo"} })).to.equal(true)
		end)

		it("simplifies access to the arguments for the last (most recent) call", function()
			local callTracker = CallTracker.new()

			callTracker:track()
			callTracker:track( {object = {}, args = {0, "foo"} })

			expect(equals(callTracker:mostRecent(), {
			object = {},
			args = {0, "foo"}
			})).to.equal(true)
		end)

		it("returns a useful falsy value when there isn't a last (most recent) call", function()
			local callTracker = CallTracker.new()

			expect(callTracker:first()).to.equal(nil)
		end)

		it("allows the tracking to be reset", function()
			local callTracker = CallTracker.new()

			callTracker:track()
			callTracker:track({ object = {}, args = {0, 'foo'} })
			callTracker:reset()

			expect(callTracker:any()).to.equal(false)
			expect(callTracker:count()).to.equal(0)
			expect(equals(callTracker:argsFor(0), {})).to.equal(true)
			expect(equals(callTracker:all(), {})).to.equal(true)
			expect(callTracker:mostRecent()).to.equal(nil)
		end)

		-- deviation: test skipped because jest's implementation of CallTracker
		-- omits the saveArgumentsByValue function
		itSKIP("allows object arguments to be shallow cloned", function()
		--[[
			var callTracker = new jasmineUnderTest.CallTracker();
			callTracker.saveArgumentsByValue();

			var objectArg = { foo: 'bar' },
				arrayArg = ['foo', 'bar'];

			callTracker.track({
				object: {},
				args: [objectArg, arrayArg, false, undefined, null, NaN, '', 0, 1.0]
			});

			expect(callTracker.mostRecent().args[0]).not.toBe(objectArg);
			expect(callTracker.mostRecent().args[0]).toEqual(objectArg);
			expect(callTracker.mostRecent().args[1]).not.toBe(arrayArg);
			expect(callTracker.mostRecent().args[1]).toEqual(arrayArg);
		]]
		end)

		-- deviation: test skipped because jest's implementation of CallTracker
		-- omits the saveArgumentsByValue function
		itSKIP('saves primitive arguments by value', function()
		--[[
			var callTracker = new jasmineUnderTest.CallTracker(),
				args = [undefined, null, false, '', /\s/, 0, 1.2, NaN];

			callTracker.saveArgumentsByValue();
			callTracker.track({ object: {}, args: args });

			expect(callTracker.mostRecent().args).toEqual(args);
		]]
		end)
	end)
end