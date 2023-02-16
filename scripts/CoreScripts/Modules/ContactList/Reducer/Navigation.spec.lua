return function()
	local ContactList = script.Parent.Parent
	local Navigation = require(ContactList.Reducer.Navigation)
	local CloseContactList = require(ContactList.Actions.CloseContactList)
	local OpenContactList = require(ContactList.Actions.OpenContactList)

	it("should have the correct default values", function()
		local defaultState = Navigation(nil, {})

		expect(type(defaultState)).to.equal("table")
		expect(defaultState.contactListVisible).to.equal(false)
	end)

	describe("using actions", function()
		it("should change with OpenContactList and CloseContactList", function()
			local oldState = Navigation(nil, {})
			local openState = Navigation(oldState, OpenContactList())
			expect(oldState).to.never.equal(openState)
			expect(openState.contactListVisible).to.equal(true)

			local closeState = Navigation(openState, CloseContactList())
			expect(openState).to.never.equal(closeState)
			expect(closeState.contactListVisible).to.equal(false)
		end)
	end)
end
