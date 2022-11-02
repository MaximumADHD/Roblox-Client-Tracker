--!nonstrict
local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")

local dependencies = require(SocialLuaAnalytics.dependencies)
local enumerate = dependencies.enumerate
local devDependencies = require(SocialLuaAnalytics.devDependencies)
local jestExpect = devDependencies.jestExpect

local validateDiagList = require(script.Parent.validateDiagList)

return function()
	describe("validateDiagList", function()
		local mockEventNames = enumerate("mockEventList", {
			Event1 = "event1",
			Event2 = "event2",
			Event3 = "event3",
		})

		it("SHOULD work with events which just have names", function()
			jestExpect(validateDiagList({
				[mockEventNames.Event1] = { name = "name" },
			})).toBe(true)
		end)

		it("SHOULD work with events which just have names and counters", function()
			jestExpect(validateDiagList({
				[mockEventNames.Event1] = { name = "name", counter = 123 },
			})).toBe(true)
		end)

		it("SHOULD check that all fields have a name", function()
			jestExpect(function()
				validateDiagList({
					[mockEventNames.Event1] = {},
				})
			end).toThrow("name should be a string. Issue with: event1")
		end)

		it("SHOULD check that names are strings", function()
			jestExpect(function()
				validateDiagList({
					[mockEventNames.Event1] = { name = 123 },
				})
			end).toThrow("name should be a string. Issue with: event1")
		end)

		it("SHOULD check a counter is a number", function()
			jestExpect(function()
				validateDiagList({
					[mockEventNames.Event1] = { name = "event1", counter = "string" },
				})
			end).toThrow("counter should be nil or a number. Issue with: event1")
		end)

		it("SHOULD allow keys to be strings as well as enums", function()
			jestExpect(function()
				validateDiagList({
					event1 = {},
				})
			end).toThrow("name should be a string. Issue with: event1")
		end)

		it("SHOULD check for any invalid keys", function()
			jestExpect(function()
				validateDiagList({
					[mockEventNames.Event1] = {
						name = "name",
						fakeKey = "another",
					},
				})
			end).toThrow('[interface] unexpected field "fakeKey". Issue with: event1')
		end)

		describe("more complex examples", function()
			it("SHOULD be able to succed with complex tables", function()
				jestExpect(validateDiagList({
					[mockEventNames.Event1] = {
						name = "a",
						counter = 1,
					},
					[mockEventNames.Event2] = {
						name = "b",
					},
					[mockEventNames.Event3] = {
						name = "c",
						counter = 900,
					},
					AStringName = {
						name = "123",
					},
				})).toBe(true)
			end)

			it("SHOULD be able to spot issues in complex tables", function()
				jestExpect(function()
					validateDiagList({
						[mockEventNames.Event1] = {
							name = "a",
							counter = 1,
						},
						[mockEventNames.Event2] = {
							name = "b",
							counter = 200,
						},
						[mockEventNames.Event3] = {
							name = "c",
							counter = 900,
						},
						AStringName = {
							name = 123,
						},
					})
				end).toThrow("name should be a string. Issue with: AStringName")
			end)
		end)
	end)
end
