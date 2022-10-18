return function()
	local Influx = require(script.Parent.Influx)

	local testSeriesName = "testSeries"
	local testArgs = {
		testKey = "testValue",
	}
	local testThrottlingPercentage = 1000

	local badTestSeriesName = 114
	local badTestArgs = "someString"
	local badThrottlingPercentage1 = -15
	local badThrottlingPercentage2 = 150000
	local badThrottlingPercentage3 = "a lot"

	local function isTableEqual(table1, table2)
		if table1 == table2 then
			return true
		end

		if type(table2) ~= "table" then
			return false
		end

		for key, _ in pairs(table1) do
			if table1[key] ~= table2[key] then
				return false
			end
		end
		for key, _ in pairs(table2) do
			if table2[key] ~= table1[key] then
				return false
			end
		end

		return true
	end

	local DebugReportingService = {}
	function DebugReportingService:ReportInfluxSeries(seriesName, additionalArgs, throttlingPercentage)
		if seriesName ~= seriesName then
			error("Unexpected value for seriesName: " .. seriesName)
		end
		if throttlingPercentage ~= testThrottlingPercentage then
			error("Unexpected value for throttlingPercentage: " .. throttlingPercentage)
		end
		if isTableEqual(additionalArgs, {}) == false then
			if isTableEqual(additionalArgs, testArgs) == false then
				error("Unexpected value for additionalArgs")
			end
		end
	end

	local influx = nil

	beforeEach(function()
		influx = Influx.new(DebugReportingService :: any)
	end)

	describe("new()", function()
		it("should construct with a Reporting Service", function()
			expect(influx).to.be.ok()
		end)

		it("should fail to be constructed without a Reporting Service", function()
			expect(function()
				Influx.new(nil :: any)
			end).to.throw()
		end)
	end)

	describe("setEnabled()", function()
		it("should succeed with valid input", function()
			influx:setEnabled(false)
			influx:setEnabled(true)
		end)
		it("should disable the reporter", function()
			influx:setEnabled(false)
			expect(function()
				influx:reportSeries(testSeriesName, testArgs, testThrottlingPercentage)
			end).to.throw()
		end)
	end)

	describe("reportSeries()", function()
		it("should work when appropriately enabled / disabled", function()
			expect(function()
				influx:setEnabled(false)
				influx:reportSeries(testSeriesName, testArgs, testThrottlingPercentage)
			end).to.throw()

			influx:setEnabled(true)
			influx:reportSeries(testSeriesName, testArgs, testThrottlingPercentage)
		end)

		it("should succeed with valid input", function()
			influx:reportSeries(testSeriesName, testArgs, testThrottlingPercentage)
		end)

		it("should succeed even if it is missing any additionalArgs", function()
			influx:reportSeries(testSeriesName, nil, testThrottlingPercentage)
		end)

		it("should throw an error with invalid input for the seriesName", function()
			expect(function()
				influx:reportSeries(badTestSeriesName :: any, testArgs, testThrottlingPercentage)
			end).to.throw()
		end)

		it(
			"should throw an error with invalid input for the throttlingPercentage - out of range - below zero",
			function()
				expect(function()
					influx:reportSeries(testSeriesName, testArgs, badThrottlingPercentage1 :: any)
				end).to.throw()
			end
		)

		it(
			"should throw an error with invalid input for the throttlingPercentage - out of range - above cap",
			function()
				expect(function()
					influx:reportSeries(testSeriesName, testArgs, badThrottlingPercentage2 :: any)
				end).to.throw()
			end
		)

		it("should throw an error with invalid input for the throttlingPercentage - bad type", function()
			expect(function()
				influx:reportSeries(testSeriesName, testArgs, badThrottlingPercentage3 :: any)
			end).to.throw()
		end)

		it("should throw an error with completely invalid input", function()
			expect(function()
				influx:reportSeries(badTestSeriesName :: any, badTestArgs :: any, badThrottlingPercentage1 :: any)
			end).to.throw()
		end)

		it("should throw an error if it is missing a seriesName", function()
			expect(function()
				influx:reportSeries(nil :: any, testArgs, testThrottlingPercentage)
			end).to.throw()
		end)

		it("should throw an error if it is missing a throttlingPercentage", function()
			expect(function()
				influx:reportSeries(testSeriesName, testArgs, nil :: any)
			end).to.throw()
		end)

		it("should throw an error if it is missing any input", function()
			expect(function()
				influx:reportSeries(nil :: any, nil :: any, nil :: any)
			end).to.throw()
		end)
	end)
end
