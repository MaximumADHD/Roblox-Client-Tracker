local ContentProvider = game:GetService("ContentProvider")
local GuiService = game:GetService("GuiService")
local MarketplaceService = game:GetService("MarketplaceService")
local PlatformService = nil
pcall(function()
	PlatformService = game:GetService("PlatformService")
end)

local BASE_URL = string.gsub(ContentProvider.BaseUrl:lower(), "/m.", "/www.")

local PlatformInterface = {}

function PlatformInterface.new()
	local service = {}

	setmetatable(service, {
		__tostring = function()
			return "Service(PlatformInterface)"
		end,
	})

	function service.startRobuxUpsellWeb()
		local url = ("%sUpgrades/Robux.aspx"):format(BASE_URL)

		GuiService:OpenBrowserWindow(url)
	end

	function service.startBuildersClubUpsellWeb()
		local url = ("%sUpgrades/BuildersClubMemberships.aspx"):format(BASE_URL)

		GuiService:OpenBrowserWindow(url)
	end

	function service.promptNativePurchase(player, mobileProductId)
		return MarketplaceService:PromptNativePurchase(player, mobileProductId)
	end

	function service.beginPlatformStorePurchase(xboxProductId)
		return PlatformService:BeginPlatformStorePurchase(xboxProductId)
	end

	return service
end

return PlatformInterface