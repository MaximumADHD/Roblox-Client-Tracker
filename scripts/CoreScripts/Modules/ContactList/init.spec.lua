return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	beforeAll(function(c: any)
		local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
		SoundManager.init()
	end)

	it("should require without errors", function()
		local ContactList = require(script.Parent)
		expect(ContactList).never.toBeNil()
	end)
end
