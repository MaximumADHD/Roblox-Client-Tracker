--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local ActionModal = require(script.Parent.ActionModal)
	local simpleMountFrame = require(CorePackages.Workspace.Packages.UnitTestHelpers).simpleMountFrame

	local noOpt = function()
	end
	describe("lifecycle", function()
		it("SHOULD mount and render without issue", function(context)
			local _, cleanup = simpleMountFrame(Roact.createElement(ActionModal, {
				action = noOpt,
				actionText = "Block",
				body = "block now",
				cancel = noOpt,
				cancelText = "Cancel",
				displayName = "DisplayName",
				title = "remove someone",
			}))

			cleanup()
		end)
	end)
end
