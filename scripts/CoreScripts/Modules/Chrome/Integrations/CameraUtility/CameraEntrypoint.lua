local CorePackages = game:GetService("CorePackages")

local ChromeService = require(script.Parent.Parent.Parent.Service)
local CommonIcon = require(script.Parent.Parent.CommonIcon)
local GetFFlagEnableScreenshotUtility =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableScreenshotUtility

return GetFFlagEnableScreenshotUtility()
		and ChromeService:register({
			initialAvailability = ChromeService.AvailabilitySignal.Available,
			id = "camera_entrypoint",
			label = "Feature.SettingsHub.Label.Captures",
			activated = function(self)
				ChromeService:toggleCompactUtility("camera_utility")
			end,
			components = {
				Icon = function(props)
					return CommonIcon("icons/controls/cameraOff")
				end,
			},
		})
	or nil
