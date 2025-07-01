local Root = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")

local PaymentPlatform = require(Root.Enums.PaymentPlatform)
local GetFFlagEnablePalisadesPaymentsPlatform = require(Root.Flags.GetFFlagEnablePalisadesPaymentsPlatform)
local FFlagEnableMicrosoftStorePaymentsPlatform =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableMicrosoftStorePaymentsPlatform
local FFlagEnableMilkyWayPaymentsPlatform =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableMilkyWayPaymentsPlatform

local UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)
local getAppFeaturePolicies = UniversalAppPolicy.getAppFeaturePolicies

-- To add a new payment platform. Also update the Modules.LuaApp.Util.getPaymentFromPlatform for LuaApp.
return function(platform, isLuobu, isAmazon, isMaquettes, isMilkyWay)
	if platform == Enum.Platform.XBoxOne then
		return PaymentPlatform.Xbox
	elseif platform == Enum.Platform.IOS then
		if isLuobu then
			return PaymentPlatform.Midas
		else
			return PaymentPlatform.Apple
		end
	elseif platform == Enum.Platform.Windows or platform == Enum.Platform.OSX or platform == Enum.Platform.Linux then
		if
			FFlagEnableMicrosoftStorePaymentsPlatform and getAppFeaturePolicies().getUsePaymentPlatformMicrosoftStore()
		then
			return PaymentPlatform.Microsoft
		end
		return PaymentPlatform.Web
	elseif platform == Enum.Platform.Android then
		-- Always Midas before Amazon, Midas can exist on Amazon
		if isLuobu then
			return PaymentPlatform.Midas
		elseif isAmazon then
			return PaymentPlatform.Amazon
		elseif isMaquettes then
			return PaymentPlatform.Maquettes
		elseif FFlagEnableMilkyWayPaymentsPlatform and isMilkyWay then
			return PaymentPlatform.MilkyWay
		else
			return PaymentPlatform.Google
		end
	elseif platform == Enum.Platform.UWP then
		return PaymentPlatform.UWP
	elseif GetFFlagEnablePalisadesPaymentsPlatform() and platform == Enum.Platform.PS4 then
		return PaymentPlatform.Palisades
	else
		return PaymentPlatform.None
	end
end
