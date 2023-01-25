local Root = script.Parent.Parent

local PaymentPlatform = require(Root.Enums.PaymentPlatform)

return function(platform, isLuobu, isAmazon)
	if platform == Enum.Platform.XBoxOne then
		return PaymentPlatform.Xbox
	elseif platform == Enum.Platform.IOS then
		if isLuobu then
			return PaymentPlatform.Midas
		else
			return PaymentPlatform.Apple
		end
	elseif platform == Enum.Platform.Windows or platform == Enum.Platform.OSX or platform == Enum.Platform.Linux then
		return PaymentPlatform.Web
	elseif platform == Enum.Platform.Android then
		-- Always Midas before Amazon, Midas can exist on Amazon
		if isLuobu then
			return PaymentPlatform.Midas
		elseif isAmazon then
			return PaymentPlatform.Amazon
		else
			return PaymentPlatform.Google
		end
	elseif platform == Enum.Platform.UWP then
		return PaymentPlatform.UWP
	else
		return PaymentPlatform.None
	end
end
