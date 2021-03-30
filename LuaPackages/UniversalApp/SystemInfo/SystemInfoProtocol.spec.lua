return function()
	local MockMessageBus = {}
	MockMessageBus.__index = MockMessageBus

	function MockMessageBus.call(desc: FunctionDescriptor, params: any): any
		assert(desc.validateParams(params))
		if desc.fid == "SystemInfo.getSystemInfo" then
			-- Simulate the basic behavior of a call to 
			local result = {}
			for _index, name in ipairs(params) do
				result[name] = name .. "-value"
			end

			return result
		else
			return nil
		end
	end

	local CorePackages = game:GetService("CorePackages")
	local SystemInfoProtocol = require(CorePackages.UniversalApp.SystemInfo.SystemInfoProtocol)

	describe("SystemInfoProtocol", function()
		beforeEach(function(context)
			context.SystemInfoProtocol = SystemInfoProtocol.new(MockMessageBus)
		end)

		it("returns an empty table when called with an empty table", function(context)
			local success, result = pcall(function()
				return context.SystemInfoProtocol:getSystemInfo({})
			end)

			expect(success).to.equal(true)
			expect(type(result)).to.equal("table")
			expect(next(result)).to.equal(nil)
		end)

		it("returns a populated table when called with a populated table", function(context)
			local success, result = pcall(function()
				return context.SystemInfoProtocol:getSystemInfo({
					"manufacturer",
					"osversion"
				})
			end)

			expect(success).to.equal(true)
			expect(type(result.manufacturer)).to.equal("string")
			expect(result.manufacturer).to.equal("manufacturer-value")
			expect(type(result.osversion)).to.equal("string")
			expect(result.osversion).to.equal("osversion-value")
		end)
	end)
end
