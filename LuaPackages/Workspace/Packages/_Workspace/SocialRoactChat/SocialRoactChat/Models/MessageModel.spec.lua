local Message = require(script.Parent.MessageModel)

return function()
	describe("WHEN newSystemMessage is called", function()
		it("SHOULD construct from a localizedTextKey", function()
			local key = "Feature.Text.Key"
			local systemMessage = Message.newSystemMessage(key)
			expect(systemMessage).to.be.ok()
			expect(systemMessage.localizedTextKey).to.equal(key)
		end)
	end)

	describe("WHEN fromWeb factory method is called", function()
		local function createMockResponse(content, contentType)
			return {
				messageType = contentType,
				id = "1-2-3-4",
				senderTargetId = 987789,
				senderType = "User",
				content = content,
				sent = "2018-09-24T16:22:23.233Z",
			}
		end

		it("SHOULD not construct from nil response", function()
			local message = Message.fromWeb(nil, "", "")
			expect(message).to.equal(nil)
		end)

		it("SHOULD not construct from empty response", function()
			local message = Message.fromWeb({}, "", "")
			expect(message).to.equal(nil)
		end)

		it("SHOULD construct from PlainText message response", function()
			local mockContent = "mockContent"
			local message = Message.fromWeb(createMockResponse(mockContent, "PlainText"), "", "")

			expect(message).to.be.ok()
			expect(message.content).to.equal(mockContent)
		end)

		it("SHOULD construct from PlainText message response with empty content", function()
			local message = Message.fromWeb(createMockResponse("", "PlainText"), "", "")

			expect(message).to.be.ok()
			expect(message.content).to.equal("")
		end)

		it("SHOULD construct from PlainText message response with nil content", function()
			local message = Message.fromWeb(createMockResponse(nil, "PlainText"), "", "")

			expect(message).to.be.ok()
			expect(message.content).to.equal(nil)
		end)

		it(
			"SHOULD construct from non PlainText message response with placeholder content (TBD, empty for now)",
			function()
				local message = Message.fromWeb(createMockResponse(nil, "SomeUnknownContent"), "", "")

				expect(message).to.be.ok()
				expect(message.content).to.equal(nil)
			end
		)
	end)

	describe("WHEN fromSentWeb factory method is called", function()
		local function createSentMockResponse(content, contentType)
			return {
				messageType = contentType,
				messageId = "1-2-3-4",
				senderType = "User",
				content = content,
				sent = "2018-09-24T16:22:23.233Z",
			}
		end

		it("SHOULD not construct from nil response", function()
			local message = Message.fromSentWeb(nil, "")
			expect(message).to.equal(nil)
		end)

		it("SHOULD not construct from empty response", function()
			local message = Message.fromSentWeb({}, "")
			expect(message).to.equal(nil)
		end)

		it("SHOULD construct from PlainText message response", function()
			local mockContent = "mockContent"
			local message = Message.fromSentWeb(createSentMockResponse(mockContent, "PlainText"), "")

			expect(message).to.be.ok()
			expect(message.content).to.equal(mockContent)
		end)

		it("SHOULD construct from PlainText message response with empty content", function()
			local message = Message.fromSentWeb(createSentMockResponse("", "PlainText"), "")

			expect(message).to.be.ok()
			expect(message.content).to.equal("")
		end)

		it("SHOULD construct from PlainText message response with nil content", function()
			local message = Message.fromSentWeb(createSentMockResponse(nil, "PlainText"), "")

			expect(message).to.be.ok()
			expect(message.content).to.equal(nil)
		end)

		it(
			"SHOULD construct from non PlainText message response with placeholder content (TBD, empty for now)",
			function()
				local message = Message.fromSentWeb(createSentMockResponse(nil, "SomeUnknownContent"), "")

				expect(message).to.be.ok()
				expect(message.content).to.equal(nil)
			end
		)
	end)

	describe("WHEN newSending factory method is called", function()
		local function createSendingMock(content, contentType)
			return {
				messageType = contentType,
				order = 1,
				id = "mock-id",
				content = content,
				conversationId = "123",
				sent = "2018-09-24T16:22:23.233Z",
			}
		end

		it("SHOULD throw from nil", function()
			expect(function()
				Message.newSending(nil)
			end).to.throw()
		end)

		it("SHOULD throw from empty response", function()
			expect(function()
				Message.newSending({})
			end).to.throw()
		end)

		it("SHOULD construct from PlainText message response", function()
			local mockContent = "mockContent"
			local message = Message.newSending(createSendingMock(mockContent, "PlainText"))

			expect(message).to.be.ok()
			expect(message.content).to.equal(mockContent)
		end)

		it("SHOULD construct from PlainText message response with empty content", function()
			local message = Message.newSending(createSendingMock("", "PlainText"))

			expect(message).to.be.ok()
			expect(message.content).to.equal("")
		end)

		it("SHOULD construct from non PlainText message", function()
			local message = Message.newSending(createSendingMock(123, "SomeUnknownContent"))

			expect(message).to.be.ok()
			expect(message.content).to.equal(123)
			expect(message.messageType).to.equal("SomeUnknownContent")
		end)
	end)
end
