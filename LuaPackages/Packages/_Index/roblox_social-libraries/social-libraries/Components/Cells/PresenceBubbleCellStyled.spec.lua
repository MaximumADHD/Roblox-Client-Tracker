return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact

	local PresenceBubbleCellStyled = require(script.Parent.PresenceBubbleCell)

	describe("prop style", function()
		it("should mount and unmount without issue in LightTheme", function(context)
			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(PresenceBubbleCellStyled))

			cleanup()
		end)
	end)

	describe("props Size", function()
		it("SHOULD resize the topmost element", function(context)
			local size = UDim2.new(1, 100, 1, 100)
			local frame, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(PresenceBubbleCellStyled, {
				Size = size,
			}))
			local guiObject = frame:FindFirstChildWhichIsA("GuiObject")
			expect(guiObject.Size).to.equal(size)

			cleanup()
		end)
	end)
end
