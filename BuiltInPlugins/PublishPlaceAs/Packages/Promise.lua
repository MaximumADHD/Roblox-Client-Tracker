-- REMOVE WITH FFlagPublishPlaceAsDeduplicatePackages

local OldPackages = script.Parent.Parent.OldPackages

local package = OldPackages.Promise

if package.ClassName == "ModuleScript" then
	return require(package)
end

return package
