return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact
	local AlertView = require(script.Parent.AlertView)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function(context)
			local _, cleanup = context.UnitTestHelpers.mountStyledFrame(Roact.createElement(AlertView))

			cleanup()
		end)
	end)

	describe("props", function()
		it("should accept the props specified by the API docs", function(context)
			local _, cleanup = context.UnitTestHelpers.mountStyledFrame(Roact.createElement(AlertView, {
				Visible = true,
				contentPaddingLeft = 5,
				contentPaddingRight = 5,
				contentPaddingBottom = 5,
				contentPaddingTop = 5,
			}))

			cleanup()
		end)
	end)

end
