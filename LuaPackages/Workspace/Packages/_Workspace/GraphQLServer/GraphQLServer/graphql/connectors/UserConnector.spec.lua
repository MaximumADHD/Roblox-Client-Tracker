local Players = game:GetService("Players")

local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect
local UserConnector = require(script.Parent.UserConnector)
local findUserById = UserConnector.findUserById
local findMe = UserConnector.findMe

return function()
	it("should fetch a user", function()
		local userOne = findUserById("1"):expect()

		jestExpect(userOne).toBeDefined()
		jestExpect(userOne.id).toEqual("1")
		jestExpect(userOne.displayName).toEqual("Roblox")
	end)

	it("should return an error if the user cannot be found", function()
		local capturedError
		findUserById("notAUser")
			:catch(function(err)
				capturedError = err
			end)
			:expect()

		jestExpect(capturedError).toBeDefined()
		jestExpect(capturedError.message).toEqual("Failed to find user matching id: notAUser.")
	end)

	it("should fetch me", function()
		local userMe = findMe():expect()
		local LocalPlayer = Players.LocalPlayer :: Player

		jestExpect(userMe).toBeDefined()
		jestExpect(userMe.id).toEqual(tostring(LocalPlayer.UserId))
		jestExpect(userMe.displayName).toBeDefined()
	end)
end
