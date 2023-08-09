local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local Types = require(script.Parent.Parent.Service.Types)

local noOp = function() end

return function(integration: Types.IntegrationProps?): (UDim2, (UDim2) -> ())
	local windowPosition: UDim2, setWindowPosition: any = UDim2.new(), noOp
	if integration and integration.windowPosition then
		local windowPositionSignal = integration.windowPosition
		windowPosition, setWindowPosition = React.useState(windowPositionSignal:get())

		React.useEffect(function()
			local conn = windowPositionSignal:connect(function()
				setWindowPosition(windowPositionSignal:get())
			end)

			if windowPosition ~= windowPositionSignal:get() then
				setWindowPosition(windowPositionSignal:get())
			end

			return function()
				conn:disconnect()
			end
		end, { integration.id })

		-- Setter for the signal when setWindowSize is triggered
		React.useEffect(function()
			if windowPosition ~= windowPositionSignal:get() then
				windowPositionSignal:requestPosition(windowPosition)
			end
		end, { windowPosition })
	end
	return windowPosition, setWindowPosition
end
