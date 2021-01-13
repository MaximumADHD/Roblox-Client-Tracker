local Root = script.Parent.Parent

local UpsellFlow = require(Root.Enums.UpsellFlow)

local GetFFlagDisableRobuxUpsell = require(Root.Flags.GetFFlagDisableRobuxUpsell)

local function getUpsellFlow(platform)
	if GetFFlagDisableRobuxUpsell() then
		return UpsellFlow.Unavailable
	end

	if platform == Enum.Platform.Windows or platform == Enum.Platform.OSX or platform == Enum.Platform.Linux then
		return UpsellFlow.Web
	elseif platform == Enum.Platform.IOS or platform == Enum.Platform.Android or platform == Enum.Platform.UWP then
		return UpsellFlow.Mobile
	elseif platform == Enum.Platform.XBoxOne then
		return UpsellFlow.Xbox
	end

	return UpsellFlow.None
end

return getUpsellFlow
