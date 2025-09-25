local Chrome = script:FindFirstAncestor("Chrome")

local ChromeService = require(Chrome.Service)
local registerConnectIntegration = require(script.Parent.registerConnectIntegration)
local isConnectDropdownEnabled = require(script.Parent.isConnectDropdownEnabled)
-- "Connect" icon and option are used to open AppChat (InExperienceAppChat)
-- It will also serve as an entry point for Party

local integration = nil
if isConnectDropdownEnabled() then
	integration = registerConnectIntegration("connect_dropdown", ChromeService.AvailabilitySignal.Available)
end

return integration
