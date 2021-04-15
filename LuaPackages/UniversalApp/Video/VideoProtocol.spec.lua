return function()
	local MockMessageBus = {}
	MockMessageBus.__index = MockMessageBus

	function MockMessageBus.call(desc: FunctionDescriptor, params: any): any
		assert(desc.validateParams(params))
		if desc.fid == "Video.getRecordingDuration" then
			-- Simulate the basic behavior of a call to the protocol
			local result = {}
			result.recordingDuration = 12.5
			return result
		else
			return {}
		end
	end

	local CorePackages = game:GetService("CorePackages")
	local VideoProtocol = require(CorePackages.UniversalApp.Video.VideoProtocol)

	describe("VideoProtocol", function()
		beforeEach(function(context)
			context.VideoProtocol = VideoProtocol.new(MockMessageBus)
		end)

		it("returns an empty table when called with an empty table", function(context)
			local success, result = pcall(function()
				return context.VideoProtocol:getRecordingDuration()
			end)

			expect(success).to.equal(true)
			expect(type(result)).to.equal("table")
			expect(type(result.recordingDuration)).to.equal("number")
			expect(result.recordingDuration).to.equal(12.5)
		end)
	end)
end
