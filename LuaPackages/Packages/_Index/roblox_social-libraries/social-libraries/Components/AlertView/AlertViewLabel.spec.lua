return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact

	local AlertViewLabel = require(script.Parent.AlertViewLabel)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function(context)
			local _, cleanup =  context.UnitTestHelpers.mountStyledFrame(Roact.createElement(AlertViewLabel))

			cleanup()
		end)
	end)

	describe("props", function()
		it("should accept the props specified by the API docs", function(context)
			local _, cleanup =  context.UnitTestHelpers.mountStyledFrame(Roact.createElement(AlertViewLabel, {
				BackgroundTransparency = 0,
				TextSize = 20,
				TextColor3 = Color3.fromRGB(0, 0, 255),
				TextXAlignment = Enum.TextXAlignment.Center,
				onActivated = function()
					print("Clicked!")
				end,
				Text = "Hello!"
			}))

			cleanup()
		end)
	end)
end
