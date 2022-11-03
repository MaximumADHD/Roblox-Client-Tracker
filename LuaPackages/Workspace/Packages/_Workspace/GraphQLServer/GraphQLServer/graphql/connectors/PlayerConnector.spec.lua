local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect
local PlayerConnector = require(script.Parent.PlayerConnector)
local findAvatarHeadshotById = PlayerConnector.findAvatarHeadshotById

return function()
	it("should fetch a headshot for a user", function()
		local avatarHeadshot = findAvatarHeadshotById("1"):expect()
		jestExpect(avatarHeadshot).toBeDefined()
	end)

	it("should return an error if the headshot cannot be found", function()
		local capturedError
		findAvatarHeadshotById("notAUser")
			:catch(function(err)
				capturedError = err
			end)
			:expect()

		jestExpect(capturedError).toBeDefined()
		jestExpect(capturedError.message).toEqual("Failed to find avatarHeadshot for user matching id: notAUser.")
	end)
end
