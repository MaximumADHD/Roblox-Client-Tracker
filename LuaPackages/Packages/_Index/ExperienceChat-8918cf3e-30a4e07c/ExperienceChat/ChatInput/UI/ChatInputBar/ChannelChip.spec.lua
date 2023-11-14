local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

return function()
	beforeAll(function(root)
		local ChannelChip = require(script.Parent.ChannelChip)

		root.mount = root.createMount(ChannelChip, function(c)
			return {
				targetTextChannelDisplayName = c.targetTextChannelDisplayName,
			}
		end)
	end)

	it("SHOULD mount with a given props", function(c)
		c.targetTextChannelDisplayName = "[Team]"

		local result = c:mount()
		local textLabel = result.instance:FindFirstChildOfClass("TextButton", true)
		assert(textLabel, "Expected text label")

		expect(textLabel.Text).toEqual(c.targetTextChannelDisplayName)
		expect(textLabel.Visible).toEqual(true)
	end)

	it("SHOULD mount invisible channel chip given empty targetTextChannelDisplayName", function(c)
		c.targetTextChannelDisplayName = ""

		local result = c:mount()
		local textLabel = result.instance:FindFirstChildOfClass("TextButton", true)

		expect(textLabel.Visible).toEqual(false)
	end)
end
