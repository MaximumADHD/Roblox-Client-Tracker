return function()
	local SocialTab = script:FindFirstAncestor("SocialTab")
	local _dependencies = require(SocialTab.dependencies) -- Make sure SocialPanelIAEnabled is defined

	local devDependencies = require(SocialTab.devDependencies)
	local JestGlobals = devDependencies.JestGlobals
	local beforeEach = JestGlobals.beforeEach
	local afterEach = JestGlobals.afterEach

	local PreviousSocialPanelIAEnabled

	beforeEach(function()
		PreviousSocialPanelIAEnabled = game:SetFastFlagForTesting("SocialPanelIAEnabled", false)
	end)

	afterEach(function()
		game:SetFastFlagForTesting("SocialPanelIAEnabled", PreviousSocialPanelIAEnabled)
	end)
end
