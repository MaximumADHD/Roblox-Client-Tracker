local CorePackages = game:GetService("CorePackages")
local StarterGui = game:GetService("StarterGui")
local React = require(CorePackages.Packages.React)

function useCoreGuiEnabled(coreGui)
	local enabled, setEnabled = React.useState(StarterGui:GetCoreGuiEnabled(coreGui))
	React.useEffect(function()
		local coreGuiChangedSignalConn = StarterGui.CoreGuiChangedSignal:Connect(
			function(coreGuiType: Enum.CoreGuiType, enabled: boolean)
				if coreGuiType == coreGui then
					setEnabled(enabled)
				end
			end
		)
		setEnabled(StarterGui:GetCoreGuiEnabled(coreGui))
		return function()
			coreGuiChangedSignalConn:Disconnect()
		end
	end, { coreGui })
	return enabled
end

return useCoreGuiEnabled
