local Root = script.Parent.Parent
local GetFFlagPPUpsellEndpoint = require(Root.Flags.GetFFlagPPUpsellEndpoint)

game:DefineFastFlag("DesktopPurchaseWarnings", false)

return function()
	return game:GetFastFlag("DesktopPurchaseWarnings") and GetFFlagPPUpsellEndpoint()
end
