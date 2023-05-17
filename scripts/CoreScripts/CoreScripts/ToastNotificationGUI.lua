local CorePackages = game:GetService("CorePackages")
local ToastNotificationPackage = require(CorePackages.Workspace.Packages.ToastNotification)
local renderToastNotificationContainer = ToastNotificationPackage.renderToastNotificationContainer

renderToastNotificationContainer({
    renderLocation = "coreScript",
})
