return function()
    local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact

	local RectangularIcon = require(script.Parent.RectangularIcon)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function(context)
			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(RectangularIcon))

			cleanup()
		end)
	end)
end
