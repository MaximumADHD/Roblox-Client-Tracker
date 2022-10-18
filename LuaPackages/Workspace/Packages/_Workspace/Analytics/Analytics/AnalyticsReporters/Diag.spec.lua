return function()
	local Diag = require(script.Parent.Diag)

	local testCounterName = "testCounter"
	local testCounterAmount = 1
	local testCategoryName = "testCategory"
	local testCategoryValue = 98

	local badTestCounterName = 5
	local badTestCounterAmount = "hello"
	local badTestCategoryName = {}
	local badTestCategoryValue = {}

	local DebugReportingService = {}
	function DebugReportingService:ReportCounter(counterName, amount)
		assert(counterName == testCounterName, "Unexpected value for counterName: " .. counterName)
		assert(amount == testCounterAmount, "Unexpected value for amount: " .. amount)
	end
	function DebugReportingService:ReportStats(categoryName, value)
		assert(categoryName == testCategoryName, "Unexpected value for category: " .. categoryName)
		if value then
			assert(value == testCategoryValue, "Unexpected value for value: " .. value)
		end
	end

	local diag = nil

	beforeEach(function()
		diag = Diag.new(DebugReportingService :: any)
	end)

	describe("new()", function()
		it("should construct with a Reporting Service", function()
			expect(diag).to.be.ok()
		end)

		it("should throw an error to be constructed without a Reporting Service", function()
			expect(function()
				Diag.new(nil :: any)
			end).to.throw()
		end)
	end)

	describe("setEnabled()", function()
		it("should succeed with valid input", function()
			diag:setEnabled(false)
			diag:setEnabled(true)
		end)
		it("should disable the reporter", function()
			diag:setEnabled(false)
			expect(function()
				diag:reportCounter(testCounterName, testCounterAmount)
			end).to.throw()
		end)
	end)

	describe("reportCounter()", function()
		it("should work when appropriately enabled / disabled", function()
			expect(function()
				diag:setEnabled(false)
				diag:reportCounter(testCounterName, testCounterAmount)
			end).to.throw()

			diag:setEnabled(true)
			diag:reportCounter(testCounterName, testCounterAmount)
		end)

		it("should succeed with valid input", function()
			diag:reportCounter(testCounterName, testCounterAmount)
		end)

		it("should throw an error with invalid input for the counter name", function()
			expect(function()
				diag:reportCounter(badTestCounterName :: any, testCounterAmount)
			end).to.throw()
		end)

		it("should throw an error with invalid input for the amount", function()
			expect(function()
				diag:reportCounter(testCounterName, badTestCounterAmount :: any)
			end).to.throw()
		end)

		it("should throw an error with completely invalid input", function()
			expect(function()
				diag:reportCounter(badTestCounterName :: any, badTestCounterAmount :: any)
			end).to.throw()
		end)

		it("should throw an error if it is missing a counter name", function()
			expect(function()
				diag:reportCounter(nil :: any, testCounterAmount)
			end).to.throw()
		end)

		it("should throw an error if it is missing an amount", function()
			expect(function()
				diag:reportCounter(testCounterName, nil :: any)
			end).to.throw()
		end)

		it("should throw an error if it is missing any input", function()
			expect(function()
				diag:reportCounter(nil :: any, nil :: any)
			end).to.throw()
		end)
	end)

	describe("reportStats()", function()
		it("should work when appropriately enabled / disabled", function()
			expect(function()
				diag:setEnabled(false)
				diag:reportStats(testCategoryName, testCategoryValue)
			end).to.throw()

			diag:setEnabled(true)
			diag:reportStats(testCategoryName, testCategoryValue)
		end)

		it("should succeed with valid input", function()
			diag:reportStats(testCategoryName, testCategoryValue)
		end)

		it("should throw an error with invalid input for the category name", function()
			expect(function()
				diag:reportStats(badTestCategoryName :: any, testCategoryValue)
			end).to.throw()
		end)

		it("should throw an error with invalid input for the value", function()
			expect(function()
				diag:reportStats(testCategoryName, badTestCategoryValue :: any)
			end).to.throw()
		end)

		it("should throw an error with completely invalid input", function()
			expect(function()
				diag:reportStats(badTestCategoryName :: any, badTestCategoryValue :: any)
			end).to.throw()
		end)

		it("should throw an error if it is missing a category name", function()
			expect(function()
				diag:reportStats(nil :: any, testCategoryValue)
			end).to.throw()
		end)

		it("should throw an error if it is missing a value", function()
			expect(function()
				diag:reportStats(testCategoryName, nil :: any)
			end).to.throw()
		end)

		it("should throw an error if it is missing any input", function()
			expect(function()
				diag:reportStats(nil :: any, nil :: any)
			end).to.throw()
		end)
	end)
end
