local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local Types = require(script.Parent.Parent.Service.Types)

return function(integration: Types.IntegrationProps?): UDim2
	if integration and integration.windowSize then
		local windowSize = integration.windowSize

		local windowSizeData, setWindowSizeData = React.useState(windowSize:get())

		React.useEffect(function()
			local conn = windowSize:connect(function()
				setWindowSizeData(windowSize:get())
			end)

			if windowSizeData ~= windowSize:get() then
				setWindowSizeData(windowSize:get())
			end

			return function()
				conn:disconnect()
			end
		end, { integration.id })

		return windowSizeData :: UDim2
	else
		warn("windowSize object not found")
		return UDim2.new()
	end
end
