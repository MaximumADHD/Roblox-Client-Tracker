return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)

	local Roact = dependencies.Roact
	local CallbackInputBox = require(script.Parent.CallbackInputBox)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function(context)
			local _, cleanup = context.UnitTestHelpers.mountStyledFrame(Roact.createElement(CallbackInputBox))

			cleanup()
		end)
	end)
end
