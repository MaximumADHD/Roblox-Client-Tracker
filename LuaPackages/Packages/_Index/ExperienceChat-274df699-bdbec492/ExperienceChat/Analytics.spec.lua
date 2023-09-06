local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

return function()
	local mockAnalyticsService = {
		SetRBXEventStream = jest.fn(),
	}
	beforeAll(function(c)
		c.Analytics = require(script.Parent.Analytics)
		c.Analytics.with(mockAnalyticsService)
	end)

	afterEach(function()
		mockAnalyticsService.SetRBXEventStream.mockClear()
	end)

	describe("targets", function()
		it("should fire rcc events with the rcc target", function(c)
			c.Analytics.FireRccAnalyticsWithEventName("test")
			expect(mockAnalyticsService.SetRBXEventStream).toHaveBeenLastCalledWith(
				expect.anything(),
				"rcc",
				expect.anything(),
				expect.anything(),
				expect.anything()
			)
		end)

		it("should fire client events with the client target", function(c)
			c.Analytics.FireClientAnalyticsWithEventName("test")
			expect(mockAnalyticsService.SetRBXEventStream).toHaveBeenLastCalledWith(
				expect.anything(),
				"client",
				expect.anything(),
				expect.anything(),
				expect.anything()
			)
		end)
	end)

	describe("default args", function()
		it("check placeId and gameId default args for rcc", function(c)
			c.Analytics.FireRccAnalyticsWithEventName("test")
			expect(mockAnalyticsService.SetRBXEventStream).toHaveBeenLastCalledWith(
				expect.anything(),
				expect.anything(),
				expect.anything(),
				expect.anything(),
				{ placeId = expect.any("string"), gameId = expect.any("string") }
			)
		end)

		it("check placeId and gameId default args for client", function(c)
			c.Analytics.FireClientAnalyticsWithEventName("test")
			expect(mockAnalyticsService.SetRBXEventStream).toHaveBeenLastCalledWith(
				expect.anything(),
				expect.anything(),
				expect.anything(),
				expect.anything(),
				{ placeId = expect.any("string"), gameId = expect.any("string") }
			)
		end)
	end)
end
