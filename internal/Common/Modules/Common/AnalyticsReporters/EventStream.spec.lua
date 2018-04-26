return function()

	local EventStream = require(script.Parent.EventStream)

	local testArgs = {
		testKey = "testValue"
	}
	local testButton = "testButtonName"
	local testContext = "testContext"
	local testErrorText = "testErrorText"
	local testEvent = "testEventName"
	local testExtraData = "testExtraData"
	local testField = "testFieldName"
	local badTestArgs = "hello"
	local badTestButton = 2345
	local badTestContext = {}
	local badTestErrorText = 1781
	local badTestEvent = {}
	local badTestExtraData = 124141
	local badTestField = 12313


	local function isTableEqual(table1, table2)
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

	local function createDebugReportingService()
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
		function DebugReportingService:ReleaseRBXEventStream(eventTarget)
			assert(eventTarget, "no value found for eventTarget")
		end
		function DebugReportingService:UpdateHeartbeatObject(additionalArgs)
			if additionalArgs and not isTableEqual(additionalArgs, {}) then
				assert(isTableEqual(additionalArgs, testArgs), "unexpected value for additionalArgs")
			end
		end

		return DebugReportingService
	end

	local function createButtonReportingService()
		local function validateInputs(eventTarget, eventContext, eventName, additionalArgs)
			local btn = additionalArgs["btn"]
			local cstm = additionalArgs["cstm"]

			assert(eventTarget, "no value found for eventTarget")
			assert(eventContext == testContext, "unexpected value for eventContext : " .. eventContext)
			assert(eventName == "buttonClick", "unexpected value for eventName : " .. eventName)
			assert(btn == testButton, "unexpected value for additionalArgs[btn] : " .. btn)
			if cstm then
				assert(cstm == testExtraData, "unexpected value for additionalArgs[cstm] : " .. cstm)
			end
		end

		-- override the SetRBXEvent and SetRBXEventStream functions to better test the reporting of buttons
		local buttonReportingService = {}
		function buttonReportingService:SetRBXEvent(target, context, event, additionalArgs)
			validateInputs(target, context, event, additionalArgs)
		end
		function buttonReportingService:SetRBXEventStream(target, context, event, additionalArgs)
			validateInputs(target, context, event, additionalArgs)
		end
		function buttonReportingService:ReleaseRBXEventStream(eventTarget)
			assert(eventTarget, "no value found for eventTarget")
		end
		return buttonReportingService
	end

	local function createFormReportingService()
		local function validateInputs(eventTarget, eventContext, eventName, additionalArgs)
			local field = additionalArgs["field"]
			local err = additionalArgs["error"]

			assert(eventTarget, "no value found for eventTarget")
			assert(eventContext == testContext, "unexpected value for eventContext : " .. eventContext)
			assert(eventName == "formFieldValidation", "unexpected value for eventName : " .. eventName)
			assert(field == testField, "unexpected value for additionalArgs[field] : " .. field)
			assert(err == testErrorText, "unexpected value for additionalArgs[error] : " .. err)
		end

		-- override the SetRBXEvent and SetRBXEventStream functions to better test the reporting of form validations
		local formReportingService = createDebugReportingService()
		function formReportingService:SetRBXEvent(target, context, event, additionalArgs)
			validateInputs(target, context, event, additionalArgs)
		end
		function formReportingService:SetRBXEventStream(target, context, event, additionalArgs)
			validateInputs(target, context, event, additionalArgs)
		end
		function formReportingService:ReleaseRBXEventStream(eventTarget)
			assert(eventTarget, "no value found for eventTarget")
		end

		return formReportingService
	end

	local function createScreenReportingService()
		local function validateInputs(eventTarget, eventContext, eventName, additionalArgs)
			assert(eventTarget, "no value found for eventTarget")
			assert(eventContext == testContext, "unexpected value for eventContext : " .. eventContext)
			assert(eventName == "screenLoaded", "unexpected value for eventName : " .. eventName)
			assert(isTableEqual(additionalArgs, {}), "unexpected value for additionalArgs")
		end

		-- override the SetRBXEvent and SetRBXEventStream functions to better test the reporting of screen loads
		local screenReportingService = createDebugReportingService()
		function screenReportingService:SetRBXEvent(target, context, event, additionalArgs)
			validateInputs(target, context, event, additionalArgs)
		end
		function screenReportingService:SetRBXEventStream(target, context, event, additionalArgs)
			validateInputs(target, context, event, additionalArgs)
		end
		function screenReportingService:ReleaseRBXEventStream(eventTarget)
			assert(eventTarget, "no value found for eventTarget")
		end
		return screenReportingService
	end



	describe("new()", function()
		it("should construct with a Reporting Service", function()
			local es = EventStream.new(createDebugReportingService())
			expect(es).to.be.ok()
		end)

		it("should not allow construction without a Reporting Service", function()
			expect(function()
				EventStream.new(nil)
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
				es:setRBXEvent(nil, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is missing an event name", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEvent(testContext, nil, testArgs)
			end).to.throw()
		end)

		it("should succeed even if there aren't any additional args", function()
			local es = EventStream.new(createDebugReportingService())
			es:setRBXEvent(testContext, testEvent, nil)
		end)

		it("should throw an error if it is given bad input for a context", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEvent(badTestContext, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for a event", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEvent(testContext, badTestEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for additionalArgs", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEvent(testContext, testEvent, badTestArgs)
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
				es:setRBXEventStream(nil, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is missing an event name", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEventStream(testContext, nil, testArgs)
			end).to.throw()
		end)

		it("should succeed even if there aren't any additional args", function()
			local es = EventStream.new(createDebugReportingService())
			es:setRBXEventStream(testContext, testEvent, nil)
		end)

		it("should throw an error if it is given bad input for a context", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEventStream(badTestContext, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for a event", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEventStream(testContext, badTestEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for additionalArgs", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:setRBXEventStream(testContext, testEvent, badTestArgs)
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
				es:updateHeartbeatObject(badTestArgs)
			end).to.throw()
		end)
	end)

	describe("reportButtonPressed()", function()
		it("should work when appropriately enabled / disabled", function()
			local es = EventStream.new(createButtonReportingService())

			expect(function()
				es:setEnabled(false)
				es:reportButtonPressed(testContext, testButton, testExtraData)
			end).to.throw()

			es:setEnabled(true)
			es:reportButtonPressed(testContext, testButton, testExtraData)
		end)

		it("should succeed with valid input", function()
			local es = EventStream.new(createButtonReportingService())
			es:reportButtonPressed(testContext, testButton, testExtraData)
		end)

		it("should throw an error if it is missing a context", function()
			local es = EventStream.new(createButtonReportingService())
			expect(function()
				es:reportButtonPressed(nil, testButton, testExtraData)
			end).to.throw()
		end)

		it("should throw an error if it is missing a button name", function()
			local es = EventStream.new(createButtonReportingService())
			expect(function()
				es:reportButtonPressed(testContext, nil, testExtraData)
			end).to.throw()
		end)

		it("should succeed even without extra data", function()
			local es = EventStream.new(createButtonReportingService())
			es:reportButtonPressed(testContext, testButton, nil)
		end)

		it("should throw an error if it is given invalid input for a context", function()
			local es = EventStream.new(createButtonReportingService())
			expect(function()
				es:reportButtonPressed(badTestContext, testButton, testExtraData)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for a button name", function()
			local es = EventStream.new(createButtonReportingService())
			expect(function()
				es:reportButtonPressed(testContext, badTestButton, testExtraData)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for extra data", function()
			local es = EventStream.new(createButtonReportingService())
			expect(function()
				es:reportButtonPressed(testContext, testButton, badTestExtraData)
			end).to.throw()
		end)
	end)

	describe("reportFormFieldValidated()", function()
		it("should work when appropriately enabled / disabled", function()
			local es = EventStream.new(createFormReportingService())

			expect(function()
				es:setEnabled(false)
				es:reportFormFieldValidated(testContext, testField, testErrorText)
			end).to.throw()

			es:setEnabled(true)
			es:reportFormFieldValidated(testContext, testField, testErrorText)
		end)

		it("should succeed with valid input", function()
			local es = EventStream.new(createFormReportingService())
			es:reportFormFieldValidated(testContext, testField, testErrorText)
		end)

		it("should throw an error if it is missing a context", function()
			local es = EventStream.new(createFormReportingService())
			expect(function()
				es:reportFormFieldValidated(nil, testField, testErrorText)
			end).to.throw()
		end)

		it("should throw an error if it is missing a field name", function()
			local es = EventStream.new(createFormReportingService())
			expect(function()
				es:reportFormFieldValidated(testContext, nil, testErrorText)
			end).to.throw()
		end)

		it("should throw an error if it is missing an error text", function()
			local es = EventStream.new(createFormReportingService())
			expect(function()
				es:reportFormFieldValidated(testContext, testField, nil)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for a context", function()
			local es = EventStream.new(createFormReportingService())
			expect(function()
				es:reportFormFieldValidated(badTestContext, testField, testErrorText)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for a button name", function()
			local es = EventStream.new(createFormReportingService())
			expect(function()
				es:reportFormFieldValidated(testContext, badTestField, testErrorText)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for extra data", function()
			local es = EventStream.new(createFormReportingService())
			expect(function()
				es:reportFormFieldValidated(testContext, testField, badTestErrorText)
			end).to.throw()
		end)
	end)

	describe("reportScreenLoaded()", function()
		it("should work when appropriately enabled / disabled", function()
			local es = EventStream.new(createScreenReportingService())

			expect(function()
				es:setEnabled(false)
				es:reportScreenLoaded(testContext)
			end).to.throw()

			es:setEnabled(true)
			es:reportScreenLoaded(testContext)
		end)

		it("should succeed with valid input", function()
			local es = EventStream.new(createScreenReportingService())
			es:reportScreenLoaded(testContext)
		end)

		it("should throw an error if it is missing a screen name", function()
			local es = EventStream.new(createScreenReportingService())
			expect(function()
				es:reportScreenLoaded(nil)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for a screen name", function()
			local es = EventStream.new(createScreenReportingService())
			expect(function()
				es:reportScreenLoaded(badTestContext)
			end).to.throw()
		end)
	end)
end