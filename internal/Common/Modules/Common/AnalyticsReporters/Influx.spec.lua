return function()
	local Influx = require(script.Parent.Influx)

	-- create some testing values
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

	-- helper functions
	local function isTableEqual(table1, table2)
		-- quick escape check
		-- should also capture the case of table1 and 2 being nil
		if table1 == table2 then
			return true
		end

		if type(table2) ~= "table" then
			return false
		end

		-- check for key value equality
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

		-- if all other tests fail, they are probably equal
		return true
	end

	-- create a testing service that mimics the AnalyticsService
	local function createDebugReportingService()
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

		return DebugReportingService
	end


	describe("new()", function()
		it("should construct with a Reporting Service", function()
			local influx = Influx.new(createDebugReportingService())
			expect(influx).to.be.ok()
		end)

		it("should fail to be constructed without a Reporting Service", function()
			expect(function()
				Influx.new(nil)
			end).to.throw()
		end)
	end)


	describe("ReportSeries()", function()
		it("should throw an error if called from the Influx module object", function()
			expect(function()
				Influx:ReportSeries(testSeriesName, testArgs, testThrottlingPercentage)
			end).to.throw()
		end)

		it("should work when appropriately enabled / disabled", function()
			local influx = Influx.new(createDebugReportingService())

			expect(function()
				influx:SetEnabled(false)
				influx:ReportSeries(testSeriesName, testArgs, testThrottlingPercentage)
			end).to.throw()


			influx:SetEnabled(true)
			influx:ReportSeries(testSeriesName, testArgs, testThrottlingPercentage)
		end)

		it("should succeed with valid input", function()
			local influx = Influx.new(createDebugReportingService())
			influx:ReportSeries(testSeriesName, testArgs, testThrottlingPercentage)
		end)

		it("should succeed even if it is missing any additionalArgs", function()
			local influx = Influx.new(createDebugReportingService())
			influx:ReportSeries(testSeriesName, nil, testThrottlingPercentage)
		end)

		it("should throw an error with invalid input for the seriesName", function()
			local influx = Influx.new(createDebugReportingService())
			expect(function()
				influx:ReportSeries(badTestSeriesName, testArgs, testThrottlingPercentage)
			end).to.throw()
		end)

		it("should throw an error with invalid input for the throttlingPercentage - out of range - below zero", function()
			expect(function()
			local influx = Influx.new(createDebugReportingService())
				influx:ReportSeries(testSeriesName, testArgs, badThrottlingPercentage1)
			end).to.throw()
		end)

		it("should throw an error with invalid input for the throttlingPercentage - out of range - above cap", function()
			expect(function()
			local influx = Influx.new(createDebugReportingService())
				influx:ReportSeries(testSeriesName, testArgs, badThrottlingPercentage2)
			end).to.throw()
		end)

		it("should throw an error with invalid input for the throttlingPercentage - bad type", function()
			expect(function()
			local influx = Influx.new(createDebugReportingService())
				influx:ReportSeries(testSeriesName, testArgs, badThrottlingPercentage3)
			end).to.throw()
		end)

		it("should throw an error with completely invalid input", function()
			local influx = Influx.new(createDebugReportingService())
			expect(function()
				influx:ReportSeries(badTestSeriesName, badTestArgs, badThrottlingPercentage1)
			end).to.throw()
		end)

		it("should throw an error if it is missing a seriesName", function()
			local influx = Influx.new(createDebugReportingService())
			expect(function()
				influx:ReportSeries(nil, testArgs, testThrottlingPercentage)
			end).to.throw()
		end)

		it("should throw an error if it is missing a throttlingPercentage", function()
			local influx = Influx.new(createDebugReportingService())
			expect(function()
				influx:ReportSeries(testSeriesName, testArgs, nil)
			end).to.throw()
		end)

		it("should throw an error if it is missing any input", function()
			local influx = Influx.new(createDebugReportingService())
			expect(function()
				influx:ReportSeries(nil, nil, nil)
			end).to.throw()
		end)
	end)


	describe("Inheritted Functions", function()
		it("SetReporter() should succeed with valid input", function()
			local reporter = Influx.new(createDebugReportingService())
			reporter:SetReporter(createDebugReportingService())
		end)

		it("SetEnabled() should succeed with valid input", function()
			local reporter = Influx.new(createDebugReportingService())
			reporter:SetEnabled(false)
			reporter:SetEnabled(true)
		end)

		it("CheckBadCallingConvention() should do nothing when called appropriately", function()
			local reporter = Influx.new(createDebugReportingService())
			reporter:CheckBadCallingConvention("someFunction")
		end)

		it("CheckForTypeError() should do nothing when called appropriately", function()
			local reporter = Influx.new(createDebugReportingService())
			reporter:CheckForTypeError("someParameter", "string", "some value")
		end)

		it("CheckDisabledModule() should do nothing when called appropriately", function()
			local reporter = Influx.new(createDebugReportingService())
			reporter:CheckDisabledModule("someFunction")
		end)
	end)
end