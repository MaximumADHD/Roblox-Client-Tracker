--!strict
local ChromeService = require(script.Parent.Parent.Service)

local SelfieViewModule = script.Parent.Parent.Parent.SelfieView
local FFlagSelfieViewEnabled = require(SelfieViewModule.Flags.FFlagSelfieViewEnabled)
local toggleSelfieViewVisibleSignal = require(SelfieViewModule.toggleSelfieViewVisibleSignal)
local SelfieViewIcon = require(SelfieViewModule)

local selfieViewChromeIntegration = ChromeService:register({
	id = "selfie_view",
	label = "",
	activated = function(self)
		toggleSelfieViewVisibleSignal:fire()
	end,
	components = {
		Icon = SelfieViewIcon,
	},
})

if FFlagSelfieViewEnabled then
	selfieViewChromeIntegration.availability:available()
else
	selfieViewChromeIntegration.availability:unavailable()
end

return selfieViewChromeIntegration
