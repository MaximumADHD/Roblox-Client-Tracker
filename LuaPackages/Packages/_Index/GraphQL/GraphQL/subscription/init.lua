local subscribeModule = require(script.subscribe)
local subscribe = subscribeModule.subscribe
local createSourceEventStream = subscribeModule.createSourceEventStream

export type SubscriptionArgs = subscribeModule.SubscriptionArgs

return {
	subscribe = subscribe,
	createSourceEventStream = createSourceEventStream,
}
