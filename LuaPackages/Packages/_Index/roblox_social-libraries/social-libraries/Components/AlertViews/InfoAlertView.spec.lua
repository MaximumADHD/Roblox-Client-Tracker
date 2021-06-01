return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact

	local InfoAlertView = require(script.Parent.InfoAlertView)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function(context)
			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(InfoAlertView))

			cleanup()
		end)
	end)
end
