return function()
	local Influx = require(script.Parent.Influx)

	local testSeriesName = "testSeries"
	local testArgs = {
		testKey = "testValue"
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


	describe("new()", function()
		it("should construct with a Reporting Service", function()
			local influx = Influx.new(DebugReportingService)
			expect(influx).to.be.ok()
		end)

		it("should fail to be constructed without a Reporting Service", function()
			expect(function()
				Influx.new(nil)
			end).to.throw()
		end)
	end)

	describe("setEnabled()", function()
		it("should succeed with valid input", function()
			local influx = Influx.new(DebugReportingService)
			influx:setEnabled(false)
			influx:setEnabled(true)
		end)
		it("should disable the reporter", function()
			local influx = Influx.new(DebugReportingService)
			influx:setEnabled(false)
			expect(function()
				influx:reportSeries(testSeriesName, testArgs, testThrottlingPercentage)
			end).to.throw()
		end)
	end)

	describe("reportSeries()", function()
		it("should work when appropriately enabled / disabled", function()
			local influx = Influx.new(DebugReportingService)

			expect(function()
				influx:setEnabled(false)
				influx:reportSeries(testSeriesName, testArgs, testThrottlingPercentage)
			end).to.throw()


			influx:setEnabled(true)
			influx:reportSeries(testSeriesName, testArgs, testThrottlingPercentage)
		end)

		it("should succeed with valid input", function()
			local influx = Influx.new(DebugReportingService)
			influx:reportSeries(testSeriesName, testArgs, testThrottlingPercentage)
		end)

		it("should succeed even if it is missing any additionalArgs", function()
			local influx = Influx.new(DebugReportingService)
			influx:reportSeries(testSeriesName, nil, testThrottlingPercentage)
		end)

		it("should throw an error with invalid input for the seriesName", function()
			local influx = Influx.new(DebugReportingService)
			expect(function()
				influx:reportSeries(badTestSeriesName, testArgs, testThrottlingPercentage)
			end).to.throw()
		end)

		it("should throw an error with invalid input for the throttlingPercentage - out of range - below zero", function()
			expect(function()
			local influx = Influx.new(DebugReportingService)
				influx:reportSeries(testSeriesName, testArgs, badThrottlingPercentage1)
			end).to.throw()
		end)

		it("should throw an error with invalid input for the throttlingPercentage - out of range - above cap", function()
			expect(function()
			local influx = Influx.new(DebugReportingService)
				influx:reportSeries(testSeriesName, testArgs, badThrottlingPercentage2)
			end).to.throw()
		end)

		it("should throw an error with invalid input for the throttlingPercentage - bad type", function()
			expect(function()
			local influx = Influx.new(DebugReportingService)
				influx:reportSeries(testSeriesName, testArgs, badThrottlingPercentage3)
			end).to.throw()
		end)

		it("should throw an error with completely invalid input", function()
			local influx = Influx.new(DebugReportingService)
			expect(function()
				influx:reportSeries(badTestSeriesName, badTestArgs, badThrottlingPercentage1)
			end).to.throw()
		end)

		it("should throw an error if it is missing a seriesName", function()
			local influx = Influx.new(DebugReportingService)
			expect(function()
				influx:reportSeries(nil, testArgs, testThrottlingPercentage)
			end).to.throw()
		end)

		it("should throw an error if it is missing a throttlingPercentage", function()
			local influx = Influx.new(DebugReportingService)
			expect(function()
				influx:reportSeries(testSeriesName, testArgs, nil)
			end).to.throw()
		end)

		it("should throw an error if it is missing any input", function()
			local influx = Influx.new(DebugReportingService)
			expect(function()
				influx:reportSeries(nil, nil, nil)
			end).to.throw()
		end)
	end)
end