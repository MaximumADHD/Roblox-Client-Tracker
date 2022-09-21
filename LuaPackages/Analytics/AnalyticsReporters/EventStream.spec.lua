return function()
	local EventStream = require(script.Parent.EventStream)

	local testArgs = {
		testKey = "testValue",
	}
	local testContext = "testContext"
	local testEvent = "testEventName"
	local badTestArgs = "hello"
	local badTestContext = {}
	local badTestEvent = {}

	local function isTableEqual(table1: { [any]: any }, table2: { [any]: any })
		if table1 == table2 then
			return true
		end

		if type(table1) ~= "table" then
			return false
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

	local function createDebugReportingService(): RbxAnalyticsService
		local function validateInputs(eventTarget, eventContext, eventName, additionalArgs)
			assert(eventTarget, "no value found for eventTarget")
			assert(eventContext == testContext, "unexpected value for eventContext : " .. eventContext)
			assert(eventName == testEvent, "unexpected value for eventName : " .. eventName)
			if additionalArgs and not isTableEqual(additionalArgs, {}) then
				assert(isTableEqual(additionalArgs, testArgs), "unexpected value for additionalArgs")
			end
		end

		local DebugReportingService = {}
		function DebugReportingService:SetRBXEvent(eventTarget, eventContext, eventName, additionalArgs)
			validateInputs(eventTarget, eventContext, eventName, additionalArgs)
		end
		function DebugReportingService:SetRBXEventStream(eventTarget, eventContext, eventName, additionalArgs)
			validateInputs(eventTarget, eventContext, eventName, additionalArgs)
		end
		function DebugReportingService:SendEventImmediately(eventTarget, eventContext, eventName, additionalArgs)
			validateInputs(eventTarget, eventContext, eventName, additionalArgs)
		end
		function DebugReportingService:SendEventDeferred(eventTarget, eventContext, eventName, additionalArgs)
			validateInputs(eventTarget, eventContext, eventName, additionalArgs)
		end
		function DebugReportingService:ReleaseRBXEventStream(eventTarget)
			assert(eventTarget, "no value found for eventTarget")
		end
		function DebugReportingService:UpdateHeartbeatObject(additionalArgs)
			if additionalArgs and not isTableEqual(additionalArgs, {}) then
				assert(isTableEqual(additionalArgs, testArgs), "unexpected value for additionalArgs")
			end
		end

		return DebugReportingService :: any
	end

	describe("new()", function()
		it("should construct with a Reporting Service", function()
			local es = EventStream.new(createDebugReportingService())
			expect(es).to.be.ok()
		end)

		it("should not allow construction without a Reporting Service", function()
			expect(function()
				EventStream.new(nil :: any)
			end).to.throw()
		end)
	end)

	describe("setEnabled()", function()
		it("should succeed with valid input", function()
			local reporter = EventStream.new(createDebugReportingService())
			reporter:setEnabled(false)
			reporter:setEnabled(true)
		end)
		it("should disable the reporter", function()
			local reporter = EventStream.new(createDebugReportingService())
			reporter:setEnabled(false)
			expect(function()
				reporter:updateHeartbeatObject()
			end).to.throw()
		end)
	end)

	describe("setRBXEvent()", function()
		it("should succeed with valid input", function()
			local es = EventStream.new(createDebugReportingService())
			es:setRBXEvent(testContext, testEvent, testArgs)
		end)

		it("should work when appropriately enabled / disabled", function()
			local es = EventStream.new(createDebugReportingService())

			expect(function()
				es:setEnabled(false)
				es:setRBXEvent(testContext, testEvent, testArgs)
			end).to.throw()

			es:setEnabled(true)
			es:setRBXEvent(testContext, testEvent, testArgs)
		end)

		it("should throw an error if it is missing a context", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEvent(nil :: any, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is missing an event name", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEvent(testContext, nil :: any, testArgs)
			end).to.throw()
		end)

		it("should succeed even if there aren't any additional args", function()
			local es = EventStream.new(createDebugReportingService())
			es:setRBXEvent(testContext, testEvent, nil :: any)
		end)

		it("should throw an error if it is given bad input for a context", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEvent(badTestContext :: any, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for a event", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEvent(testContext, badTestEvent :: any, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for additionalArgs", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEvent(testContext, testEvent, badTestArgs :: any)
			end).to.throw()
		end)
	end)

	describe("setRBXEventStream()", function()
		it("should succeed with valid input", function()
			local es = EventStream.new(createDebugReportingService())
			es:setRBXEventStream(testContext, testEvent, testArgs)
		end)

		it("should work when appropriately enabled / disabled", function()
			local es = EventStream.new(createDebugReportingService())

			expect(function()
				es:setEnabled(false)
				es:setRBXEventStream(testContext, testEvent, testArgs)
			end).to.throw()

			es:setEnabled(true)
			es:setRBXEventStream(testContext, testEvent, testArgs)
		end)

		it("should throw an error if it is missing a context", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEventStream(nil :: any, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is missing an event name", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEventStream(testContext, nil :: any, testArgs)
			end).to.throw()
		end)

		it("should succeed even if there aren't any additional args", function()
			local es = EventStream.new(createDebugReportingService())
			es:setRBXEventStream(testContext, testEvent, nil :: any)
		end)

		it("should throw an error if it is given bad input for a context", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEventStream(badTestContext :: any, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for a event", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEventStream(testContext, badTestEvent :: any, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for additionalArgs", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEventStream(testContext, testEvent, badTestArgs :: any)
			end).to.throw()
		end)
	end)

	describe("sendEventImmediately()", function()
		it("should succeed with valid input", function()
			local es = EventStream.new(createDebugReportingService())
			es:sendEventImmediately(testContext, testEvent, testArgs)
		end)

		it("should call without a fuss when enabled and throw when disabled", function()
			local es = EventStream.new(createDebugReportingService())

			expect(function()
				es:setEnabled(false)
				es:sendEventImmediately(testContext, testEvent, testArgs)
			end).to.throw()

			es:setEnabled(true)
			es:sendEventImmediately(testContext, testEvent, testArgs)
		end)

		it("should throw an error if it is missing a context", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:sendEventImmediately(nil :: any, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is missing an event name", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:sendEventImmediately(testContext, nil :: any, testArgs)
			end).to.throw()
		end)

		it("should succeed even if there aren't any additional args", function()
			local es = EventStream.new(createDebugReportingService())
			es:sendEventImmediately(testContext, testEvent, nil :: any)
		end)

		it("should throw an error if it is given bad input for a context", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:sendEventImmediately(badTestContext :: any, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for a event", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:sendEventImmediately(testContext, badTestEvent :: any, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for additionalArgs", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:sendEventImmediately(testContext, testEvent, badTestArgs :: any)
			end).to.throw()
		end)
	end)

	describe("sendEventDeferred()", function()
		it("should succeed with valid input", function()
			local es = EventStream.new(createDebugReportingService())
			es:sendEventDeferred(testContext, testEvent, testArgs)
		end)

		it("should call without a fuss when enabled and throw when disabled", function()
			local es = EventStream.new(createDebugReportingService())

			expect(function()
				es:setEnabled(false)
				es:sendEventDeferred(testContext, testEvent, testArgs)
			end).to.throw()

			es:setEnabled(true)
			es:sendEventDeferred(testContext, testEvent, testArgs)
		end)

		it("should throw an error if it is missing a context", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:sendEventDeferred(nil :: any, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is missing an event name", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:sendEventDeferred(testContext, nil :: any, testArgs)
			end).to.throw()
		end)

		it("should succeed even if there aren't any additional args", function()
			local es = EventStream.new(createDebugReportingService())
			es:sendEventDeferred(testContext, testEvent, nil :: any)
		end)

		it("should throw an error if it is given bad input for a context", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:sendEventDeferred(badTestContext :: any, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for a event", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:sendEventDeferred(testContext, badTestEvent :: any, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for additionalArgs", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:sendEventDeferred(testContext, testEvent, badTestArgs :: any)
			end).to.throw()
		end)
	end)

	describe("releaseRBXEventStream()", function()
		it("should succeed with valid input", function()
			local es = EventStream.new(createDebugReportingService())
			es:releaseRBXEventStream()
		end)

		it("should throw when disabled and succeed when enabled", function()
			local es = EventStream.new(createDebugReportingService())

			expect(function()
				es:setEnabled(false)
				es:releaseRBXEventStream()
			end).to.throw()

			es:setEnabled(true)
			es:releaseRBXEventStream()
		end)
	end)

	describe("updateHeartbeatObject()", function()
		it("should work when appropriately enabled / disabled", function()
			local es = EventStream.new(createDebugReportingService())

			expect(function()
				es:setEnabled(false)
				es:updateHeartbeatObject(testArgs)
			end).to.throw()

			expect(function()
				es:setEnabled(true)
				es:updateHeartbeatObject(testArgs)
			end).never.to.throw()
		end)

		it("should succeed with valid input", function()
			local es = EventStream.new(createDebugReportingService())
			es:updateHeartbeatObject(testArgs)
		end)

		it("should succeed even if there aren't any additional args", function()
			local es = EventStream.new(createDebugReportingService())
			es:updateHeartbeatObject(nil)
		end)

		it("should throw an error with invalid input", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:updateHeartbeatObject(badTestArgs :: any)
			end).to.throw()
		end)
	end)
end
