return function()
	local ContactList = script.Parent.Parent
	local Navigation = require(ContactList.Reducer.Navigation)
	local SetCurrentPage = require(ContactList.Actions.SetCurrentPage)
	local SetCurrentTag = require(ContactList.Actions.SetCurrentTag)
	local Pages = require(script.Parent.Parent.Enums.Pages)

	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should have the correct default values", function()
		local defaultState = Navigation(nil, {})

		expect(defaultState).toEqual(expect.any("table"))
		expect(defaultState.currentPage).toBe(nil)
	end)

	describe("using actions", function()
		it("should change with SetCurrentPage and SetCurrentTag", function()
			local oldState = Navigation(nil, {})
			local openState = Navigation(oldState, SetCurrentPage(Pages.CallHistory))
			expect(oldState).never.toBe(openState)
			expect(openState.currentPage).toBe(Pages.CallHistory)
			expect(openState.currentTag).toBe("")

			local tagState = Navigation(openState, SetCurrentTag("tag"))
			expect(openState).never.toBe(tagState)
			expect(tagState.currentPage).toBe(Pages.CallHistory)
			expect(tagState.currentTag).toBe("tag")

			local closeState = Navigation(tagState, SetCurrentPage(nil))
			expect(tagState).never.toBe(closeState)
			expect(closeState.currentPage).toBe(nil)
			expect(closeState.currentTag).toBe("tag")
		end)
	end)
end
