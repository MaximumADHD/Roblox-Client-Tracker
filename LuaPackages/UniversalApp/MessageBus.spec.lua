return function()
	local CorePackages = game:GetService("CorePackages")
	local HttpService = game:GetService("HttpService")

	local MessageBus = require(CorePackages.UniversalApp.MessageBus)
	local t = require(CorePackages.Packages.t)
	local tutils = require(CorePackages.Packages.tutils)

	local kTestJSON = "{\"A\":\"Hello\",\"B\":5,\"C\":true}"
	local kTestValidator = t.strictInterface({
		A = t.string,
		B = t.number,
		C = t.boolean,
	})
	local kTestMessageMetadata = {
		mid = MessageBus.getMessageId("MessageBus", "message"),
		validateParams = kTestValidator,
	}

	describe("MessageBus", function()
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

			local originalParams = HttpService:JSONDecode(kTestJSON)
			local receivedMessage = false;

			subscriber:subscribe(kTestMessageMetadata, function(params)
				receivedMessage = true
				expect(tutils.deepEqual(params, originalParams)).to.equal(true)
			end)

			expect(subscriber:getSubscriptionCount()).to.equal(1)
			expect(receivedMessage).to.equal(false)

			MessageBus.publish(kTestMessageMetadata, originalParams)

			wait()

			expect(receivedMessage).to.equal(true)

			subscriber:unsubscribe(kTestMessageMetadata)

			expect(subscriber:getSubscriptionCount()).to.equal(0)
		end)

		it("should receive the last message when sticky is true or not specified", function(context)
			local subscriber = MessageBus.Subscriber.new()

			local params = HttpService:JSONDecode(kTestJSON)
			local received = false;
			MessageBus.publish(kTestMessageMetadata, params)
			subscriber:subscribe(kTestMessageMetadata, function(params)
				received = true
			end, true)
			wait()
			expect(received).to.equal(true)
			subscriber:unsubscribe(kTestMessageMetadata)

			received = false;
			MessageBus.publish(kTestMessageMetadata, params)
			subscriber:subscribe(kTestMessageMetadata, function(params)
				received = true
			end)
			wait()
			expect(received).to.equal(true)
			subscriber:unsubscribe(kTestMessageMetadata)
		end)

		it("should only receive new messages when sticky is false", function(context)
			local subscriber = MessageBus.Subscriber.new()

			local params = HttpService:JSONDecode(kTestJSON)
			local received = false;
			MessageBus.publish(kTestMessageMetadata, params)
			subscriber:subscribe(kTestMessageMetadata, function(params)
				received = true
				expect(tutils.deepEqual(params, params)).to.equal(true)
			end, false)

			wait()
			expect(received).to.equal(false)
			MessageBus.publish(kTestMessageMetadata, params)
			wait()
			expect(received).to.equal(true)
			subscriber:unsubscribe(kTestMessageMetadata)
		end)

		it("should return the last message published", function(context)
			expect(MessageBus.getLast(kTestMessageMetadata)).to.equal(nil)
			local params = HttpService:JSONDecode(kTestJSON)
			MessageBus.publish(kTestMessageMetadata, params)
			expect(tutils.deepEqual(MessageBus.getLast(kTestMessageMetadata), params)).to.equal(true)
		end)

		it("should only be able to subscribe to a message once", function(context)
			local subscriber = MessageBus.Subscriber.new()

			local params = HttpService:JSONDecode(kTestJSON)
			local receivedMessage = false;
			subscriber:subscribe(kTestMessageMetadata, function(params) end)
			expect(subscriber:getSubscriptionCount()).to.equal(1)

			subscriber:subscribe(kTestMessageMetadata, function(params) end)
			expect(subscriber:getSubscriptionCount()).to.equal(1)

			subscriber:unsubscribeFromAllMessages()

			expect(subscriber:getSubscriptionCount()).to.equal(0)
		end)

		it("should throw when unsubscribing from a message not subscribed to", function(context)
			local subscriber = MessageBus.Subscriber.new()

			local mid = MessageBus.getMessageId("MessageBus", "message")
			expect(function()
				subscriber:unsubscribe(kTestMessageMetadata)
			end).to.throw()
		end)
	end)
end
