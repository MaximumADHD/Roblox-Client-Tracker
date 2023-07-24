local ChromeService = require(script.Parent.Parent.Service)
local CommonIcon = require(script.Parent.CommonIcon)
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

return ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = "trust_and_safty",
	label = "Report",
	activated = function(self)
		local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
		if SettingsHub:GetVisibility() then
			SettingsHub:SetVisibility(false)
		else
			SettingsHub:SetVisibility(true, false, SettingsHub.Instance.ReportAbusePage)
		end
	end,
	components = {
		Icon = function(props)
			return CommonIcon("icons/menu/protection")
		end,
	},
})
