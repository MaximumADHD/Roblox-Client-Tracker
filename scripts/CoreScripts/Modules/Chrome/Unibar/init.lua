local CorePackages = game:GetService("CorePackages")

local GetFFlagUnibarContextStack = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagUnibarContextStack

if GetFFlagUnibarContextStack() then
	return require(script.UnibarMenuWrapper)
else
	return require(script.UnibarMenu) :: never
end
