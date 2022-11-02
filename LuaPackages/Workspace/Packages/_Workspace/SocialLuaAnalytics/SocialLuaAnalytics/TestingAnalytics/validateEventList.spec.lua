--!nonstrict
local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")

local dependencies = require(SocialLuaAnalytics.dependencies)
local enumerate = dependencies.enumerate
local devDependencies = require(SocialLuaAnalytics.devDependencies)
local jestExpect = devDependencies.jestExpect
local Enums = require(script.Parent.Parent.Analytics.Enums)
local Contexts = Enums.Contexts
local EventTypes = Enums.EventTypes
local Pages = Enums.Pages

local validateEventList = require(script.Parent.validateEventList)

return function()
	describe("validateEventList", function()
		local mockEventNames = enumerate("mockEventList", {
			SimpleEvent = "event1",
			EventWithAdditionalInfo = "event2",
			EventWithDynamicAdditionalInfo = "event3",
		})

		it("SHOULD return true for well formatted lists events", function()
			jestExpect(validateEventList({
				[mockEventNames.SimpleEvent] = { eventType = EventTypes.ButtonClick, context = Contexts.HomePage },
			})).toBe(true)
		end)

		it("SHOULD check that context fields are the Context Enum", function()
			jestExpect(function()
				validateEventList({
					[mockEventNames.SimpleEvent] = { eventType = EventTypes.ButtonClick, context = "invalid" },
				})
			end).toThrow("context should be a Context enum. Issue with: event1")
		end)

		it("SHOULD allow keys to be strings as well as enums", function()
			jestExpect(function()
				validateEventList({
					event1 = { eventType = EventTypes.ButtonClick },
				})
			end).toThrow("context should be a Context enum. Issue with: event1")
		end)

		it("SHOULD check that context fields are the EventType Enum", function()
			jestExpect(function()
				validateEventList({
					[mockEventNames.SimpleEvent] = { eventType = Contexts.HomePage, context = Contexts.HomePage },
				})
			end).toThrow("eventType should be an EventType enum. Issue with: event1")
		end)

		it("SHOULD check for any invalid keys", function()
			jestExpect(function()
				validateEventList({
					[mockEventNames.SimpleEvent] = {
						eventType = EventTypes.ButtonClick,
						context = Contexts.HomePage,
						fakeKey = "another",
					},
				})
			end).toThrow('[interface] unexpected field "fakeKey". Issue with: event1')
		end)

		describe("additionalInfo", function()
			it("SHOULD check that if additionalInfo is provided, it is a table", function()
				jestExpect(function()
					validateEventList({
						[mockEventNames.SimpleEvent] = {
							context = Contexts.HomePage,
							eventType = EventTypes.ButtonClick,
							additionalInfo = "string",
						},
					})
				end).toThrow("additionalInfo should be nil or a table. Issue with: event1")
			end)

			it("SHOULD check that if additionalInfo has the SubPage value, it is a valid Enum", function()
				jestExpect(function()
					validateEventList({
						[mockEventNames.SimpleEvent] = {
							context = Contexts.HomePage,
							eventType = EventTypes.ButtonClick,
							additionalInfo = {
								subpage = "string",
							},
						},
					})
				end).toThrow("subpage additional info should be SubPages enum. Issue with: event1")
			end)

			it("SHOULD check that if additionalInfo has the Page value, it is a valid Enum", function()
				jestExpect(function()
					validateEventList({
						[mockEventNames.SimpleEvent] = {
							context = Contexts.HomePage,
							eventType = EventTypes.ButtonClick,
							additionalInfo = {
								page = "string",
							},
						},
					})
				end).toThrow("page additional info should be Pages enum. Issue with: event1")
			end)
		end)

		describe("formatRulesForAdditionalInfo", function()
			it("SHOULD check that if formatRulesForAdditionalInfo is provided, it is a table", function()
				jestExpect(function()
					validateEventList({
						[mockEventNames.SimpleEvent] = {
							context = Contexts.HomePage,
							eventType = EventTypes.ButtonClick,
							formatRulesForAdditionalInfo = "string",
						},
					})
				end).toThrow("formatRulesForAdditionalInfo should be nil or a table. Issue with: event1")
			end)
		end)

		describe("extraValidators", function()
			it("SHOULD check that if additionalInfo extra keys are validated", function()
				jestExpect(function()
					validateEventList({
						[mockEventNames.SimpleEvent] = {
							context = Contexts.HomePage,
							eventType = EventTypes.ButtonClick,
							additionalInfo = {
								newKey = "a",
							},
						},
					}, {
						newKey = function(value)
							return value ~= "a"
						end,
					})
				end).toThrow("newKey key is invalid. Issue with: event1")
			end)
		end)

		describe("more complex examples", function()
			it("SHOULD be able to succed with complex tables", function()
				jestExpect(validateEventList({
					[mockEventNames.SimpleEvent] = {
						context = Contexts.HomePage,
						eventType = EventTypes.ButtonClick,
						additionalInfo = {
							newKey = "c",
						},
					},
					[mockEventNames.EventWithAdditionalInfo] = {
						context = Contexts.HomePage,
						eventType = EventTypes.ButtonClick,
						additionalInfo = {
							newKey = "b",
						},
					},
					[mockEventNames.EventWithDynamicAdditionalInfo] = {
						context = Contexts.HomePage,
						eventType = EventTypes.ButtonClick,
						additionalInfo = {
							subPage = "wrong page",
							page = Pages.PlayerProfile,
							newKey = "b",
						},
					},
					AStringName = {
						context = Contexts.HomePage,
						eventType = EventTypes.ButtonClick,
						formatRulesForAdditionalInfo = {
							key = function()
								return true
							end,
						},
					},
				}, {
					newKey = function(value)
						return value ~= "a"
					end,
				})).toBe(true)
			end)

			it("SHOULD be able to spot issues in complex tables", function()
				jestExpect(function()
					validateEventList({
						[mockEventNames.SimpleEvent] = {
							context = Contexts.HomePage,
							eventType = EventTypes.ButtonClick,
							additionalInfo = {
								newKey = "b",
							},
						},
						[mockEventNames.EventWithAdditionalInfo] = {
							context = Contexts.HomePage,
							eventType = EventTypes.ButtonClick,
							additionalInfo = {
								newKey = "m",
							},
						},
						[mockEventNames.EventWithDynamicAdditionalInfo] = {
							context = Contexts.HomePage,
							eventType = EventTypes.ButtonClick,
							additionalInfo = {
								subPage = "wrong page",
								page = Pages.PlayerProfile,
								newKey = "q",
							},
						},
						AStringName = {
							context = "Wront",
							eventType = "wrong",
						},
					}, {
						newKey = function(value)
							return value ~= "a"
						end,
					})
				end).toThrow("context should be a Context enum. Issue with: AStringName")
			end)
		end)
	end)
end
