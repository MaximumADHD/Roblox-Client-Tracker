local FFlagPluginManagementDeduplicatePackages = game:GetFastFlag("PluginManagementDeduplicatePackages")

if FFlagPluginManagementDeduplicatePackages then
	return require(script.Parent.Dev.TestEZ)
else
	local PackageIndex = script.Parent._Old

	local package = PackageIndex["TestEZ-28fc8954-17e1408b"].Packages["TestEZ"]

	if package.ClassName == "ModuleScript" then
		return require(package)
	end

	return package
end
