--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local ReportConfirmationContainer = require(script.Parent.ReportConfirmationContainer)
	local simpleMountFrame = require(CorePackages.Workspace.Packages.UnitTestHelpers).simpleMountFrame

	describe("lifecycle", function()
		it("SHOULD mount and render without issue", function(context)
			local _, cleanup = simpleMountFrame(Roact.createElement(ReportConfirmationContainer, {
				player = {
					Name = "TheStuff",
					DisplayName = "Stuff",
					UserId = 1,
				},

				voiceChatServiceManager = {
					participants = {},
				}
			}))
			cleanup()
		end)
	end)
end
