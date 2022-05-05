--[[
	THIS IS NOT A REAL PACKAGE CREATED BY ROTRIEVER. IT IS ONLY PRETENDING TO BE.
	ONCE THIS LIBRARY IS ACTUALLY PUT ONTO GITHUB, IT CAN BE PULLED IN USING ROTRIEVER.
]]
local PackageIndex = script.Parent._Legacy

local package = PackageIndex["Http"].Packages["Http"]

if package.ClassName == "ModuleScript" then
	return require(package)
end

return package