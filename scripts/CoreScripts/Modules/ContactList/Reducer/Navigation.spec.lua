return function()
	local ContactList = script.Parent.Parent
	local Navigation = require(ContactList.Reducer.Navigation)
	local CloseContactList = require(ContactList.Actions.CloseContactList)
	local OpenContactList = require(ContactList.Actions.OpenContactList)
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
		it("should change with OpenContactList and CloseContactList", function()
			local oldState = Navigation(nil, {})
			local openState = Navigation(oldState, OpenContactList("tag"))
			expect(oldState).never.toBe(openState)
			expect(openState.currentPage).toBe(Pages.CallHistory)
			expect(openState.currentTag).toBe("tag")

			local closeState = Navigation(openState, CloseContactList())
			expect(openState).never.toBe(closeState)
			expect(closeState.currentPage).toBe(nil)
			expect(closeState.currentTag).toBe("")
		end)
	end)
end
