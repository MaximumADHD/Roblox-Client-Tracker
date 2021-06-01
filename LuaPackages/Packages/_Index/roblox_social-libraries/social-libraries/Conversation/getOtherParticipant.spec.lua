return function()
	local getOtherParticipant = require(script.Parent.getOtherParticipant)

	describe("GIVEN a state and array of users", function()
		local state = {
			LocalUserId = "me",
		}
		it("SHOULD return the other userId", function()
			local result = getOtherParticipant(state, { "me", "you" })
			expect(result).to.equal("you")
		end)

		it("SHOULD return nil if no other users are in the array", function()
			local result = getOtherParticipant(state, { "me" })
			expect(result).to.equal(nil)
		end)
	end)
end
