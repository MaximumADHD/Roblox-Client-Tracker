local Root = script
local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

local Roact = PurchasePromptDeps.Roact

local PurchasePromptApp = require(script.Components.PurchasePromptApp)

local function mountPurchasePrompt()
	if RunService:IsStudio() and RunService:IsEdit() then
		return nil
	end

	local handle = Roact.mount(Roact.createElement(PurchasePromptApp), CoreGui, "PurchasePromptApp")

	return handle
end

return {
	mountPurchasePrompt = mountPurchasePrompt,
}
