local Root = script.Parent.Parent

local UserInputService = game:GetService("UserInputService")

local UpsellFlow = require(Root.Enums.UpsellFlow)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)

return function()
    local platform = UserInputService:GetPlatform()
    local upsellFlow = getUpsellFlow(platform)
    return upsellFlow == UpsellFlow.Web
end
