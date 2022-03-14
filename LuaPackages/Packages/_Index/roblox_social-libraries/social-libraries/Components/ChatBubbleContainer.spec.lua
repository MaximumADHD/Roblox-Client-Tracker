return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect

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

			jestExpect(tree:FindFirstChild("child", true)).never.toBeNil()

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

			jestExpect(tail.Visible).toBe(true)

			cleanup()
		end)

		it("should not display tail if hasTail prop equals false", function(context)
			local chatBubbleContainer = Roact.createElement(ChatBubbleContainer, {
				hasTail = false,
			})

			local tree, cleanup = context.UnitTestHelpers.mountFrame(chatBubbleContainer)

			local tail = tree:findFirstChild("tail", true)

			jestExpect(tail.Visible).toBe(false)

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

			jestExpect(pendingMessageTail.ImageTransparency).toBeLessThan(sentMessageTail.ImageTransparency)
			jestExpect(pendingMessageBubble.ImageTransparency).toBeLessThan(sentMessageBubble.ImageTransparency)
			jestExpect(pendingMessageTail.ImageTransparency).toBe(pendingMessageBubble.ImageTransparency)

			pendingMessageCleanup()
			sentMessageCleanup()
		end)
	end)
end
