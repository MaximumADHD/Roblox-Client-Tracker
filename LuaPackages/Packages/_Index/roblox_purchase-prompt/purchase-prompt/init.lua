local Root = script
local LuaPackages = Root.Parent
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

local Roact = require(LuaPackages.Roact)

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