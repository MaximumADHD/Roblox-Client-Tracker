return {
	dependencies = require(script.dependencies),
	["jest.config"] = script["jest.config"],
	renderToastNotificationContainer = require(script.renderToastNotification),
	ToastNotificationContainer = require(script.toastNotificationContainer),
}
