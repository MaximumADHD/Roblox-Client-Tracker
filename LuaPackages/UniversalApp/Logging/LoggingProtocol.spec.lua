--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect
	local jest = JestGlobals.jest

	local LoggingProtocol = require(CorePackages.UniversalApp.Logging.LoggingProtocol)

	local Types = require(CorePackages.Workspace.Packages.MessageBus)

	local MockMessageBus = {}
	MockMessageBus.__index = MockMessageBus

	local MockMessageBusSpy = {}
	local mockLogEventFn = jest.fn()

	function MockMessageBus.call(desc: Types.FunctionDescriptor, params: any): any
		assert(desc.validateParams(params))
		mockLogEventFn = jest.fn()
		-- Simulate the basic behavior of a call to the protocol
		if desc.fid == "Logging.getTimestamp" then
			return 5e+20
		elseif desc.fid == "Logging.logEventWithTimestamp" then
			for key, value in pairs(params) do
				MockMessageBusSpy[key] = value
			end
			return {}
		end

		for key, value in pairs(params) do
			MockMessageBusSpy[key] = value
		end

		mockLogEventFn.mockReturnValue({})
		return mockLogEventFn(params)
	end

	describe("LoggingProtocol", function()
		beforeEach(function(context)
			context.LoggingProtocol = LoggingProtocol.new((MockMessageBus :: any) :: Types.MessageBus)
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

				jestExpect(success).toBe(true)
				jestExpect(mockLogEventFn).toHaveBeenCalledTimes(1)
				jestExpect(MockMessageBusSpy.eventType).toBe("RobloxTelemetry")
				jestExpect(MockMessageBusSpy.config.eventName).toBe("TestEventPointsOnly")
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

				jestExpect(success).toBe(true)
				jestExpect(mockLogEventFn).toHaveBeenCalledTimes(1)
				jestExpect(MockMessageBusSpy.eventType).toBe("RobloxTelemetry")
				jestExpect(MockMessageBusSpy.config.eventName).toBe("TestEventFullConfig")
				jestExpect(MockMessageBusSpy.data.standardizedFields).toContain("addSessionId")
				jestExpect(MockMessageBusSpy.data.customFields).toEqual({
					key1 = "Hello",
					key2 = true,
					key3 = 0,
				})
			end)

			it("should only use eventContext field if backend is EventIngest", function(context)
				local standardizedFields = nil
				local customFields = {
					key1 = "Hello",
					key2 = true,
					key3 = 0,
				}
				local eventContext = "myContext"

				local success, result = pcall(function()
					return context.LoggingProtocol:logRobloxTelemetryEvent(fullConfig, standardizedFields, customFields, eventContext)
				end)

				jestExpect(success).toBe(true)
				jestExpect(mockLogEventFn).toHaveBeenCalledTimes(1)
				jestExpect(MockMessageBusSpy.eventType).toBe("RobloxTelemetry")
				jestExpect(MockMessageBusSpy.config.eventName).toBe("TestEventFullConfig")
				jestExpect(MockMessageBusSpy.data.eventContext).toBe(eventContext)
				jestExpect(MockMessageBusSpy.config.backends).toContain("EventIngest")
			end)
		end)

		describe("logEphemeralCounterEvent", function()
			local minimalConfig = {
				eventName = "TestEventEphemeralCounter",
				backends = { "EphemeralCounter" },
			}

			local fullConfig = {
				eventName = "TestEventFullConfig",
				backends = { "EphemeralCounter" },
				lastUpdated = { 22, 8, 4 },
				description = [[EphemeralCounter unit test event]],
				links = "doc_link",
			}

			it("should send Telemetry event with minimal parameters", function(context)
				context.LoggingProtocol:logEphemeralCounterEvent(minimalConfig)

				jestExpect(mockLogEventFn).toHaveBeenCalledTimes(1)
				jestExpect(mockLogEventFn).toHaveBeenCalledWith({
					eventType = "EphemeralCounter",
					config = minimalConfig,
				})
			end)

			it("should send Telemetry event with all valid parameters", function(context)
				context.LoggingProtocol:logEphemeralCounterEvent(fullConfig, 10)

				jestExpect(mockLogEventFn).toHaveBeenCalledTimes(1)
				jestExpect(mockLogEventFn).toHaveBeenCalledWith({
					eventType = "EphemeralCounter",
					config = fullConfig,
					data = {
						incrementValue = 10,
					}
				})
			end)
		end)

		describe("logEphemeralStatEvent", function()
			local config = {
				eventName = "TestEventEphemeralStat",
				backends = { "EphemeralStat" },
				lastUpdated = { 22, 8, 4 },
				description = [[EphemeralStat unit test event]],
				links = "doc_link",
			}

			it("should send Telemetry event with all valid parameters", function(context)
				context.LoggingProtocol:logEphemeralStatEvent(config, 1.0)

				jestExpect(mockLogEventFn).toHaveBeenCalledTimes(1)
				jestExpect(mockLogEventFn).toHaveBeenCalledWith({
					eventType = "EphemeralStat",
					config = config,
					data = {
						statValue = 1.0,
					},
				})
			end)
		end)
	end)
end
