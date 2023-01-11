local Context = require(script.ProfileQRCodeAnalytics)
local setupFireEvent = require(script.setupFireEvent)
local useAnalytics = require(script.useAnalytics)

return {
	Context = Context,
	EventNames = require(script.EventNames),
	setupFireEvent = setupFireEvent,
	useAnalytics = useAnalytics,
}
