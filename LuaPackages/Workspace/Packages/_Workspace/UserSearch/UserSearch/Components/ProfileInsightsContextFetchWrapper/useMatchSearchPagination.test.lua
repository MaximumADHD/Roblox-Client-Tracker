local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local renderHookWithProviders = SocialTestHelpers.TestHelpers.renderHookWithProviders

local useMatchSearchPagination = require(script.Parent.useMatchSearchPagination)

describe("WHEN mounted", function()
	it("should return empty list if users list is not passed", function()
		local helper = renderHookWithProviders(function()
			return useMatchSearchPagination({ users = nil })
		end)

		expect(helper.getResult()).toEqual({})
	end)

	it("should return correct enties when list passed", function()
		local helper = renderHookWithProviders(function()
			return useMatchSearchPagination({ users = { 1, 2, 3, 4 } })
		end)

		expect(helper.getResult()).toEqual({ 1, 2, 3, 4 })
	end)
end)

describe("WHEN updated with new users", function()
	it("should return new list of users", function()
		local helper = renderHookWithProviders(function(props)
			return useMatchSearchPagination(props)
		end, {
			props = {
				users = { "1", "2" },
			},
		})

		expect(helper.getResult()).toEqual({ "1", "2" })

		helper.rerender({ users = { "1", "2", "3", "4" } })
		expect(helper.getResult()).toEqual({ "3", "4" })

		helper.rerender({ users = { "1", "2", "3", "4", "5", "6" } })
		expect(helper.getResult()).toEqual({ "5", "6" })
	end)
end)
