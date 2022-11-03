--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local BlockingModalContainer = require(script.Parent.BlockingModalContainer)
	local simpleMountFrame = require(CorePackages.Workspace.Packages.UnitTestHelpers).simpleMountFrame

	local noOpt = function()
	end
	describe("lifecycle", function()
		it("SHOULD mount and render without issue", function(context)
			local _, cleanup = simpleMountFrame(Roact.createElement(BlockingModalContainer, {
				player = {
					Name = "Foo",
					DisplayName = "Bar",
					UserId = 1,
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
