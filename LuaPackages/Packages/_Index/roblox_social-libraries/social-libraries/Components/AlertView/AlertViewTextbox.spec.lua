return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact

	local AlertViewTextbox = require(script.Parent.AlertViewTextbox)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function(context)
			local _, cleanup =  context.UnitTestHelpers.mountStyledFrame(Roact.createElement(AlertViewTextbox))

			cleanup()
		end)
	end)

	describe("props", function()
		it("should accept the props specified by the API docs", function(context)
			local _, cleanup =  context.UnitTestHelpers.mountStyledFrame(Roact.createElement(AlertViewTextbox, {
				LayoutOrder = 1,
			}))

			cleanup()
		end)
	end)
end
