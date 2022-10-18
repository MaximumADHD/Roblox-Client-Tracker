local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

return function()
	beforeAll(function(root)
		local ChannelChip = require(script.Parent.ChannelChip)
		root.mount = root.createMount(ChannelChip, function(c)
			return {
				targetTextChannel = c.targetTextChannel,
			}
		end)
	end)

	it("SHOULD mount given a targetTextChannel", function(c)
		c.targetTextChannel = Instance.new("TextChannel")
		c:mount()
	end)

	it("SHOULD mount given a targetTextChannel named RBXWhisper", function(c)
		c.targetTextChannel = Instance.new("TextChannel")
		c.targetTextChannel.Name = "RBXWhisper"

		c:mount()
	end)

	it("SHOULD mount given a targetTextChannel named RBXTeam", function(c)
		c.targetTextChannel = Instance.new("TextChannel")
		c.targetTextChannel.Name = "RBXTeam"

		local result = c:mount()

		local textLabel = result.instance:FindFirstChildOfClass("TextButton", true)
		assert(textLabel, "Expected text label")
		expect(textLabel).toHaveProperty("Text", "CoreScripts.TextChat.TeamChat.PrefixText")
	end)
end
