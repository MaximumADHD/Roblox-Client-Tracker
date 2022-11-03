--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local BlockingModalScreen = require(script.Parent.BlockingModalScreen)
	local simpleMountFrame = require(CorePackages.Workspace.Packages.UnitTestHelpers).simpleMountFrame

	local noOpt = function()
	end
	describe("lifecycle", function()
		it("SHOULD mount and render without issue", function(context)
			local _, cleanup = simpleMountFrame(Roact.createElement(BlockingModalScreen, {
				player = {
					UserId = 1,
					Name = "Foo",
					DisplayName = "Bar",
				},
				translator = {
					FormatByKey = function(_, key)
						return key
					end
				},
				closeModal = noOpt,
			}))

			cleanup()
		end)
	end)
end
