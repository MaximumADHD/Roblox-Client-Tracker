--[[
	Small wrapper for RoactRodux's connect function that
	additionally exposes the original, unconnected component
	for testing
]]
local CorePackages = game:GetService("CorePackages")

local RoactRodux = require(CorePackages.RoactRodux)

local function connectToStore(mapStateToProps, mapDispatchToProps)
	return function(innerComponent)
		local connectedComponent = RoactRodux.UNSTABLE_connect2(
			mapStateToProps,
			mapDispatchToProps
		)(innerComponent)

		function connectedComponent.getUnconnected()
			return innerComponent
		end

		return connectedComponent
	end
end

return connectToStore