return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact

	local ConversationCell = require(script.Parent.ConversationCell)

	describe("prop user", function()
		it("GIVEN a user model", function(context)
			local conversation = {
				titleText = "titleText",
				presenceText = "presenceText",
				presenceImage = "presenceImage",

				presence = "presence",
				userId = "userId",

				thumbnails = { "", },
			}

			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(ConversationCell, {
				conversation = conversation,
			}))

			cleanup()
		end)
	end)
end
