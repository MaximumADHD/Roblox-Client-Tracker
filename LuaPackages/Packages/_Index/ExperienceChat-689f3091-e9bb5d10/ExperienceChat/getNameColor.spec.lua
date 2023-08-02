local getNameColor = require(script.Parent.GetNameColor)

return function()
	it("given a userId, should return a valid color for a player in the datamodel", function()
		local player = game:GetService("Players").LocalPlayer
		assert(player, "Expected a player")
		local userId = player.UserId
		local color = getNameColor(userId)
		assert(typeof(color) == "Color3", "Expected Color3 type")
	end)

	describe("With team", function()
		beforeAll(function(c)
			local team = Instance.new("Team")
			team.TeamColor = BrickColor.new("Black")
			team.Parent = game:GetService("Teams")
			c.team = team

			local player = game:GetService("Players").LocalPlayer
			if player then
				player.Team = team
			end
		end)

		afterAll(function(c)
			if c.team then
				c.team:Destroy()
			end
		end)

		it("given a userId, should return the team color", function()
			local player = game:GetService("Players").LocalPlayer
			assert(player, "Expected a player")
			local userId = player.UserId
			local color = getNameColor(userId)
			assert(typeof(color) == "Color3", "Expected Color3 type")
			assert(color == BrickColor.new("Black").Color, "Expected to match team color")
		end)
	end)

	it("given a userId, should return a valid color for a player outside of the datamodel", function()
		local player = game:GetService("Players").LocalPlayer
		assert(player, "Expected a player")
		local userId = player.UserId + 100
		local color = getNameColor(userId)
		assert(typeof(color) == "Color3", "Expected Color3 type")
	end)
end
