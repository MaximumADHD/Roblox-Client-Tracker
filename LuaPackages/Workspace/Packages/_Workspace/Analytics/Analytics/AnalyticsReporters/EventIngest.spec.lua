--!nonstrict
return function()
	local EventIngest = require(script.Parent.EventIngest)

	local Packages = script:FindFirstAncestor("Analytics").Parent
	local tutils = require(Packages.Dev.tutils)

	local testArgs = {
		testKey = "testValue",
	}
	local testContext = "testContext"
	local testEvent = "testEventName"
	local badTestArgs = "hello"
	local badTestContext = {}
	local badTestEvent = {}

	local function createDebugReportingService()
		local function validateInputs(eventTarget, eventContext, eventName, additionalArgs)
			assert(eventTarget, "no value found for eventTarget")
			assert(eventContext == testContext, "unexpected value for eventContext : " .. eventContext)
			assert(eventName == testEvent, "unexpected value for eventName : " .. eventName)
			if additionalArgs and not tutils.shallowEqual(additionalArgs, {}) then
				assert(tutils.shallowEqual(additionalArgs, testArgs), "unexpected value for additionalArgs")
			end
		end

		local DebugReportingService = {}
		function DebugReportingService:SetRBXEvent(eventTarget, eventContext, eventName, additionalArgs)
			validateInputs(eventTarget, eventContext, eventName, additionalArgs)
		end
		function DebugReportingService:SetRBXEventStream(eventTarget, eventContext, eventName, additionalArgs)
			validateInputs(eventTarget, eventContext, eventName, additionalArgs)
		end
		function DebugReportingService:SendEventDeferred(eventTarget, eventContext, eventName, additionalArgs)
			validateInputs(eventTarget, eventContext, eventName, additionalArgs)
		end
		function DebugReportingService:SendEventImmediately(eventTarget, eventContext, eventName, additionalArgs)
			validateInputs(eventTarget, eventContext, eventName, additionalArgs)
		end

		return DebugReportingService
	end

	describe("new()", function()
		it("should construct with a Reporting Service", function()
			local es = EventIngest.new(createDebugReportingService())
			expect(es).to.be.ok()
		end)

		it("should not allow construction without a Reporting Service", function()
			expect(function()
				EventIngest.new(nil)
			end).to.throw()
		end)
	end)

	describe("setRBXEvent()", function()
		it("should succeed with valid input", function()
			local es = EventIngest.new(createDebugReportingService())
			es:setRBXEvent(testContext, testEvent, nil)
			es:setRBXEvent(testContext, testEvent, testArgs)
		end)

		it("should throw an error if it is a bad context", function()
			local es = EventIngest.new(createDebugReportingService())
			expect(function()
				es:setRBXEvent(nil, testEvent, testArgs)
			end).to.throw()
			expect(function()
				es:setRBXEvent(badTestContext, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is a bad event name", function()
			local es = EventIngest.new(createDebugReportingService())
			expect(function()
				es:setRBXEvent(testContext, nil, testArgs)
			end).to.throw()
			expect(function()
				es:setRBXEvent(testContext, badTestEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for additionalArgs", function()
			local es = EventIngest.new(createDebugReportingService())
			expect(function()
				es:setRBXEvent(testContext, testEvent, badTestArgs)
			end).to.throw()
		end)
	end)

	describe("setRBXEventStream()", function()
		it("should succeed with valid input", function()
			local es = EventIngest.new(createDebugReportingService())
			es:setRBXEventStream(testContext, testEvent, nil)
			es:setRBXEventStream(testContext, testEvent, testArgs)
		end)

		it("should throw an error with bad context", function()
			local es = EventIngest.new(createDebugReportingService())
			expect(function()
				es:setRBXEventStream(nil, testEvent, testArgs)
			end).to.throw()
			expect(function()
				es:setRBXEventStream(badTestContext, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is a bad event name", function()
			local es = EventIngest.new(createDebugReportingService())
			expect(function()
				es:setRBXEventStream(testContext, nil, testArgs)
			end).to.throw()
			expect(function()
				es:setRBXEventStream(testContext, badTestEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for additionalArgs", function()
			local es = EventIngest.new(createDebugReportingService())
			expect(function()
				es:setRBXEventStream(testContext, testEvent, badTestArgs)
			end).to.throw()
		end)
	end)

	describe("sendEventDeferred()", function()
		it("should succeed with valid input", function()
			local es = EventIngest.new(createDebugReportingService())
			es:sendEventDeferred(testContext, testEvent, nil)
			es:sendEventDeferred(testContext, testEvent, testArgs)
		end)

		it("should throw an error with a bad context", function()
			local es = EventIngest.new(createDebugReportingService())
			expect(function()
				es:sendEventDeferred(nil, testEvent, testArgs)
			end).to.throw()
			expect(function()
				es:sendEventDeferred(badTestContext, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error with a bad event name", function()
			local es = EventIngest.new(createDebugReportingService())
			expect(function()
				es:sendEventDeferred(testContext, nil, testArgs)
			end).to.throw()
			expect(function()
				es:sendEventDeferred(testContext, badTestEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for additionalArgs", function()
			local es = EventIngest.new(createDebugReportingService())
			expect(function()
				es:sendEventDeferred(testContext, testEvent, badTestArgs)
			end).to.throw()
		end)
	end)

	describe("sendEventImmediately()", function()
		it("should succeed with valid input", function()
			local es = EventIngest.new(createDebugReportingService())
			es:sendEventImmediately(testContext, testEvent, nil)
			es:sendEventImmediately(testContext, testEvent, testArgs)
		end)

		it("should throw an error with a bad context", function()
			local es = EventIngest.new(createDebugReportingService())
			expect(function()
				es:sendEventImmediately(nil, testEvent, testArgs)
			end).to.throw()
			expect(function()
				es:sendEventImmediately(badTestContext, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error with a bad event name", function()
			local es = EventIngest.new(createDebugReportingService())
			expect(function()
				es:sendEventImmediately(testContext, nil, testArgs)
			end).to.throw()
			expect(function()
				es:sendEventImmediately(testContext, badTestEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for additionalArgs", function()
			local es = EventIngest.new(createDebugReportingService())
			expect(function()
				es:sendEventImmediately(testContext, testEvent, badTestArgs)
			end).to.throw()
		end)
	end)
end
