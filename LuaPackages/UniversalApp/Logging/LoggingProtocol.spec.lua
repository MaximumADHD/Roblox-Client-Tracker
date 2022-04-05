return function()
	local MockMessageBus = {}
	MockMessageBus.__index = MockMessageBus

	MockMessageBus.spy = {}

	function MockMessageBus.call(desc: FunctionDescriptor, params: any): any
		assert(desc.validateParams(params))
		-- Simulate the basic behavior of a call to the protocol
		if desc.fid == "Logging.getTimestamp" then
			return 5e+20
		elseif desc.fid == "Logging.logEventWithTimestamp" then
			for key, value in pairs(params) do
				MockMessageBus.spy[key] = value
			end
			return {}
		else
			return {}
		end
	end

	local CorePackages = game:GetService("CorePackages")
	local LoggingProtocol = require(CorePackages.UniversalApp.Logging.LoggingProtocol)

	describe("LoggingProtocol", function()
		beforeEach(function(context)
			context.LoggingProtocol = LoggingProtocol.new(MockMessageBus)
		end)

		afterEach(function()
			MockMessageBus.spy = {}
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
				expect(MockMessageBus.spy.eventName).to.equal("TestStartEvent")
				expect(MockMessageBus.spy.timestamp).to.equal(1000)
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
				expect(MockMessageBus.spy.timestamp).to.equal(15)
				expect(MockMessageBus.spy.metadata).to.be.a("table")
				expect(MockMessageBus.spy.metadata.throttlingPercentage).to.equal(500)
				expect(MockMessageBus.spy.metadata.isUA).to.equal(true)
				expect(MockMessageBus.spy.metadata.referralSource).to.equal("GameDetails")
			end)
		end)

		describe("logEvent", function()
			it("should log event with minimal parameters", function(context)
				local success, result = pcall(function()
					return context.LoggingProtocol:logEvent("TestStartEvent")
				end)

				expect(success).to.equal(true)
				expect(MockMessageBus.spy.eventName).to.equal("TestStartEvent")
				expect(MockMessageBus.spy.timestamp).to.equal(0)
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
	end)
end
