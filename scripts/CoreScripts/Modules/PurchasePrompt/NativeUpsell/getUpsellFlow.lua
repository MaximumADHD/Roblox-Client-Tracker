local Root = script.Parent.Parent

local UpsellFlow = require(Root.Enums.UpsellFlow)
local GetFFlagEnablePalisadesPaymentsPlatform = require(Root.Flags.GetFFlagEnablePalisadesPaymentsPlatform)

local function getUpsellFlow(platform)
	if platform == Enum.Platform.Windows or platform == Enum.Platform.OSX or platform == Enum.Platform.Linux then
		return UpsellFlow.Web
	elseif platform == Enum.Platform.IOS or platform == Enum.Platform.Android or platform == Enum.Platform.UWP then
		return UpsellFlow.Mobile
	elseif platform == Enum.Platform.XBoxOne then
		return UpsellFlow.Xbox
	-- TODO(UBIQUITY-852): Remove the implementation based on solutions in UBIQUITY-852.
	elseif GetFFlagEnablePalisadesPaymentsPlatform() then
		return UpsellFlow.Mobile
	end

	return UpsellFlow.None
end

return getUpsellFlow
