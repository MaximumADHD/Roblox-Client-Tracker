return function()
	local ContactList = script.Parent.Parent
	local CurrentCall = require(ContactList.Reducer.CurrentCall)
	local CancelCall = require(ContactList.Actions.CancelCall)
	local InitiateCall = require(ContactList.Actions.InitiateCall)

	it("should have the correct default values", function()
		local defaultState = CurrentCall(nil, {})

		expect(defaultState).to.equal(nil)
	end)

	describe("using actions", function()
		it("should change with InitiateCall and CancelCall", function()
			local oldState = CurrentCall(nil, {})
			local initiateState = CurrentCall(oldState, InitiateCall(1, 123, "TestUser"))
			expect(oldState).to.never.equal(initiateState)
			expect(initiateState.callId).to.equal(1)

			local cancelState = CurrentCall(initiateState, CancelCall(1))
			expect(initiateState).to.never.equal(cancelState)
			expect(cancelState).to.equal(nil)
		end)

		it("should not initiate a call if one is active", function()
			local initialState = CurrentCall({ callId = 2 }, {})
			expect(function()
				CurrentCall(initialState, InitiateCall(1, 123, "TestUser"))
			end).to.throw()
		end)

		it("should not cancel a call if one is not active", function()
			local initialState = CurrentCall(nil, {})
			expect(function()
				CurrentCall(initialState, CancelCall(1))
			end).to.throw()
		end)
	end)
end
