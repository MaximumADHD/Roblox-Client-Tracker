return function()
	local GoogleAnalytics = require(script.Parent.GoogleAnalytics)

	local testCategory = "testCategory"
	local testAction = "testAction"
	local testLabel = "testLabel"
	local testValue = 6
	local badTestCategory = 13141
	local badTestAction = {}
	local badTestLabel = {}
	local badTestValue = "heyo"

	local DebugReportingService = {}
	function DebugReportingService:TrackEvent(category, action, label, value)
		if category ~= testCategory then
			error("unexpected value for category: " .. category)
		end
		if action ~= testAction then
			error("unexpected value for action: " .. action)
		end
		if label then
			if label ~= testLabel then
				error("unexpected value for label: " .. label)
			end
		end
		if value then
			if value ~= testValue then
				error("unexpected value for value: " .. value)
			end
		end
	end

	local ga = nil

	beforeEach(function()
		ga = GoogleAnalytics.new(DebugReportingService :: any)
	end)

	describe("new()", function()
		it("should construct with a Reporting Service and Logging Service", function()
			expect(ga).to.be.ok()
		end)

		it("should fail to be constructed without a Reporting Service", function()
			expect(function()
				GoogleAnalytics.new(nil :: any)
			end).to.throw()
		end)
	end)

	describe("setEnabled()", function()
		it("should succeed with valid input", function()
			ga:setEnabled(false)
			ga:setEnabled(true)
		end)
		it("should disable the reporter", function()
			ga:setEnabled(false)
			expect(function()
				ga:trackEvent(testCategory, testAction, testLabel, testValue)
			end).to.throw()
		end)
	end)

	describe("trackEvent()", function()
		it("should work when appropriately enabled / disabled", function()
			expect(function()
				ga:setEnabled(false)
				ga:trackEvent(testCategory, testAction, testLabel)
			end).to.throw()

			ga:setEnabled(true)
			ga:trackEvent(testCategory, testAction, testLabel)
		end)

		it("should succeed with valid input", function()
			ga:trackEvent(testCategory, testAction, testLabel, testValue)
		end)

		it("should throw an error if it is missing a category", function()
			expect(function()
				ga:trackEvent(nil :: any, testAction, testLabel, testValue)
			end).to.throw()
		end)

		it("should throw an error if it is missing a testAction", function()
			expect(function()
				ga:trackEvent(testCategory, nil :: any, testLabel, testValue)
			end).to.throw()
		end)

		it("should not throw an error if it is missing a label", function()
			ga:trackEvent(testCategory, testAction, nil :: any, testValue)
		end)

		it("should not throw an error if it is missing a value", function()
			ga:trackEvent(testCategory, testAction, testLabel)
		end)

		it("should throw an error if it is given invalid input for category", function()
			expect(function()
				ga:trackEvent(badTestCategory :: any, testAction, testLabel, testValue)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for action", function()
			expect(function()
				ga:trackEvent(testCategory, badTestAction :: any, testLabel, testValue)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for label", function()
			expect(function()
				ga:trackEvent(testCategory, testAction, badTestLabel :: any, testValue)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for value", function()
			expect(function()
				ga:trackEvent(testCategory, testAction, testLabel, badTestValue :: any)
			end).to.throw()

			expect(function()
				ga:trackEvent(testCategory, testAction, testLabel, -1)
			end).to.throw()
		end)
	end)
end
