return function()
	local GoogleAnalytics = require(script.Parent.GoogleAnalytics)


	-- set up some debug values
	local testCategory = "testCategory"
	local testAction = "testAction"
	local testLabel = "testLabel"
	local badTestCategory = 13141
	local badTestAction = {}
	local badTestLabel = {}


	local function createDebugReportingService()
		local DebugReportingService = {}
		function DebugReportingService:TrackEvent(category, action, label)
			if category ~= testCategory then
				error("unexpected value for category: " .. testCategory)
			end
			if action ~= testAction then
				error("unexpected value for action: " .. testAction)
			end
			if label ~= testLabel then
				error("unexpected value for label: " .. testLabel)
			end
		end

		return DebugReportingService
	end


	describe("new()", function()
		it("should construct with a Reporting Service and Logging Service", function()
			local ga = GoogleAnalytics.new(createDebugReportingService())
			expect(ga).to.be.ok()
		end)

		it("should fail to be constructed without a Reporting Service", function()
			expect(function()
				 GoogleAnalytics.new(nil)
			end).to.throw()
		end)
	end)


	describe("TrackEvent()", function()
		it("should throw an error if called from the GoogleAnalytics module object", function()
			expect(function()
				GoogleAnalytics:TrackEvent(testCategory, testAction, testLabel)
			end).to.throw()
		end)

		it("should work when appropriately enabled / disabled", function()
			local ga = GoogleAnalytics.new(createDebugReportingService())

			expect(function()
				ga:SetEnabled(false)
				ga:TrackEvent(testCategory, testAction, testLabel)
			end).to.throw()

			ga:SetEnabled(true)
			ga:TrackEvent(testCategory, testAction, testLabel)
		end)

		it("should succeed with valid input", function()
			local ga = GoogleAnalytics.new(createDebugReportingService())
			ga:TrackEvent(testCategory, testAction, testLabel)
		end)

		it("should throw an error if it is missing a category", function()
			local ga = GoogleAnalytics.new(createDebugReportingService())
			expect(function()
				ga:TrackEvent(nil, testAction, testLabel)
			end).to.throw()
		end)

		it("should throw an error if it is missing a testAction", function()
			local ga = GoogleAnalytics.new(createDebugReportingService())
			expect(function()
				ga:TrackEvent(testCategory, nil, testLabel)
			end).to.throw()
		end)

		it("should throw an error if it is missing a label", function()
			local ga = GoogleAnalytics.new(createDebugReportingService())
			expect(function()
				ga:TrackEvent(testCategory, testAction, nil)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for category", function()
			local ga = GoogleAnalytics.new(createDebugReportingService())
			expect(function()
				ga:TrackEvent(badTestCategory, testAction, testLabel)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for  testAction", function()
			local ga = GoogleAnalytics.new(createDebugReportingService())
			expect(function()
				ga:TrackEvent(testCategory, badTestAction, testLabel)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for  label", function()
			local ga = GoogleAnalytics.new(createDebugReportingService())
			expect(function()
				ga:TrackEvent(testCategory, testAction, badTestLabel)
			end).to.throw()
		end)
	end)


	describe("Inheritted Functions", function()
		it("SetReporter() should succeed with valid input", function()
			local reporter = GoogleAnalytics.new(createDebugReportingService())
			reporter:SetReporter(createDebugReportingService())
		end)

		it("SetEnabled() should succeed with valid input", function()
			local reporter = GoogleAnalytics.new(createDebugReportingService())
			reporter:SetEnabled(false)
			reporter:SetEnabled(true)
		end)

		it("CheckBadCallingConvention() should do nothing when called appropriately", function()
			local reporter = GoogleAnalytics.new(createDebugReportingService())
			reporter:CheckBadCallingConvention("someFunction")
		end)

		it("CheckForTypeError() should do nothing when called appropriately", function()
			local reporter = GoogleAnalytics.new(createDebugReportingService())
			reporter:CheckForTypeError("someParameter", "string", "some value")
		end)

		it("CheckDisabledModule() should do nothing when called appropriately", function()
			local reporter = GoogleAnalytics.new(createDebugReportingService())
			reporter:CheckDisabledModule("someFunction")
		end)
	end)
end