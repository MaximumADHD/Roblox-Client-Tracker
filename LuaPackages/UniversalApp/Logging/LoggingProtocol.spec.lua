return function()
	local MockMessageBus = {}
	MockMessageBus.__index = MockMessageBus

	local MockMessageBusSpy = {}

	function MockMessageBus.call(desc: FunctionDescriptor, params: any): any
		assert(desc.validateParams(params))
		-- Simulate the basic behavior of a call to the protocol
		if desc.fid == "Logging.getTimestamp" then
			return 5e+20
		elseif desc.fid == "Logging.logEventWithTimestamp" then
			for key, value in pairs(params) do
				MockMessageBusSpy[key] = value
			end
			return {}
		elseif desc.fid == "Logging.sendRobloxTelemetry" then
			for key, value in pairs(params) do
				MockMessageBusSpy[key] = value
			end
			return {}
		else
			return {}
		end
	end

	local CorePackages = game:GetService("CorePackages")
	local LoggingProtocol = require(CorePackages.UniversalApp.Logging.LoggingProtocol)

	local EnableLoggingProtocolTelemetryEngineFeature = game:GetEngineFeature("EnableLoggingProtocolTelemetry")

	describe("LoggingProtocol", function()
		beforeEach(function(context)
			context.LoggingProtocol = LoggingProtocol.new(MockMessageBus)
		end)

		afterEach(function()
			MockMessageBusSpy = {}
		end)

		describe("logEventWithTimestamp", function()
			it("should throw if missing timestamp", function(context)
				expect(function()
					return context.LoggingProtocol:logEventWithTimestamp("TestStartEvent")
				end).to.throw()
			end)

			it("should log event with minimal parameters", function(context)
				local success, result = pcall(function()
					return context.LoggingProtocol:logEventWithTimestamp("TestStartEvent", 1000)
				end)

				expect(success).to.equal(true)
				expect(MockMessageBusSpy.eventName).to.equal("TestStartEvent")
				expect(MockMessageBusSpy.timestamp).to.equal(1000)
			end)

			it("should log event with all valid parameters", function(context)
				local success, result = pcall(function()
					return context.LoggingProtocol:logEventWithTimestamp(
						"TestStartEvent",
						15,
						{
							throttlingPercentage = 500,
							isUA = true,
							referralSource = "GameDetails",
						}
					)
				end)

				expect(success).to.equal(true)
				expect(MockMessageBusSpy.timestamp).to.equal(15)
				expect(MockMessageBusSpy.metadata).to.be.a("table")
				expect(MockMessageBusSpy.metadata.throttlingPercentage).to.equal(500)
				expect(MockMessageBusSpy.metadata.isUA).to.equal(true)
				expect(MockMessageBusSpy.metadata.referralSource).to.equal("GameDetails")
			end)
		end)

		describe("logEvent", function()
			it("should log event with minimal parameters", function(context)
				local success, result = pcall(function()
					return context.LoggingProtocol:logEvent("TestStartEvent")
				end)

				expect(success).to.equal(true)
				expect(MockMessageBusSpy.eventName).to.equal("TestStartEvent")
				expect(MockMessageBusSpy.timestamp).to.equal(0)
			end)
		end)

		describe("logEventOnce", function()
			it("should log same event only once", function(context)
				local success, result = pcall(function()
					return context.LoggingProtocol:logEventOnce("event1")
				end)

				expect(success).to.equal(true)
				expect(MockMessageBusSpy.eventName).to.equal("event1")
				expect(MockMessageBusSpy.timestamp).to.equal(0)

				MockMessageBusSpy = {}
				local success, result = pcall(function()
					return context.LoggingProtocol:logEventOnce("event1")
				end)

				expect(success).to.equal(true)
				expect(MockMessageBusSpy["eventName"]).to.equal(nil)
			end)
		end)

		describe("getTimestamp", function()
			it("should return a number for `getTimestamp()`", function(context)
				local success, result = pcall(function()
					return context.LoggingProtocol:getTimestamp()
				end)

				expect(success).to.equal(true)
				expect(result).to.equal(5e+20)
			end)
		end)

		describe("logRobloxTelemetryEvent", function()
			if not EnableLoggingProtocolTelemetryEngineFeature then
				return
			end

			local minimalConfig = {
				eventName = "TestEventPointsOnly",
				backends = { "Points" },
				throttlingPercentage = 500,
			}

			local fullConfig = {
				eventName = "TestEventFullConfig",
				backends = { "Points", "EventIngest" },
				throttlingPercentage = 500,
				lastUpdated = { 22, 4, 19 },
				description = [[Logging Protocol unit test event]],
				links = "doc_link",
			}

			it("should send Telemetry event with minimal parameters", function(context)
				local success, result = pcall(function()
					return context.LoggingProtocol:logRobloxTelemetryEvent(minimalConfig)
				end)

				expect(success).to.equal(true)
				expect(MockMessageBusSpy.eventType).to.equal("RobloxTelemetry")
				expect(MockMessageBusSpy.eventName).to.equal("TestEventPointsOnly")
			end)

			it("should send Telemetry event with all valid parameters", function(context)
				local standardizedFields = { "addSessionId" }
				local customFields = {
					key1 = "Hello",
					key2 = true,
					key3 = 0,
				}

				local success, result = pcall(function()
					return context.LoggingProtocol:logRobloxTelemetryEvent(fullConfig, standardizedFields, customFields)
				end)

				expect(success).to.equal(true)
				expect(MockMessageBusSpy.eventType).to.equal("RobloxTelemetry")
				expect(MockMessageBusSpy.eventName).to.equal("TestEventFullConfig")
				expect(MockMessageBusSpy.standardizedFields.addSessionId).to.equal(true)
				expect(MockMessageBusSpy.customFields).to.equal(customFields)
			end)
		end)
	end)
end
