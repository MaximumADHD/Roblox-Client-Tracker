return function()
	local Diag = require(script.Parent.Diag)

	-- create some testing values
	local testCounterName = "testCounter"
	local testCounterAmount = 1
	local testCategoryName = "testCategory"
	local testCategoryValue = 98

	local badTestCounterName = 5
	local badTestCounterAmount = "hello"
	local badTestCategoryName = {}
	local badTestCategoryValue = {}

	-- create a testing service that mimics the AnalyticsService
	local function createDebugReportingService()
		local DebugReportingService = {}
		function DebugReportingService:ReportCounter(counterName, amount)
			if counterName ~= testCounterName then
				error("Unexpected value for counterName: " .. counterName)
			end
			if amount ~= testCounterAmount then
				error("Unexpected value for amount: " .. amount)
			end
		end
		function DebugReportingService:ReportStats(categoryName, value)
			if categoryName ~= testCategoryName then
				error("Unexpected value for category: " .. categoryName)
			end
			if value ~= testCategoryValue then
				error("Unexpected value for value: " .. value)
			end
		end
		return DebugReportingService
	end



	describe("new()", function()
		it("should construct with a Reporting Service", function()
			local diag = Diag.new(createDebugReportingService())
			expect(diag).to.be.ok()
		end)

		it("should throw an error to be constructed without a Reporting Service", function()
			expect(function()
				 Diag.new(nil)
			end).to.throw()
		end)
	end)


	describe("ReportCounter()", function()
		it("should throw an error to be called on the Diag module object", function()
			expect(function()
				Diag:ReportCounter(testCounterName, testCounterAmount)
			end).to.throw()
		end)

		it("should throw an error if the module itself is disabled", function()
			local diag = Diag.new(createDebugReportingService())

			expect(function()
				diag:SetEnabled(false)
				diag:ReportCounter(testCounterName, testCounterAmount)
			end).to.throw()

			diag:SetEnabled(true)
			diag:ReportCounter(testCounterName, testCounterAmount)
		end)

		it("should succeed with valid input", function()
			local diag = Diag.new(createDebugReportingService())
			diag:ReportCounter(testCounterName, testCounterAmount)
		end)

		it("should throw an error with invalid input for the counter name", function()
			local diag = Diag.new(createDebugReportingService())
			expect(function()
				diag:ReportCounter(badTestCounterName, testCounterAmount)
			end).to.throw()
		end)

		it("should throw an error with invalid input for the amount", function()
			local diag = Diag.new(createDebugReportingService())
			expect(function()
				diag:ReportCounter(testCounterName, badTestCounterAmount)
			end).to.throw()
		end)

		it("should throw an error with completely invalid input", function()
			local diag = Diag.new(createDebugReportingService())
			expect(function()
				diag:ReportCounter(badTestCounterName, badTestCounterAmount)
			end).to.throw()
		end)

		it("should throw an error if it is missing a counter name", function()
			local diag = Diag.new(createDebugReportingService())
			expect(function()
				diag:ReportCounter(nil, testCounterAmount)
			end).to.throw()
		end)

		it("should throw an error if it is missing an amount", function()
			local diag = Diag.new(createDebugReportingService())
			expect(function()
				diag:ReportCounter(testCounterName, nil)
			end).to.throw()
		end)

		it("should throw an error if it is missing any input", function()
			local diag = Diag.new(createDebugReportingService())
			expect(function()
				diag:ReportCounter(nil, nil)
			end).to.throw()
		end)
	end)


	describe("ReportStats()", function()

		it("should throw an error to be called on the Diag module object", function()
			expect(function()
				Diag:ReportStats(testCategoryName, testCategoryValue)
			end).to.throw()
		end)

		it("should work when appropriately enabled / disabled", function()
			local diag = Diag.new(createDebugReportingService())

			expect(function()
				diag:SetEnabled(false)
				diag:ReportStats(testCategoryName, testCategoryValue)
			end).to.throw()

			diag:SetEnabled(true)
			diag:ReportStats(testCategoryName, testCategoryValue)
		end)

		it("should succeed with valid input", function()
			local diag = Diag.new(createDebugReportingService())
			diag:ReportStats(testCategoryName, testCategoryValue)
		end)

		it("should throw an error with invalid input for the category name", function()
			local diag = Diag.new(createDebugReportingService())
			expect(function()
				diag:ReportStats(badTestCategoryName, testCategoryValue)
			end).to.throw()
		end)

		it("should throw an error with invalid input for the value", function()
			local diag = Diag.new(createDebugReportingService())
			expect(function()
				diag:ReportStats(testCategoryName, badTestCategoryValue)
			end).to.throw()
		end)

		it("should throw an error with completely invalid input", function()
			local diag = Diag.new(createDebugReportingService())
			expect(function()
				diag:ReportStats(badTestCategoryName, badTestCategoryValue)
			end).to.throw()
		end)

		it("should throw an error if it is missing a category name", function()
			local diag = Diag.new(createDebugReportingService())
			expect(function()
				diag:ReportStats(nil, testCategoryValue)
			end).to.throw()
		end)

		it("should throw an error if it is missing a value", function()
			local diag = Diag.new(createDebugReportingService())
			expect(function()
				diag:ReportStats(testCategoryName, nil)
			end).to.throw()
		end)

		it("should throw an error if it is missing any input", function()
			local diag = Diag.new(createDebugReportingService())
			expect(function()
				diag:ReportStats(nil, nil)
			end).to.throw()
		end)
	end)


	describe("Inheritted Functions", function()
		it("SetReporter() should succeed with valid input", function()
			local reporter = Diag.new(createDebugReportingService())
			reporter:SetReporter(createDebugReportingService())
		end)

		it("SetEnabled() should succeed with valid input", function()
			local reporter = Diag.new(createDebugReportingService())
			reporter:SetEnabled(false)
			reporter:SetEnabled(true)
		end)

		it("CheckBadCallingConvention() should do nothing when called appropriately", function()
			local reporter = Diag.new(createDebugReportingService())
			reporter:CheckBadCallingConvention("someFunction")
		end)

		it("CheckForTypeError() should do nothing when called appropriately", function()
			local reporter = Diag.new(createDebugReportingService())
			reporter:CheckForTypeError("someParameter", "string", "some value")
		end)

		it("CheckDisabledModule() should do nothing when called appropriately", function()
			local reporter = Diag.new(createDebugReportingService())
			reporter:CheckDisabledModule("someFunction")
		end)
	end)
end