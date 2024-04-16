local ChromeService = require(script.Parent.Parent.Parent.Service)
local CommonIcon = require(script.Parent.Parent.CommonIcon)
local GetFFlagEnableScreenshotUtility = require(script.Parent.Parent.Parent.Flags.GetFFlagEnableScreenshotUtility)

return GetFFlagEnableScreenshotUtility()
		and ChromeService:register({
			initialAvailability = ChromeService.AvailabilitySignal.Available,
			id = "captures",
			label = "Feature.SettingsHub.Label.Captures",
			components = {
				Icon = function(props)
					return CommonIcon("icons/controls/screenrecord")
				end,
			},
		})
	or nil
