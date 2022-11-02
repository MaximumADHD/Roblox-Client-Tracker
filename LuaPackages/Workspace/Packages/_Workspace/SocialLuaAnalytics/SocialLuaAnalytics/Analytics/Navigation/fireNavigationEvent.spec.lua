--!nonstrict
local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")

local dependencies = require(SocialLuaAnalytics.dependencies)
local llama = dependencies.llama
local devDependencies = require(SocialLuaAnalytics.devDependencies)
local jestExpect = devDependencies.jestExpect
local jest = devDependencies.jest
local fireNavigationEvent = require(script.Parent.fireNavigationEvent)
local TestingAnalytics = require(script.Parent.Parent.Parent.TestingAnalytics)
local mockAnalytics = TestingAnalytics.mockAnalytics
local EventNames = require(script.Parent.EventNames)
local DiagEventList = require(script.Parent.DiagEventList)
local EventStreamEventList = require(script.Parent.EventStreamEventList)

return function()
	describe("fireNavigationEvent", function()
		local analyticsMock

		beforeEach(function()
			analyticsMock = mockAnalytics(jest)
		end)

		it("SHOULD return a function", function()
			jestExpect(fireNavigationEvent({
				analytics = analyticsMock,
			})).toEqual(jestExpect.any("function"))
		end)

		local events = {
			[EventNames.HomePage_AddFriends] = { useDiag = true, useEventStream = false },
			[EventNames.HomePage_Carousel_LuaProfile] = { useDiag = true, useEventStream = true },
			[EventNames.HomePage_Carousel_FriendsLanding] = { useDiag = true, useEventStream = true },
			[EventNames.MorePage_FriendsLanding] = { useDiag = true, useEventStream = true },
		}

		local testEvents = function(config, key)
			local fireEvent

			beforeEach(function()
				fireEvent = fireNavigationEvent({
					analytics = analyticsMock,
				})
			end)

			it("SHOULD call valid events with event details for " .. key.rawValue(), function()
				fireEvent(key, {
					uid = 789,
				})

				if config.useDiag then
					jestExpect(analyticsMock.Diag.reportCounter).toHaveBeenCalledWith(
						analyticsMock.Diag,
						DiagEventList[key].name,
						1
					)
				end
				if config.useEventStream then
					local eventInfo = EventStreamEventList[key]
					jestExpect(analyticsMock.EventStream.setRBXEventStream).toHaveBeenCalledWith(
						analyticsMock.EventStream,
						eventInfo.context.rawValue(),
						eventInfo.eventType.rawValue(),
						llama.Dictionary.join(eventInfo.additionalInfo, {
							btn = eventInfo.additionalInfo.btn and eventInfo.additionalInfo.btn.rawValue(),
							subpage = eventInfo.additionalInfo.subpage and eventInfo.additionalInfo.subpage.rawValue()
								or nil,
							page = eventInfo.additionalInfo.page and eventInfo.additionalInfo.page.rawValue() or nil,
							uid = "789",
						})
					)
				end
			end)
		end

		llama.Dictionary.map(events, testEvents)
	end)
end
