return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact

	local WarningAlertView = require(script.Parent.WarningAlertView)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function(context)
			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(WarningAlertView))

			cleanup()
		end)

		it("should mount and unmount failure case without issue", function(context)
			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(WarningAlertView, {
				displayFailed = true,
			}))

			cleanup()
		end)
	end)
end
