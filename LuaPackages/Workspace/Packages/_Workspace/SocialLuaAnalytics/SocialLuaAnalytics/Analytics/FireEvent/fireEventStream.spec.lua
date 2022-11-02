--!nonstrict
local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")

local dependencies = require(SocialLuaAnalytics.dependencies)
local devDependencies = require(SocialLuaAnalytics.devDependencies)
local jestExpect = devDependencies.jestExpect
local jest = devDependencies.jest
local fireEventStream = require(script.Parent.fireEventStream)
local enumerate = dependencies.enumerate
local TestingAnalytics = require(script.Parent.Parent.Parent.TestingAnalytics)
local mockLogger = TestingAnalytics.mockLogger
local mockAnalytics = TestingAnalytics.mockAnalytics
local Enums = require(script.Parent.Parent.Enums)
local Contexts = Enums.Contexts
local EventTypes = Enums.EventTypes
local SubPages = Enums.SubPages

return function()
	describe("fireEventStream", function()
		local eventStreamImpl, loggerImpl, mockFormatter
		local mockEventNames = enumerate("mockEventList", {
			SimpleEvent = "event1",
			EventWithAdditionalInfo = "event2",
			EventWithDynamicAdditionalInfo = "event3",
		})

		local eventList = {
			[mockEventNames.SimpleEvent] = { context = Contexts.HomePage, eventType = EventTypes.ButtonClick },
			[mockEventNames.EventWithAdditionalInfo] = {
				context = Contexts.MorePage,
				eventType = EventTypes.ButtonClick,
				additionalInfo = {
					subPage = SubPages.PeekView,
					uid = "123",
					isHomePage = true,
				},
			},
			[mockEventNames.EventWithDynamicAdditionalInfo] = {
				context = Contexts.FriendsLanding,
				eventType = EventTypes.PageLoadingTime,
				additionalInfo = {
					subPage = SubPages.PeekView,
					uid = "123",
				},
				formatRulesForAdditionalInfo = {
					gameId = true,
					playerStatus = function(...)
						return mockFormatter(...)
					end,
				},
			},
		}

		beforeEach(function()
			eventStreamImpl = mockAnalytics(jest).EventStream
			loggerImpl = mockLogger(jest)
			mockFormatter = jest.fn().mockReturnValue("formatted")
		end)

		it("SHOULD return a function", function()
			jestExpect(fireEventStream({
				eventStreamImpl = eventStreamImpl,
				eventList = eventList,
			})).toEqual(jestExpect.any("function"))
		end)

		describe("withoutLogger", function()
			local fireEvent

			beforeEach(function()
				fireEvent = fireEventStream({
					eventStreamImpl = eventStreamImpl,
					eventList = eventList,
				})
			end)

			it("SHOULD call setRBXEventStream with event details for a simple event", function()
				fireEvent(mockEventNames.SimpleEvent)

				jestExpect(eventStreamImpl.setRBXEventStream).toHaveBeenCalledWith(
					eventStreamImpl,
					Contexts.HomePage.rawValue(),
					EventTypes.ButtonClick.rawValue(),
					{}
				)
			end)

			it(
				"SHOULD call setRBXEventStream with event details for an event with fixed info additionalInfo",
				function()
					fireEvent(mockEventNames.EventWithAdditionalInfo)

					jestExpect(eventStreamImpl.setRBXEventStream).toHaveBeenCalledWith(
						eventStreamImpl,
						Contexts.MorePage.rawValue(),
						EventTypes.ButtonClick.rawValue(),
						{
							subPage = SubPages.PeekView.rawValue(),
							uid = "123",
							isHomePage = true,
						}
					)
				end
			)

			it("SHOULD call report counter with event name and optional counter", function()
				fireEvent(mockEventNames.EventWithDynamicAdditionalInfo, {
					gameId = "909",
					notAllowedKey = "789",
					playerStatus = "999",
				})

				jestExpect(eventStreamImpl.setRBXEventStream).toHaveBeenCalledWith(
					eventStreamImpl,
					Contexts.FriendsLanding.rawValue(),
					EventTypes.PageLoadingTime.rawValue(),
					{
						subPage = SubPages.PeekView.rawValue(),
						uid = "123",
						gameId = "909",
						playerStatus = "formatted",
					}
				)
				jestExpect(mockFormatter).toHaveBeenCalledWith("999")
			end)

			it("SHOULD return event info", function()
				local info = {}
				local eventName, additionalInfo = fireEvent(mockEventNames.EventWithAdditionalInfo, info)

				jestExpect(eventName).toBe(mockEventNames.EventWithAdditionalInfo)
				jestExpect(additionalInfo).toBe(info)
			end)

			it("SHOULD error if given an invalid event", function()
				jestExpect(function()
					fireEvent("Event3")
				end).toThrow("Invalid eventName used: Event3 called")
			end)
		end)

		describe("withLogger", function()
			local fireEvent

			beforeEach(function()
				fireEvent = fireEventStream({
					eventStreamImpl = eventStreamImpl,
					eventList = eventList,
					loggerImpl = loggerImpl,
				})
			end)

			it("SHOULD call setRBXEventStream with event details for a simple event", function()
				fireEvent(mockEventNames.SimpleEvent)

				jestExpect(eventStreamImpl.setRBXEventStream).toHaveBeenCalledWith(
					eventStreamImpl,
					Contexts.HomePage.rawValue(),
					EventTypes.ButtonClick.rawValue(),
					{}
				)
				jestExpect(loggerImpl.info).toHaveBeenCalledWith(
					loggerImpl,
					"context: (homepage), eventName: (buttonClick), additionalInfo: ({})"
				)
			end)

			it(
				"SHOULD call setRBXEventStream with event details for an event with fixed info additionalInfo",
				function()
					fireEvent(mockEventNames.EventWithAdditionalInfo)

					jestExpect(eventStreamImpl.setRBXEventStream).toHaveBeenCalledWith(
						eventStreamImpl,
						Contexts.MorePage.rawValue(),
						EventTypes.ButtonClick.rawValue(),
						{
							subPage = SubPages.PeekView.rawValue(),
							uid = "123",
							isHomePage = true,
						}
					)
					jestExpect(loggerImpl.info).toHaveBeenCalledWith(
						loggerImpl,
						"context: (morepage), eventName: (buttonClick), additionalInfo: ( args: { subPage = peekView; uid = 123; isHomePage = true; })"
					)
				end
			)

			it("SHOULD call report counter with event name and optional counter", function()
				fireEvent(mockEventNames.EventWithDynamicAdditionalInfo, {
					gameId = "909",
					notAllowedKey = "789",
					playerStatus = "999",
				})

				jestExpect(eventStreamImpl.setRBXEventStream).toHaveBeenCalledWith(
					eventStreamImpl,
					Contexts.FriendsLanding.rawValue(),
					EventTypes.PageLoadingTime.rawValue(),
					{
						subPage = SubPages.PeekView.rawValue(),
						uid = "123",
						gameId = "909",
						playerStatus = "formatted",
					}
				)
				jestExpect(mockFormatter).toHaveBeenCalledWith("999")
				jestExpect(loggerImpl.info).toHaveBeenCalledWith(
					loggerImpl,
					"context: (friendsLanding), eventName: (pageLoadingTime), additionalInfo: ( args: { subPage = peekView; gameId = 909; playerStatus = formatted; uid = 123; })"
				)
			end)

			it("SHOULD return event info", function()
				local info = {}
				local eventName, additionalInfo = fireEvent(mockEventNames.EventWithAdditionalInfo, info)

				jestExpect(eventName).toBe(mockEventNames.EventWithAdditionalInfo)
				jestExpect(additionalInfo).toBe(info)
			end)

			it("SHOULD error if given an invalid event", function()
				jestExpect(function()
					fireEvent("Event3")
				end).toThrow("Invalid eventName used: Event3 called")
			end)
		end)
	end)
end
