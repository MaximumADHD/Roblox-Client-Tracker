local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Otter = require(Packages.Otter)
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local getSpringFromSettings = require(script.Parent.getSpringFromSettings)

return function()
	it("SHOULD return otter.instant if animation settings is not enabled", function()
		local chatSettings = { SizeAnimation = { Enabled = false }, TransparencyAnimation = { Enabled = false } }
		local result = getSpringFromSettings(chatSettings, "size")
		expect(result).toEqual(Otter.instant)

		result = getSpringFromSettings(chatSettings, "transparency")
		expect(result).toEqual(Otter.instant)
	end)
end
