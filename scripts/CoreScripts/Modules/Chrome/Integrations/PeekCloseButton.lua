local Chrome = script:FindFirstAncestor("Chrome")

local ChromeService = require(Chrome.Service)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local GetFFlagChromePeekArchitecture = require(Chrome.Parent.Flags.GetFFlagChromePeekArchitecture)

return if GetFFlagChromePeekArchitecture()
	then ChromeService:register({
		id = "peek_close",
		label = "CoreScripts.TopBar.MenuToggle",
		activated = function()
			ChromeService:dismissCurrentPeek()
		end,
		components = {
			Icon = function(props)
				return CommonIcon("icons/navigation/close")
			end,
		},
		initialAvailability = ChromeService.AvailabilitySignal.Available,
	})
	else nil
