return function()
	local getUserDisplayName = require(script.Parent.getUserDisplayName)

	describe("GIVEN a user model with no displayname and state", function()
		local user = {
			name = "nameHere",
			displayName = nil,
		}
		local state = {}

		it("SHOULD return the user's name as a string", function()
			local result = getUserDisplayName(state, user)
			expect(type(result)).to.equal("string")
			expect(result).to.equal("nameHere")
		end)
	end)

	describe("GIVEN a user model with a name an a display name and state", function()
		local user = {
			name = "nameHere",
			displayName = "displayNameHere",
		}
		local state = {}

		it("SHOULD return the user's displayName as a string", function()
			local result = getUserDisplayName(state, user)
			expect(type(result)).to.equal("string")
			expect(result).to.equal("displayNameHere")
		end)
	end)
end
