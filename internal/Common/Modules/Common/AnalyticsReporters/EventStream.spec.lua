return function()

	local EventStream = require(script.Parent.EventStream)

	-- set up some debug values
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

	-- helper functions
	local function isTableEqual(table1, table2)
		-- quick escape check
		-- should also capture the case of table1 and 2 being nil
		if table1 == table2 then
			return true
		end

		-- check for type equality
		if type(table1) ~= "table" then
			return false
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

	-- debug and testing services
	local function createDebugReportingService()
		local function validateInputs(eventTarget, eventContext, eventName, additionalArgs)
			if eventTarget == nil then
				error("no value found for eventTarget")
			end
			if eventContext ~= testContext then
				error("unexpected value for eventContext" .. eventContext)
			end
			if eventName ~= testEvent then
				error("unexpected value for eventName" .. eventName)
			end

			if isTableEqual(additionalArgs, {}) == false then
				if (isTableEqual(additionalArgs, testArgs) == false)
					then error("unexpected value for additionalArgs")
				end
			end
		end


		local DebugReportingService = {}
		function DebugReportingService:SetRBXEvent(eventTarget, eventContext, eventName, additionalArgs)
			validateInputs(eventTarget, eventContext, eventName, additionalArgs)
		end
		function DebugReportingService:SetRBXEventStream(eventTarget, eventContext, eventName, additionalArgs)
			validateInputs(eventTarget, eventContext, eventName, additionalArgs)
		end
		function DebugReportingService:UpdateHeartbeatObject(additionalArgs)
			if (additionalArgs ~= nil) then
				if (isTableEqual(additionalArgs, testArgs) == false) then
					error("unexpected value for additionalArgs")
				end
			end
		end

		return DebugReportingService
	end

	-- override the SetRBXEvent and SetRBXEventStream functions to better test the reporting of buttons
	local function createButtonReportingService()
		local function validateInputs(eventTarget, eventContext, eventName, additionalArgs)
			if eventTarget == nil then
				error("no value found for eventTarget")
			end
			if eventContext ~= testContext then
				error("unexpected value for eventContext : " .. eventContext)
			end
			if eventName ~= "buttonClick" then
				print(eventName .. " = " .. "buttonClick : ", eventName)
				error("unexpected value for eventName : " .. eventName)
			end
			if additionalArgs["btn"] ~= testButton then
				error("unexpected value for additionalArgs[btn] : " .. additionalArgs["btn"])
			end
			if additionalArgs["cstm"] ~= nil then
				if additionalArgs["cstm"] ~= testExtraData then
					error("unexpected value for additionalArgs[cstm] : " .. additionalArgs["cstm"])
				end
			end
		end

		local buttonReportingService = createDebugReportingService()
		function buttonReportingService:SetRBXEvent(target, context, event, additionalArgs)
			validateInputs(target, context, event, additionalArgs)
		end
		function buttonReportingService:SetRBXEventStream(target, context, event, additionalArgs)
			validateInputs(target, context, event, additionalArgs)
		end

		return buttonReportingService
	end

	-- override the SetRBXEvent and SetRBXEventStream functions to better test the reporting of form validations
	local function createFormReportingService()
		local function validateInputs(eventTarget, eventContext, eventName, additionalArgs)
			if eventTarget == nil then
				error("no value found for eventTarget")
			end
			if eventContext ~= testContext then
				error("unexpected value for eventContext" .. eventContext)
			end
			if eventName ~= "formFieldValidation" then
				error("unexpected value for eventName" .. eventName)
			end
			if additionalArgs["field"] ~= testField then
				error("unexpected value for additionalArgs[field]" .. additionalArgs["field"])
			end
			if additionalArgs["error"] ~= testErrorText then
				error("unexpected value for additionalArgs[error]" .. additionalArgs["error"])
			end
		end

		local formReportingService = createDebugReportingService()
		function formReportingService:SetRBXEvent(target, context, event, additionalArgs)
			validateInputs(target, context, event, additionalArgs)
		end
		function formReportingService:SetRBXEventStream(target, context, event, additionalArgs)
			validateInputs(target, context, event, additionalArgs)
		end

		return formReportingService
	end

	-- override the SetRBXEvent and SetRBXEventStream functions to better test the reporting of screen loads
	local function createScreenReportingService()
		local function validateInputs(eventTarget, eventContext, eventName, additionalArgs)
			if eventTarget == nil then
				error("no value found for eventTarget")
			end
			if eventContext ~= testContext then
				error("unexpected value for eventContext" .. eventContext)
			end
			if eventName ~= "screenLoaded" then
				error("unexpected value for eventName" .. eventName)
			end
			if isTableEqual(additionalArgs, {}) == false then
				error("unexpected value for additionalArgs")
			end
		end

		local screenReportingService = createDebugReportingService()
		function screenReportingService:SetRBXEvent(target, context, event, additionalArgs)
			validateInputs(target, context, event, additionalArgs)
		end
		function screenReportingService:SetRBXEventStream(target, context, event, additionalArgs)
			validateInputs(target, context, event, additionalArgs)
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


	describe("SetRBXEvent()", function()
		it("should throw an error if called from the EventStream module object", function()
			expect(function()
				EventStream:SetRBXEvent(testContext, testEvent, testArgs)
			end).to.throw()
		end)

		it("should succeed with valid input", function()
			local es = EventStream.new(createDebugReportingService())
			es:SetRBXEvent(testContext, testEvent, testArgs)
		end)

		it("should work when appropriately enabled / disabled", function()
			local es = EventStream.new(createDebugReportingService())

			expect(function()
				es:SetEnabled(false)
				es:SetRBXEvent(testContext, testEvent, testArgs)
			end).to.throw()

			es:SetEnabled(true)
			es:SetRBXEvent(testContext, testEvent, testArgs)
		end)

		it("should throw an error if it is missing a context", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:SetRBXEvent(nil, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is missing an event name", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:SetRBXEvent(testContext, nil, testArgs)
			end).to.throw()
		end)

		it("should succeed even if there aren't any additional args", function()
			local es = EventStream.new(createDebugReportingService())
			es:SetRBXEvent(testContext, testEvent, nil)
		end)

		it("should throw an error if it is given bad input for a context", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:SetRBXEvent(badTestContext, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for a event", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:SetRBXEvent(testContext, badTestEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for additionalArgs", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:SetRBXEvent(testContext, testEvent, badTestArgs)
			end).to.throw()
		end)
	end)


	describe("SetRBXEventStream()", function()
		it("should throw an error if called from the EventStream module object", function()
			expect(function()
				EventStream:SetRBXEventStream(testContext, testEvent, testArgs)
			end).to.throw()
		end)

		it("should succeed with valid input", function()
			local es = EventStream.new(createDebugReportingService())
			es:SetRBXEventStream(testContext, testEvent, testArgs)
		end)

		it("should work when appropriately enabled / disabled", function()
			local es = EventStream.new(createDebugReportingService())

			expect(function()
				es:SetEnabled(false)
				es:SetRBXEventStream(testContext, testEvent, testArgs)
			end).to.throw()

			es:SetEnabled(true)
			es:SetRBXEventStream(testContext, testEvent, testArgs)
		end)

		it("should throw an error if it is missing a context", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:SetRBXEventStream(nil, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is missing an event name", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:SetRBXEventStream(testContext, nil, testArgs)
			end).to.throw()
		end)

		it("should succeed even if there aren't any additional args", function()
			local es = EventStream.new(createDebugReportingService())
			es:SetRBXEventStream(testContext, testEvent, nil)
		end)

		it("should throw an error if it is given bad input for a context", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:SetRBXEventStream(badTestContext, testEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for a event", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:SetRBXEventStream(testContext, badTestEvent, testArgs)
			end).to.throw()
		end)

		it("should throw an error if it is given bad input for additionalArgs", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:SetRBXEventStream(testContext, testEvent, badTestArgs)
			end).to.throw()
		end)
	end)


	describe("UpdateHeartbeatObject()", function()
		it("should throw an error if called from the EventStream module object", function()
			expect(function()
				EventStream:UpdateHeartbeatObject(testArgs)
			end).to.throw()
		end)

		it("should work when appropriately enabled / disabled", function()
			local es = EventStream.new(createDebugReportingService())

			expect(function()
				es:SetEnabled(false)
				es:UpdateHeartbeatObject(testArgs)
			end).to.throw()

			expect(function()
				es:SetEnabled(true)
				es:UpdateHeartbeatObject(testArgs)
			end).never.to.throw()
		end)

		it("should succeed with valid input", function()
			local es = EventStream.new(createDebugReportingService())
			es:UpdateHeartbeatObject(testArgs)
		end)

		it("should succeed even if there aren't any additional args", function()
			local es = EventStream.new(createDebugReportingService())
			es:UpdateHeartbeatObject(nil)
		end)

		it("should throw an error with invalid input", function()
			local es = EventStream.new(createDebugReportingService())
			expect(function()
				es:UpdateHeartbeatObject(badTestArgs)
			end).to.throw()
		end)
	end)


	describe("ReportButtonPressed()", function()
		it("should throw an error if called from the EventStream module object", function()
			expect(function()
				EventStream:ReportButtonPressed(testContext, testButton, testExtraData)
			end).to.throw()
		end)

		it("should work when appropriately enabled / disabled", function()
			local es = EventStream.new(createButtonReportingService())

			expect(function()
				es:SetEnabled(false)
				es:ReportButtonPressed(testContext, testButton, testExtraData)
			end).to.throw()

			es:SetEnabled(true)
			es:ReportButtonPressed(testContext, testButton, testExtraData)
		end)

		it("should succeed with valid input", function()
			local es = EventStream.new(createButtonReportingService())
			es:ReportButtonPressed(testContext, testButton, testExtraData)
		end)

		it("should throw an error if it is missing a context", function()
			local es = EventStream.new(createButtonReportingService())
			expect(function()
				es:ReportButtonPressed(nil, testButton, testExtraData)
			end).to.throw()
		end)

		it("should throw an error if it is missing a button name", function()
			local es = EventStream.new(createButtonReportingService())
			expect(function()
				es:ReportButtonPressed(testContext, nil, testExtraData)
			end).to.throw()
		end)

		it("should succeed even without extra data", function()
			local es = EventStream.new(createButtonReportingService())
			es:ReportButtonPressed(testContext, testButton, nil)
		end)

		it("should throw an error if it is given invalid input for a context", function()
			local es = EventStream.new(createButtonReportingService())
			expect(function()
				es:ReportButtonPressed(badTestContext, testButton, testExtraData)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for a button name", function()
			local es = EventStream.new(createButtonReportingService())
			expect(function()
				es:ReportButtonPressed(testContext, badTestButton, testExtraData)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for extra data", function()
			local es = EventStream.new(createButtonReportingService())
			expect(function()
				es:ReportButtonPressed(testContext, testButton, badTestExtraData)
			end).to.throw()
		end)
	end)


	describe("ReportFormFieldValidated()", function()
		it("should throw an error if called from the EventStream module object", function()
			expect(function()
				EventStream:ReportFormFieldValidated(testContext, testField, testErrorText)
			end).to.throw()
		end)

		it("should work when appropriately enabled / disabled", function()
			local es = EventStream.new(createFormReportingService())

			expect(function()
				es:SetEnabled(false)
				es:ReportFormFieldValidated(testContext, testField, testErrorText)
			end).to.throw()

			es:SetEnabled(true)
			es:ReportFormFieldValidated(testContext, testField, testErrorText)
		end)

		it("should succeed with valid input", function()
			local es = EventStream.new(createFormReportingService())
			es:ReportFormFieldValidated(testContext, testField, testErrorText)
		end)

		it("should throw an error if it is missing a context", function()
			local es = EventStream.new(createFormReportingService())
			expect(function()
				es:ReportFormFieldValidated(nil, testField, testErrorText)
			end).to.throw()
		end)

		it("should throw an error if it is missing a field name", function()
			local es = EventStream.new(createFormReportingService())
			expect(function()
				es:ReportFormFieldValidated(testContext, nil, testErrorText)
			end).to.throw()
		end)

		it("should throw an error if it is missing an error text", function()
			local es = EventStream.new(createFormReportingService())
			expect(function()
				es:ReportFormFieldValidated(testContext, testField, nil)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for a context", function()
			local es = EventStream.new(createFormReportingService())
			expect(function()
				es:ReportFormFieldValidated(badTestContext, testField, testErrorText)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for a button name", function()
			local es = EventStream.new(createFormReportingService())
			expect(function()
				es:ReportFormFieldValidated(testContext, badTestField, testErrorText)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for extra data", function()
			local es = EventStream.new(createFormReportingService())
			expect(function()
				es:ReportFormFieldValidated(testContext, testField, badTestErrorText)
			end).to.throw()
		end)
	end)


	describe("ReportScreenLoaded()", function()
		it("should throw an error if called from the EventStream module object", function()
			expect(function()
				EventStream:ReportScreenLoaded(testContext)
			end).to.throw()
		end)

		it("should work when appropriately enabled / disabled", function()
			local es = EventStream.new(createScreenReportingService())

			expect(function()
				es:SetEnabled(false)
				es:ReportScreenLoaded(testContext)
			end).to.throw()

			es:SetEnabled(true)
			es:ReportScreenLoaded(testContext)
		end)

		it("should succeed with valid input", function()
			local es = EventStream.new(createScreenReportingService())
			es:ReportScreenLoaded(testContext)
		end)

		it("should throw an error if it is missing a screen name", function()
			local es = EventStream.new(createScreenReportingService())
			expect(function()
				es:ReportScreenLoaded(nil)
			end).to.throw()
		end)

		it("should throw an error if it is given invalid input for a screen name", function()
			local es = EventStream.new(createScreenReportingService())
			expect(function()
				es:ReportScreenLoaded(badTestContext)
			end).to.throw()
		end)
	end)


	describe("Inheritted Functions", function()
		it("SetReporter() should succeed with valid input", function()
			local reporter = EventStream.new(createDebugReportingService())
			reporter:SetReporter(createDebugReportingService())
		end)

		it("SetEnabled() should succeed with valid input", function()
			local reporter = EventStream.new(createDebugReportingService())
			reporter:SetEnabled(false)
			reporter:SetEnabled(true)
		end)

		it("CheckBadCallingConvention() should do nothing when called appropriately", function()
			local reporter = EventStream.new(createDebugReportingService())
			reporter:CheckBadCallingConvention("someFunction")
		end)

		it("CheckForTypeError() should do nothing when called appropriately", function()
			local reporter = EventStream.new(createDebugReportingService())
			reporter:CheckForTypeError("someParameter", "string", "some value")
		end)

		it("CheckDisabledModule() should do nothing when called appropriately", function()
			local reporter = EventStream.new(createDebugReportingService())
			reporter:CheckDisabledModule("someFunction")
		end)
	end)
end