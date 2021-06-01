return function()
	local getUserDisplayAlias = require(script.Parent.getUserDisplayAlias)

	describe("GIVEN a user model and state with an alias for the user", function()
		local user = {
			id = "id",
		}
		local myAlias = "thisIsAUserDefinedAlias"
		local state = {
			ChatAppReducer = {
				Aliases = {
					byUserId = {
						[user.id] = myAlias,
					}
				}
			}
		}
		it("SHOULD return a string", function()
			local result = getUserDisplayAlias(state, user)
			expect(type(result)).to.equal("string")
		end)

		it("SHOULD have the alias from the state in somewhere in the string", function()
			local result = getUserDisplayAlias(state, user)
			local findResult = string.find(result, myAlias)
			expect(findResult).to.be.ok()
		end)
	end)

	describe("GIVEN a user model and state without an alias for someone else", function()
		local user = {
			id = "id",
		}
		local state = {
			ChatAppReducer = {
				Aliases = {
					byUserId = {
						someOtherUser = "alias",
					}
				}
			}
		}
		it("SHOULD return nil", function()
			local result = getUserDisplayAlias(state, user)
			expect(result).to.equal(nil)
		end)
	end)

	describe("GIVEN a user model and state without an alias", function()
		local user = {
			id = "id",
		}
		local state = {
			ChatAppReducer = {
				Aliases = {
					byUserId = {}
				}
			}
		}
		it("SHOULD return nil", function()
			local result = getUserDisplayAlias(state, user)
			expect(result).to.equal(nil)
		end)
	end)
end
