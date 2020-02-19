local isProtectedInstance = require(script.Parent.isProtectedInstance)

local Workspace = game:GetService("Workspace")

local getTerrain = require(script.Parent.getTerrain)

return function()
	it("should return true for protected instances", function()
		expect(isProtectedInstance(game:GetService("CSGDictionaryService"))).to.equal(true)
	end)

	it("should return false for non-protected instances", function()
		expect(isProtectedInstance(Workspace)).to.equal(false)
		expect(isProtectedInstance(getTerrain())).to.equal(false)
		expect(isProtectedInstance(Instance.new("Part"))).to.equal(false)
	end)
end
