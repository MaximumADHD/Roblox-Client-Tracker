return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)

	local Roact = dependencies.Roact

	local SortedList = require(script.Parent.SortedList)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function(context)
			local _, cleanup = context.UnitTestHelpers.mountStyledFrame(Roact.createElement(SortedList))

			cleanup()
		end)
	end)
end
