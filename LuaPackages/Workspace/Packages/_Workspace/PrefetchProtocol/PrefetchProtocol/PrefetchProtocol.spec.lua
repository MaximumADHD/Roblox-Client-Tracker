return function()
	local Root = script.Parent
	local Packages = Root.Parent
	local JestGlobals = require(Packages.JestGlobals)
	local jestExpect = JestGlobals.expect
	local jest = JestGlobals.jest

	local PrefetchProtocol = require(script.Parent.PrefetchProtocol)

	local Types = require(Packages.MessageBus)

	local testPrefetchProtocol

	local MockMessageBus = {}
	MockMessageBus.__index = MockMessageBus

	local mockPopPendingPrefetchGuid = jest.fn()

	function MockMessageBus.call(desc, params): string?
		assert(desc.validateParams(params))
		-- Simulate the basic behavior of a call to the protocol
		if desc.fid == "Prefetch.popPendingPrefetchGuid" then
			return mockPopPendingPrefetchGuid()
		end
		assert(false, "A function was called that is not supported")
		return
	end

	describe("PrefetchProtocol", function()
		beforeEach(function()
			testPrefetchProtocol = PrefetchProtocol.new((MockMessageBus :: any) :: Types.MessageBus)
		end)
		afterEach(function()
			jest.clearAllMocks()
		end)
		it("should call getOrGenerateOmniSessionId", function()
			testPrefetchProtocol:popPendingPrefetchGuid()
			jestExpect(mockPopPendingPrefetchGuid).toHaveBeenCalledTimes(1)
		end)
	end)
end
