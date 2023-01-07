--!nonstrict
return function()
	local Root = script.Parent
	local Packages = Root.Parent
	local Types = require(Packages.MessageBus)
	local expect = require(Packages.Dev.JestGlobals).expect

	local MockMessageBus = {}
	MockMessageBus.__index = MockMessageBus

	function MockMessageBus.call(desc: Types.FunctionDescriptor, params: any): any
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

	local SystemInfoProtocol = require(script.Parent.SystemInfoProtocol)

	describe("SystemInfoProtocol", function()
		beforeEach(function(context)
			context.SystemInfoProtocol = SystemInfoProtocol.new((MockMessageBus :: any) :: Types.MessageBus)
		end)

		it("returns an empty table when called with an empty table", function(context)
			local success, result = pcall(function()
				return context.SystemInfoProtocol:getSystemInfo({})
			end)

			expect(success).toEqual(true)
			expect(type(result)).toEqual("table")
			expect((next(result))).toEqual(nil)
		end)

		it("returns a populated table when called with a populated table", function(context)
			local success, result = pcall(function()
				return context.SystemInfoProtocol:getSystemInfo({
					"manufacturer",
					"osversion",
				})
			end)

			expect(success).toEqual(true)
			expect(type(result.manufacturer)).toEqual("string")
			expect(result.manufacturer).toEqual("manufacturer-value")
			expect(type(result.osversion)).toEqual("string")
			expect(result.osversion).toEqual("osversion-value")
		end)
	end)
end
