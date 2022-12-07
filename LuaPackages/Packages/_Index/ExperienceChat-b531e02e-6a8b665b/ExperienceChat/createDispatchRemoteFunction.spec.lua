local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

return function()
	beforeAll(function(rootContext)
		rootContext.remoteFunction = require(script.Parent.createDispatchRemoteFunction)()
	end)

	it("SHOULD return a remoteFunction", function(c)
		expect(c.remoteFunction:IsA("RemoteFunction")).toEqual(true)
	end)
end
