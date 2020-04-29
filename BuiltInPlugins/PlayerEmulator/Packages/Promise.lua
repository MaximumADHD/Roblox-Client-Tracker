--[[
	THIS IS NOT A REAL PACKAGE CREATED BY ROTRIEVER. IT IS ONLY PRETENDING TO BE.
	ONCE THIS LIBRARY IS ACTUALLY PUT ONTO GITHUB, IT CAN BE PULLED IN USING ROTRIEVER.
]]
local PackageIndex = script.Parent.package_index

local package = PackageIndex["Promise-000000000000-0000000001"].Packages["Promise"]

if package.ClassName == "ModuleScript" then
	return require(package)
end

return package