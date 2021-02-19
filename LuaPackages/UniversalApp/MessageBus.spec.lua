return function()
	local CorePackages = game:GetService("CorePackages")
	local HttpService = game:GetService("HttpService")

	local MessageBus = require(CorePackages.UniversalApp.MessageBus)
	local tutils = require(CorePackages.Packages.tutils)

	local kTestJSON = "{\"A\":\"Hello\",\"B\":5,\"C\":true}"

	it("should construct valid message ids", function()
		expect(MessageBus.getMessageId("MessageBus", "message")).to.equal("MessageBus.message")
	end)

	it("should serialize message parameters", function()
		local params = HttpService:JSONDecode(kTestJSON)
		local serializedParams = MessageBus.serializeMessageParams(params)
		local deserializedParams = MessageBus.deserializeMessageParams(serializedParams)

		expect(tutils.deepEqual(deserializedParams, params)).to.equal(true)
	end)

	it("should deserialize message parameters", function()
		local params = HttpService:JSONDecode(kTestJSON)
		local deserializedParams = MessageBus.deserializeMessageParams(kTestJSON)

		expect(params.A).to.equal(deserializedParams.A)
		expect(params.B).to.equal(deserializedParams.B)
		expect(params.C).to.equal(deserializedParams.C)
	end)

	it("should receive messages from subscriptions", function(context)
		local subscriber = MessageBus.Subscriber.new()

		local mid = MessageBus.getMessageId("MessageBus", "message")
		local originalParams = HttpService:JSONDecode(kTestJSON)
		local receivedMessage = false;

		subscriber:subscribe(mid, function(params)
			receivedMessage = true
			expect(tutils.deepEqual(params, originalParams)).to.equal(true)
		end)

		expect(subscriber:getSubscriptionCount()).to.equal(1)
		expect(receivedMessage).to.equal(false)

		MessageBus.publish(mid, originalParams)

		wait()

		expect(receivedMessage).to.equal(true)

		subscriber:unsubscribe(mid)

		expect(subscriber:getSubscriptionCount()).to.equal(0)
	end)

	it("should only be able to subscribe to a message once", function(context)
		local subscriber = MessageBus.Subscriber.new()

		local mid = MessageBus.getMessageId("MessageBus", "message")
		local params = HttpService:JSONDecode(kTestJSON)
		local receivedMessage = false;
		subscriber:subscribe(mid, function(params) end)
		expect(subscriber:getSubscriptionCount()).to.equal(1)

		subscriber:subscribe(mid, function(params) end)
		expect(subscriber:getSubscriptionCount()).to.equal(1)

		subscriber:unsubscribeFromAllMessages()

		expect(subscriber:getSubscriptionCount()).to.equal(0)
	end)

	it("should throw when unsubscribing from a message not subscribed to", function(context)
		local subscriber = MessageBus.Subscriber.new()

		local mid = MessageBus.getMessageId("MessageBus", "message")
		expect(function()
			subscriber:unsubscribe(mid)
		end).to.throw()
	end)
end
