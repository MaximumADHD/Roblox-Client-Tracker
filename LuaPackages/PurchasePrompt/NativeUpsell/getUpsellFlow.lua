local UpsellFlow = require(script.Parent.Parent.UpsellFlow)

local function getUpsellFlow(platform)
	if platform == Enum.Platform.Windows or platform == Enum.Platform.OSX then
		return UpsellFlow.Web
	elseif platform == Enum.Platform.IOS or platform == Enum.Platform.Android or platform == Enum.Platform.UWP then
		return UpsellFlow.Mobile
	elseif platform == Enum.Platform.XBoxOne then
		return UpsellFlow.Xbox
	end

	return UpsellFlow.None
end

return getUpsellFlow