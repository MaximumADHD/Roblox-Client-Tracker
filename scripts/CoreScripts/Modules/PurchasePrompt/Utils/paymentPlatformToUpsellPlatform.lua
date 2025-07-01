local Root = script.Parent.Parent
local PaymentPlatform = require(Root.Enums.PaymentPlatform)

-- Local implementation of payment platform conversion
-- See https://github.rbx.com/Roblox/payments-gateway/blob/master/services/payments-gateway-api/src/Models/Requests/GetUpsellProductRequest.cs for types
return function(paymentPlatform)
    if paymentPlatform == PaymentPlatform.Web then
        return "Web"
    elseif paymentPlatform == PaymentPlatform.Apple then
        return "AppleAppStore"
    elseif paymentPlatform == PaymentPlatform.Google then
        return "GooglePlayStore"
    elseif paymentPlatform == PaymentPlatform.Amazon then
        return "AmazonStore"
    elseif paymentPlatform == PaymentPlatform.UWP then
        return "WindowsStore"
    elseif paymentPlatform == PaymentPlatform.Xbox then
        return "XboxStore"
    elseif paymentPlatform == PaymentPlatform.Maquettes then
        return "MaquettesStore"
    elseif paymentPlatform == PaymentPlatform.Palisades then
        return "PalisadesStore"
    elseif paymentPlatform == PaymentPlatform.Microsoft then
        return "MicrosoftStore"
    elseif paymentPlatform == PaymentPlatform.MilkyWay then
        return "MilkyWayStore"
    else
        return "None"
    end
end