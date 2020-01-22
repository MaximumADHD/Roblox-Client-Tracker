local RunService = game:GetService("RunService")

--[[
	CLILUACORE-314: This should be something we get from MarketplaceService,
	so that we'll always be in sync w/ the engine about whether or
	not we're mocking purchases
]]
local function isMockingPurchases()
	return RunService:IsStudio()
end

return isMockingPurchases