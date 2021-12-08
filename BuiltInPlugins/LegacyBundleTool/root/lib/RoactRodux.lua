local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
if FFlagToolboxDeduplicatePackages then
	error("Deprecated Libs RoactRodux being used when FFlagToolboxDeduplicatePackages is enabled. Use Packages.RoactRodux instead.")
end

local StoreProvider = require(script.StoreProvider)
local connect = require(script.connect)
local getStore = require(script.getStore)

return {
	StoreProvider = StoreProvider,
	connect = connect,
	UNSTABLE_getStore = getStore,
	UNSTABLE_connect2 = connect,
}