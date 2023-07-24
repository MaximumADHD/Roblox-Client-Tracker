local AdService = game:GetService("AdService")
local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local AdTeleportPromptHandler = require(RobloxGui.Modules.Ads.AdTeleportPromptHandler)

local PromptHandler

function onPortalPrompt(destinationPlaceId: number, passedPortal: AdPortal, requiresNoButton: boolean)
	if PromptHandler and PromptHandler.hasActiveWindow then
		return
	end

	PromptHandler = AdTeleportPromptHandler.new(passedPortal, destinationPlaceId) :: any
	if PromptHandler == nil then
		error("Error in instantiating handler for adteleportprompt.")
		return
	end

	assert(PromptHandler ~= nil, "Appeasing the type checking")

	local success, experienceNameOrError = pcall(function()
		return PromptHandler:fetchTitle()
	end)

	if not success or experienceNameOrError == nil then
		local shouldPrompt, rejectedByDistance = false, false
		PromptHandler:rejectPrompt(shouldPrompt, rejectedByDistance)
		error("Error: Marketplace service failed to get placename for ad portal prompt.")
		return
	end

	local experienceName = experienceNameOrError
	PromptHandler:instantiatePrompt(experienceName, requiresNoButton)
	PromptHandler:updateCreateTime()
end

-- Remove cast when PortalAdPrompt EngineFeature is available on all versions.
(AdService :: any).PortalPrompt:Connect(onPortalPrompt)
