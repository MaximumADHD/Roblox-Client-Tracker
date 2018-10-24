local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")

local Roact = require(CorePackages.Roact)

if RunService:IsStudio() and not RunService:IsRunning() then
	return nil
end

local PurchasePromptApp = require(script.Parent.Components.PurchasePromptApp)

Roact.mount(Roact.createElement(PurchasePromptApp), CoreGui, "PurchasePromptApp")

return nil