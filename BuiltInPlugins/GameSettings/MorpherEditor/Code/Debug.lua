-- singleton

local Debug = {}

-- IsInDevelopment enables small hacks which make development easier e.g allowing more than one Morpher Editor on the ribbon
Debug.IsInDevelopment = false

function Debug.GetRoactRoduxPath(pluginRoot, serviceFunctions)
	return Debug.IsInDevelopment and pluginRoot.Libraries.DevelopmentOnly or serviceFunctions.waitForCorePackages()
end

return Debug