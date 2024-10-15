local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local IXPServiceWrapper = require(CoreGuiModules.Common.IXPServiceWrapper)
local FFlagClientToastNotificationsRedirect = game:DefineFastFlag("ClientToastNotificationsRedirect2", false)
local layerName = game:DefineFastString("ClientToastNotificationsRedirectLayerName", "Notification.Toast")
local layerValue = game:DefineFastString("ClientToastNotificationsRedirectLayerValue", "NotificationRedirect")
local layerFetchSuccess = nil
local layerData = nil

if FFlagClientToastNotificationsRedirect then
    layerFetchSuccess, layerData = pcall(function()
        return IXPServiceWrapper:GetLayerData(layerName)
    end)
end

return function()
    return FFlagClientToastNotificationsRedirect and layerFetchSuccess and layerData and layerData[layerValue]
end
