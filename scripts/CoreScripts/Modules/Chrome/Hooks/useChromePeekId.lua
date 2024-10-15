local CorePackages = game:GetService("CorePackages")

local ChromeService = require(script.Parent.Parent.Service)
local ChromeTypes = require(script.Parent.Parent.Service.Types)
local useObservableValue = require(script.Parent.useObservableValue)

local GetFFlagFixPeekTogglingWhenSpammingUnibar =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagFixPeekTogglingWhenSpammingUnibar

return function(): ChromeTypes.PeekId?
	assert(GetFFlagFixPeekTogglingWhenSpammingUnibar(), "FFlagFixPeekTogglingWhenSpammingUnibar is not enabled")
	return useObservableValue(ChromeService:peekId())
end
