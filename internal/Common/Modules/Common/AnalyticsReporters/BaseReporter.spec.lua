return function()
	local BaseReporter = require(script.Parent.BaseReporter)

	-- create some testing values
	local function createTestingBaseReporter()
		local testReporter = {}
		setmetatable(testReporter, { __index = BaseReporter })

		function testReporter.create()
			local self = BaseReporter.new("Unnamed Reporter", {})
			setmetatable(self, { __index = testReporter})
			return self
		end

		return testReporter.create()
	end


	describe("new()", function()
		it("should construct with Reporting Service", function()
			local br = BaseReporter.new("Unnamed Reporter", {})
			expect(br).to.be.ok()
		end)

		it("should not be allowed to be constructed without a Reporting Service", function()
			expect(function()
				 BaseReporter.new("Unnamed Reporter", nil)
			end).to.throw()
		end)

		it("should not be allowed to be constructed with invalid input for a Reporting Service", function()
			expect(function()
				 BaseReporter.new("Unnamed Reporter", 115151)
			end).to.throw()
		end)
	end)

	describe("SetReporter()", function()
		it("should not be allowed to be called from the BaseReporter module object", function()
			expect(function()
				BaseReporter:SetReporter({})
			end).to.throw()
		end)

		it("should not allow the reporting service to be set to nil", function()
			local br = createTestingBaseReporter()
			expect(function()
				br:SetReporter(nil)
			end).to.throw()
		end)

		it("should not allow the reporting service to be set to an arbitrary value", function()
			local br = createTestingBaseReporter()
			expect(function()
				br:SetReporter("a string value")
			end).to.throw()
		end)

		it("should allow the reporting service to be changed to a valid service", function()
			local br = createTestingBaseReporter()
			br:SetReporter({})
		end)
	end)

	describe("SetEnabled()", function()
		it("should not be allowed to be called from the BaseReporter module object", function()
			expect(function()
				BaseReporter:SetEnabled(true)
			end).to.throw()
		end)

		it("should not succeed with invalid input", function()
			local br = createTestingBaseReporter()
			expect(function()
				br:SetEnabled("a string value")
			end).to.throw()
		end)

		it("should succeed with valid input", function()
			local br = createTestingBaseReporter()
			br:SetEnabled(false)
		end)
	end)

	describe("CheckBadCallingConvention()", function()
		it("should throw errors when a function is called on the module itself", function()
			expect(function()
				BaseReporter:CheckBadCallingConvention("UnitTests")
			end).to.throw()
		end)

		it("should do nothing when a function is called appropriately", function()
			local br = createTestingBaseReporter()
			br:CheckBadCallingConvention("UnitTests")
		end)
	end)

	describe("CheckForTypeError()", function()
		it("should throw errors when a parameter do not match expectation", function()
			local br = createTestingBaseReporter()

			expect(function()
				br:CheckForTypeError("testValue", "string", 1)
			end).to.throw()

			expect(function()
				br:CheckForTypeError("testValue", "table", nil)
			end).to.throw()

			expect(function()
				br:CheckForTypeError("testValue", "number", true)
			end).to.throw()

			expect(function()
				br:CheckForTypeError("testValue", "boolean", {})
			end).to.throw()
		end)

		it("should do nothing when a parameter matches expectations", function()
			local br = createTestingBaseReporter()
			br:CheckForTypeError("testValue", "string", "foo")
			br:CheckForTypeError("testValue", "table", {})
			br:CheckForTypeError("testValue", "number", 1)
			br:CheckForTypeError("testValue", "boolean", true)
		end)
	end)

	describe("CheckDisabledModule()", function()
		it("should throw errors when a module is disabled", function()
			local br = createTestingBaseReporter()
			expect(function()
				br:SetEnabled(false)
				br:CheckDisabledModule("TestFunction")
			end).to.throw()
		end)

		it("should do nothing when a module is enabled", function()
			local br = createTestingBaseReporter()
			br:SetEnabled(true)
			br:CheckDisabledModule("UnitTests")
		end)
	end)

end