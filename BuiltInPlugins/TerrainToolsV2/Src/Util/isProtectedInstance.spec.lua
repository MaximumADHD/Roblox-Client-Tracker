local Plugin = script.Parent.Parent.Parent

local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local getTerrain = require(script.Parent.getTerrain)

local Workspace = game:GetService("Workspace")

local isProtectedInstance = require(script.Parent.isProtectedInstance)

return function()
	it("should return true for protected instances", function()
		expect(isProtectedInstance(game:GetService("CSGDictionaryService"))).to.equal(true)
	end)

	it("should return false for non-protected instances", function()
		expect(isProtectedInstance(Workspace)).to.equal(false)
		if not DebugFlags.RunningUnderCLI() then
			expect(isProtectedInstance(getTerrain())).to.equal(false)
		end
		expect(isProtectedInstance(Instance.new("Part"))).to.equal(false)
	end)
end
