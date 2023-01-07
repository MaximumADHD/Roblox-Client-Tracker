local DiscoverabilityModal = script.Parent.Parent.Parent
local dependencies = require(DiscoverabilityModal.dependencies)

local React = dependencies.React

local DiscoverabilityContext = require(DiscoverabilityModal.Components.DiscoverabilityContext.DiscoverabilityContext)
local DiscoverabilityContainer =
	require(DiscoverabilityModal.Components.DiscoverabilityOverlay.DiscoverabilityOverlayContainer)

local function DiscoverabilityOverlayEntryPoint(props)
	return React.createElement(DiscoverabilityContext(DiscoverabilityContainer), props)
end

return DiscoverabilityOverlayEntryPoint
