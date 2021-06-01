return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact

	local AlertViewSoakArea = require(script.Parent.AlertViewSoakArea)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function(context)
			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(AlertViewSoakArea))

			cleanup()
		end)
	end)

	describe("props", function()
		it("should accept the props specified by the API docs", function(context)
			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(AlertViewSoakArea, {
				Visible = true,
				BackgroundTransparency = 1,
				BackgroundColor3 = Color3.fromRGB(0, 0, 255),
			}))

			cleanup()
		end)
	end)

end
