local ChromeService = require(script.Parent.Parent.Parent.Service)
local CommonIcon = require(script.Parent.Parent.CommonIcon)
local GetFFlagEnableScreenshotUtility = require(script.Parent.Parent.Parent.Flags.GetFFlagEnableScreenshotUtility)

return GetFFlagEnableScreenshotUtility()
		and ChromeService:register({
			initialAvailability = ChromeService.AvailabilitySignal.Available,
			id = "camera_entrypoint",
			-- TODO this needs it's own label and image
			label = "Feature.SettingsHub.Label.Captures",
			activated = function(self)
				ChromeService:toggleCompactUtility("camera_utility")
			end,
			components = {
				Icon = function(props)
					return CommonIcon("icons/controls/screenrecord")
				end,
			},
		})
	or nil
