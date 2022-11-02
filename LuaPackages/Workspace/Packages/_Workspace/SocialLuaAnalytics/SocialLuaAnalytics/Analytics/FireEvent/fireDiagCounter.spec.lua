--!nonstrict
local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")

local dependencies = require(SocialLuaAnalytics.dependencies)
local devDependencies = require(SocialLuaAnalytics.devDependencies)
local jestExpect = devDependencies.jestExpect
local jest = devDependencies.jest
local fireDiagCounter = require(script.Parent.fireDiagCounter)
local enumerate = dependencies.enumerate
local TestingAnalytics = require(script.Parent.Parent.Parent.TestingAnalytics)
local mockLogger = TestingAnalytics.mockLogger
local mockAnalytics = TestingAnalytics.mockAnalytics

return function()
	describe("fireDiagCounter", function()
		local diagImpl, loggerImpl
		local mockEventNames = enumerate("mockEventList", {
			Event1 = "event1",
			Event2 = "event2",
		})
		local eventList = {
			[mockEventNames.Event1] = { name = "EventA", count = 2 },
			[mockEventNames.Event2] = { name = "EventB" },
		}

		beforeEach(function()
			diagImpl = mockAnalytics(jest).Diag
			loggerImpl = mockLogger(jest)
		end)

		it("SHOULD return a function", function()
			jestExpect(fireDiagCounter({
				diagImpl = diagImpl,
				eventList = eventList,
			})).toEqual(jestExpect.any("function"))
		end)

		describe("withoutLogger", function()
			local fireDiag

			beforeEach(function()
				fireDiag = fireDiagCounter({
					diagImpl = diagImpl,
					eventList = eventList,
				})
			end)

			it("SHOULD call report counter with event name and default counter of 1", function()
				fireDiag(mockEventNames.Event2)

				jestExpect(diagImpl.reportCounter).toHaveBeenCalledWith(diagImpl, "EventB", 1)
			end)

			it("SHOULD call report counter with event name and optional counter", function()
				fireDiag(mockEventNames.Event1)

				jestExpect(diagImpl.reportCounter).toHaveBeenCalledWith(diagImpl, "EventA", 2)
			end)

			it("SHOULD return event", function()
				local event = fireDiag(mockEventNames.Event1)

				jestExpect(event).toBe(eventList[mockEventNames.Event1])
			end)

			it("SHOULD error if given an invalid event", function()
				jestExpect(function()
					fireDiag("Event3")
				end).toThrow("Invalid eventName used: Event3 called")
			end)
		end)

		describe("withLogger", function()
			local fireDiag

			beforeEach(function()
				fireDiag = fireDiagCounter({
					diagImpl = diagImpl,
					eventList = eventList,
					loggerImpl = loggerImpl,
				})
			end)

			it("SHOULD call report counter with event name and default counter of 1", function()
				fireDiag(mockEventNames.Event2)

				jestExpect(loggerImpl.info).toHaveBeenCalledWith(loggerImpl, "Fired diagCounter: EventB, count: 1")
				jestExpect(diagImpl.reportCounter).toHaveBeenCalledWith(diagImpl, "EventB", 1)
			end)

			it("SHOULD call report counter with event name and optional counter", function()
				fireDiag(mockEventNames.Event1)

				jestExpect(loggerImpl.info).toHaveBeenCalledWith(loggerImpl, "Fired diagCounter: EventA, count: 2")
				jestExpect(diagImpl.reportCounter).toHaveBeenCalledWith(diagImpl, "EventA", 2)
			end)

			it("SHOULD return event", function()
				local event = fireDiag(mockEventNames.Event1)

				jestExpect(event).toBe(eventList[mockEventNames.Event1])
			end)
		end)
	end)
end
