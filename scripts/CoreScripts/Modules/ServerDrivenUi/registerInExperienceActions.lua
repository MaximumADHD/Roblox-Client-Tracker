local CorePackages = game:GetService("CorePackages")

-- Each package required here ships in the in-experience bundle; add a feature package only once its actions are vetted in experience.
local function registerInExperienceActions()
	require(CorePackages.Workspace.Packages.SduiSharedContent).registerSharedActions()
	require(CorePackages.Workspace.Packages.ServerDrivenUi).registerDiscoveryActions()
end

return registerInExperienceActions
