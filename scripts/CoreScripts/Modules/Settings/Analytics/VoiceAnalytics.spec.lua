--!nonstrict
local CorePackages = game:GetService("CorePackages")

local LuaSocialLibrariesDeps = require(CorePackages.LuaSocialLibrariesDeps)
local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local Mock = LuaSocialLibrariesDeps.Mock
local VoiceAnalytics = require(script.Parent.VoiceAnalytics)

return function()
	beforeAll(function(c)
		c.Mock = Mock
		c.analytics = {
			EventStream = {
				setRBXEventStream = jest.fn(),
			},
		}
		c.voiceAnalytics = VoiceAnalytics.new(c.analytics.EventStream, "VoiceAnalytics.test")
	end)

	describe("VoiceAnalytics", function(c)
		afterEach(function ()
			jest.clearAllMocks();
		end)

		describe("onMuteSelf", function(c)
			it("SHOULD fire", function(c)
				c.voiceAnalytics:onMuteSelf()

				expect(c.analytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
			end)
		end)

		describe("onUnmuteSelf", function(c)
			it("SHOULD fire", function(c)
				c.voiceAnalytics:onUnmuteSelf()

				expect(c.analytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
			end)
		end)

		describe("onMuteAll", function(c)
			it("SHOULD fire", function(c)
				c.voiceAnalytics:onMuteAll()

				expect(c.analytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
			end)
		end)

		describe("onUnmuteAll", function(c)
			it("SHOULD fire", function(c)
				c.voiceAnalytics:onUnmuteAll()

				expect(c.analytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
			end)
		end)

		describe("onMutePlayer", function(c)
			it("SHOULD fire", function(c)
				c.voiceAnalytics:onMutePlayer(123)

				expect(c.analytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
			end)
		end)

		describe("onUnmutePlayer", function(c)
			it("SHOULD fire", function(c)
				c.voiceAnalytics:onUnmutePlayer(123)

				expect(c.analytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
			end)
		end)

		describe("onToggleMuteAll", function(c)
			it("SHOULD fire", function(c)
				c.voiceAnalytics:onToggleMuteAll(true)

				expect(c.analytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
			end)
			it("SHOULD fire when false", function(c)
				c.voiceAnalytics:onToggleMuteAll(false)

				expect(c.analytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
			end)
		end)

		describe("onToggleMuteSelf", function(c)
			it("SHOULD fire", function(c)
				c.voiceAnalytics:onToggleMuteSelf(true)

				expect(c.analytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
			end)
			it("SHOULD fire when false", function(c)
				c.voiceAnalytics:onToggleMuteSelf(false)

				expect(c.analytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
			end)
		end)

		describe("onToggleMutePlayer", function(c)
			it("SHOULD fire", function(c)
				c.voiceAnalytics:onToggleMutePlayer(123, true)

				expect(c.analytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
			end)
			it("SHOULD fire when false", function(c)
				c.voiceAnalytics:onToggleMutePlayer(234, false)

				expect(c.analytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
			end)
		end)

	end)
end
