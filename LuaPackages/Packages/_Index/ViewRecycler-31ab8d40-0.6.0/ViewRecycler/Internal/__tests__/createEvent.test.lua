local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local createEvent = require(Src.Internal.createEvent)

describe("createEvent", function()
	it("delivers payloads to connected callbacks", function()
		local event = createEvent()
		local received = {}
		local disconnect = event.connect(function(delta)
			table.insert(received, delta)
		end)

		event.fire(5)
		event.fire(-3)

		expect(received).toEqual({ 5, -3 })
		disconnect()
	end)

	it("stops delivering after disconnect", function()
		local event = createEvent()
		local count = 0
		local disconnect = event.connect(function()
			count += 1
		end)

		event.fire()
		disconnect()
		event.fire()

		expect(count).toBe(1)
	end)

	it("supports multiple subscribers", function()
		local event = createEvent()
		local a, b = 0, 0
		local disconnectA = event.connect(function()
			a += 1
		end)
		local disconnectB = event.connect(function()
			b += 1
		end)

		event.fire()

		expect(a).toBe(1)
		expect(b).toBe(1)

		disconnectA()
		disconnectB()
	end)

	it("allows a subscriber to disconnect while firing", function()
		local event = createEvent()
		local count = 0
		local disconnect: () -> ()
		disconnect = event.connect(function()
			count += 1
			disconnect()
		end)

		event.fire()
		event.fire()

		expect(count).toBe(1)
	end)
end)
