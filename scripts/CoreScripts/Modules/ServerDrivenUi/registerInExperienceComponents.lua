local CorePackages = game:GetService("CorePackages")

-- Each package required here ships in the in-experience bundle; add a feature package only once its components are vetted in experience.
local function registerInExperienceComponents()
	require(CorePackages.Workspace.Packages.SduiSharedContent).registerSharedUiComponents()
	require(CorePackages.Workspace.Packages.SduiFoundation).registerFoundationComponents()
	require(CorePackages.Workspace.Packages.ServerDrivenUi).registerDiscoveryUiComponents()
end

return registerInExperienceComponents
