local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

return function(windowSize): boolean
	local windowSizeIsLarge, setWindowSizeIsLarge = React.useState(windowSize:getIsLarge())

	React.useEffect(function()
		local conn = windowSize:connect(function()
			setWindowSizeIsLarge(windowSize:getIsLarge())
		end)

		if windowSizeIsLarge ~= windowSize:getIsLarge() then
			setWindowSizeIsLarge(windowSize:getIsLarge())
		end

		return function()
			conn:disconnect()
		end
	end, { windowSize })

	return windowSizeIsLarge
end
