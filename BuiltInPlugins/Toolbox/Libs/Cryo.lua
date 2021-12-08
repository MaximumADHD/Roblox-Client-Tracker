local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
if FFlagToolboxDeduplicatePackages then
	error("Deprecated Libs Cryo being used when FFlagToolboxDeduplicatePackages is enabled. Use Packages.Cryo instead.")
end

return {
	Dictionary = require(script.Dictionary),
	List = require(script.List),
	isEmpty = require(script.isEmpty),
	None = require(script.None),
}