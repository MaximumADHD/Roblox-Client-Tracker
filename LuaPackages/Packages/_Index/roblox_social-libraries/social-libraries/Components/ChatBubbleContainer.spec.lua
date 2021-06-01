return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact

	local ChatBubbleContainer = require(script.Parent.ChatBubbleContainer)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function(context)
			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(ChatBubbleContainer))

			cleanup()
		end)
	end)

	describe("children", function()
		it("should mount children", function(context)
			local tree, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(ChatBubbleContainer, nil, {
				child = Roact.createElement("Folder"),
			}))

			expect(tree:FindFirstChild("child", true)).to.be.ok()

			cleanup()
		end)
	end)

	describe("hasTail prop", function()
		it("should display tail if hasTail prop equals true", function(context)
			local chatBubbleContainer = Roact.createElement(ChatBubbleContainer, {
				hasTail = true,
			})

			local tree, cleanup = context.UnitTestHelpers.mountFrame(chatBubbleContainer)

			local tail = tree:findFirstChild("tail", true)

			expect(tail.Visible).to.equal(true)

			cleanup()
		end)

		it("should not display tail if hasTail prop equals false", function(context)
			local chatBubbleContainer = Roact.createElement(ChatBubbleContainer, {
				hasTail = false,
			})

			local tree, cleanup = context.UnitTestHelpers.mountFrame(chatBubbleContainer)

			local tail = tree:findFirstChild("tail", true)

			expect(tail.Visible).to.equal(false)

			cleanup()
		end)
	end)

	describe("props isPending", function()
		it("SHOULD bubble and tails should be more transparent if pending", function(context)
			local sentMessage = Roact.createElement(ChatBubbleContainer, {
				isPending = false,
				hasTail = true,
			})
			local pendingMessage = Roact.createElement(ChatBubbleContainer, {
				isPending = true,
				hasTail = true,
			})

			local pendingMessageTree, pendingMessageCleanup = context.UnitTestHelpers.mountFrame(pendingMessage)
			local sentMessageTree, sentMessageCleanup = context.UnitTestHelpers.mountFrame(sentMessage)

			local pendingMessageTail = pendingMessageTree:findFirstChild("tail", true)
			local sentMessageTail = sentMessageTree:findFirstChild("tail", true)
			local pendingMessageBubble = pendingMessageTree:findFirstChild("bubble", true)
			local sentMessageBubble = sentMessageTree:findFirstChild("bubble", true)

			expect(pendingMessageTail.ImageTransparency < sentMessageTail.ImageTransparency).to.equal(true)
			expect(pendingMessageBubble.ImageTransparency < sentMessageBubble.ImageTransparency).to.equal(true)
			expect(pendingMessageTail.ImageTransparency == pendingMessageBubble.ImageTransparency).to.equal(true)

			pendingMessageCleanup()
			sentMessageCleanup()
		end)
	end)
end
