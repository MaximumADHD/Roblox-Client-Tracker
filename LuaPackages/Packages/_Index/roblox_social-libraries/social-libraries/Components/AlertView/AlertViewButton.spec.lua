return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact
	local AlertViewButton = require(script.Parent.AlertViewButton)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function(context)
			local _, cleanup = context.UnitTestHelpers.mountStyledFrame(Roact.createElement(AlertViewButton))

			cleanup()
		end)
	end)

	describe("props", function()
		it("should accept the props specified by the API docs", function(context)
			local _, cleanup = context.UnitTestHelpers.mountStyledFrame(Roact.createElement(AlertViewButton, {
				secondary = true,
				Size = UDim2.new(0, 100, 0, 40),
				onActivated = function()
					print("Clicked!")
				end,
				Text = "Hello!"
			}))

			cleanup()
		end)
	end)

end
