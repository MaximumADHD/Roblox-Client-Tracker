return function()
	local CorePackages = game:GetService("CorePackages")
	local GetFFlagCorescriptsSoundManagerEnabled =
		require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagCorescriptsSoundManagerEnabled

	beforeAll(function(c: any)
		if GetFFlagCorescriptsSoundManagerEnabled() then
			local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
			SoundManager.init()
		end
	end)

	it("should require without errors", function()
		local ContactList = require(script.Parent)
		expect(ContactList).to.be.ok()
	end)
end
