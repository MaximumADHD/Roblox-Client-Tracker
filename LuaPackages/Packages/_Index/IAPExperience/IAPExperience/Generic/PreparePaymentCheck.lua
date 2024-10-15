local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local PaymentPlatform = require(IAPExperienceRoot.Enums.PaymentPlatform)
local Url = require(CorePackages.Workspace.Packages.Http).Url
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local IsVRAppBuild = require(CorePackages.Workspace.Packages.AppCommonLib).IsVRAppBuild
local GetBlockingConsolePreparePaymentCheck = require(IAPExperienceRoot.Flags.getBlockingConsolePreparePaymentCheck)
local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol).default
local counterConfig = require(GenericRoot.Events.PreparePaymentCheckCounter)

function GetPaymentMethod(platform: Enum.Platform)
	if platform == Enum.Platform.PS4 then
		return "PlaystationStore"
	elseif platform == PaymentPlatform.Maquettes then
		return "QuestStore"
	elseif platform == Enum.Platform.XBoxOne then
		return "XboxStore"
	end
	return ""
end

function IsPreparePaymentSuccessful(paymentMethod: string, robuxPackageId: string) 
	local data = HttpService:JSONEncode({
		paymentMethod = paymentMethod,
		providerProductId = robuxPackageId,
	})

	-- Make API call
	local success, response = pcall(function()
		return HttpRbxApiService:PostAsyncFullUrl(Url.APIS_URL .. "payments-gateway/v1/prepare-payment", data)
	end)

	if not success then
		LoggingProtocol:logRobloxTelemetryCounter(counterConfig, 1.0, { paymentMethod = paymentMethod, result = "Error", })
		return true
	elseif HttpService:JSONDecode(response).isSuccess then
		LoggingProtocol:logRobloxTelemetryCounter(counterConfig, 1.0, { paymentMethod = paymentMethod, result = "Success", })
		return true
	else
		LoggingProtocol:logRobloxTelemetryCounter(counterConfig, 1.0, { paymentMethod = paymentMethod, result = "Failed", })
		return false
	end
end

function ConsolePreparePaymentCheck(robuxPackageId: string)
	local platform = UserInputService:GetPlatform()
	local paymentMethod = GetPaymentMethod(platform)

	-- Xbox pre-check is performed in native code.  Performing this check will cause analytics problems.
	-- TODO:  Remove Xbox pre-check code and this early return statement.
	if paymentMethod == "" or platform == Enum.Platform.XBoxOne then
		return true
	end

	return IsPreparePaymentSuccessful(paymentMethod, robuxPackageId)
end

return function(robuxPackageId: string)
	-- TODO:  Could be expanded to handle all preparePayment checks
	if IsVRAppBuild() or GuiService:IsTenFootInterface() then
		local out = ConsolePreparePaymentCheck(robuxPackageId)
		if not GetBlockingConsolePreparePaymentCheck() then
			out = true
		end
		return out
	end
	return true
end
