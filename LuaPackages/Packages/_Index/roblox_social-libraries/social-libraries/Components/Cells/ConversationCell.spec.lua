return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact
	local ConversationCell = require(script.Parent.ConversationCell)

	local conversation = {
		oneToOne = true,
		lastUpdated = "now",
		conversationId = "conversationId",

		lastLocation = "here",
		presence = "online",
		presenceImage = "",

		title = "conversationTitle",
		thumbnails = {},
		participants = {},
	}

	describe("prop conversation", function()
		it("GIVEN a conversation model", function(context)
			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(ConversationCell, {
				conversation = conversation,
			}))

			cleanup()
		end)
	end)

	describe("props Size", function()
		it("SHOULD resize the topmost element", function(context)
			local size = UDim2.new(1, 100, 1, 100)
			local frame, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(ConversationCell, {
				conversation = conversation,
				Size = size,
			}))
			local guiObject = frame:FindFirstChildWhichIsA("GuiObject")
			expect(guiObject.Size).to.equal(size)

			cleanup()
		end)
	end)
end
