local CoreGui = game:GetService("CoreGui")
local ToastNotifications = script.Parent
local dependencies = require(ToastNotifications.dependencies)
local ToastNotificationContainer = require(ToastNotifications.toastNotificationContainer)
local React = dependencies.React
local ReactRoblox = dependencies.ReactRoblox
local typeModule = require(ToastNotifications.type)

type Props = {
	renderLocation: typeModule.RenderLocation,
}
local TOAST_DISPLAY_ORDER = 13

local renderToastNotificationContainer = function(props: Props)
	local folder = Instance.new("Folder")
	folder.Name = "ToastNotification"
	folder.Parent = CoreGui
	local element = React.createElement(ToastNotificationContainer, {
		displayOrder = TOAST_DISPLAY_ORDER,
		renderLocation = props.renderLocation,
	})
	local root = ReactRoblox.createRoot(folder)
	root:render(element)
end

return renderToastNotificationContainer
