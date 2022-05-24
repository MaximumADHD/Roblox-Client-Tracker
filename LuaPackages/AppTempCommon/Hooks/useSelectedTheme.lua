--[[
	A hook used to get the currently selected theme ("light" or "dark")
	and rerender whenever it changes.
]]

local CorePackages = game:GetService("CorePackages")
local NotificationService = game:GetService("NotificationService")

local React = require(CorePackages.Packages.React)

local function useSelectedTheme()
	local currentTheme, setCurrentTheme = React.useState(string.lower(NotificationService.SelectedTheme))

	React.useEffect(function()
		local connection = NotificationService:GetPropertyChangedSignal("SelectedTheme"):Connect(function()
			setCurrentTheme(string.lower(NotificationService.SelectedTheme))
		end)

		return function()
			connection:Disconnect()
		end
	end)

	return currentTheme
end

return useSelectedTheme
