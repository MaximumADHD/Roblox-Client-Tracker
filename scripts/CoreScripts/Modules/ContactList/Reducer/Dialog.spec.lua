return function()
	local ContactList = script.Parent.Parent
	local Dialog = require(ContactList.Reducer.Dialog)
	local OpenOrUpdateDialog = require(ContactList.Actions.OpenOrUpdateDialog)
	local CloseDialog = require(ContactList.Actions.CloseDialog)

	it("should have the correct default values", function()
		local defaultState = Dialog(nil, {})

		expect(type(defaultState)).to.equal("table")
		expect(defaultState.isOpen).to.equal(false)
		expect(defaultState.title).to.equal("")
		expect(defaultState.bodyText).to.equal("")
	end)

	describe("using actions", function()
		it("should change with OpenOrUpdateDialog and CloseDialog", function()
			local oldState = Dialog(nil, {})
			local openState = Dialog(oldState, OpenOrUpdateDialog("title", "body"))
			expect(oldState).to.never.equal(openState)
			expect(openState.isOpen).to.equal(true)
			expect(openState.title).to.equal("title")
			expect(openState.bodyText).to.equal("body")

			local closeState = Dialog(openState, CloseDialog())
			expect(openState).to.never.equal(closeState)
			expect(closeState.isOpen).to.equal(false)
			expect(closeState.title).to.equal("")
			expect(closeState.bodyText).to.equal("")
		end)
	end)
end
