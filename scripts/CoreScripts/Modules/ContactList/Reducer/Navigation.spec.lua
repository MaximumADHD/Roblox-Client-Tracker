return function()
	local ContactList = script.Parent.Parent
	local Navigation = require(ContactList.Reducer.Navigation)
	local CloseContactList = require(ContactList.Actions.CloseContactList)
	local OpenContactList = require(ContactList.Actions.OpenContactList)
	local Pages = require(script.Parent.Parent.Enums.Pages)

	it("should have the correct default values", function()
		local defaultState = Navigation(nil, {})

		expect(type(defaultState)).to.equal("table")
		expect(defaultState.currentPage).to.equal(nil)
	end)

	describe("using actions", function()
		it("should change with OpenContactList and CloseContactList", function()
			local oldState = Navigation(nil, {})
			local openState = Navigation(oldState, OpenContactList("tag"))
			expect(oldState).to.never.equal(openState)
			expect(openState.currentPage).to.equal(Pages.CallHistory)
			expect(openState.currentTag).to.equal("tag")

			local closeState = Navigation(openState, CloseContactList())
			expect(openState).to.never.equal(closeState)
			expect(closeState.currentPage).to.equal(nil)
			expect(closeState.currentTag).to.equal("")
		end)
	end)
end
