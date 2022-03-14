return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
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

		it("SHOULD have the alias from the state in somewhere in the string", function()
			local result = getUserDisplayAlias(state, user)

			jestExpect(result).toEqual(jestExpect.stringContaining(myAlias))
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

			jestExpect(result).toBeNil()
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

			jestExpect(result).toBeNil()
		end)
	end)
end
