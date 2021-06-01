return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact

    local InputAlertView = require(script.Parent.InputAlertView)

    describe("lifecycle", function()
        it("should mount and unmount without issue", function(context)
            local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(InputAlertView))

            cleanup()
		end)
    end)
end
