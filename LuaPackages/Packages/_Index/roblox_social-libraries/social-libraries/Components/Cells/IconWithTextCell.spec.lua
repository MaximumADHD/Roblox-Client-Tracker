return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact

	local IconWithTextCell = require(script.Parent.IconWithTextCell)

	describe("lifecycle", function()
		it("Should mount and unmount without issue without props", function(context)
			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(IconWithTextCell, {}))

			cleanup()
		end)

		it("Should mount and unmount without issue with props", function(context)
			local PRIMARY_ICON = "rbxasset://textures/ui/LuaChat/icons/ic-add-friends.png"
			local SECONDARY_ICON = "rbxasset://textures/ui/LuaChat/icons/ic-more.png"

			local frame, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(IconWithTextCell, {
				primaryIcon = PRIMARY_ICON,
				primaryIconSize = 36,
				BackgroundColor3 = Color3.new(255,255,255),
				secondaryIcon = SECONDARY_ICON,
				LayoutOrder = 2,
			}))

			local primaryIconInstance = frame:FindFirstChild("primaryIcon", true)
			local secondaryIconInstance = frame:FindFirstChild("secondaryIcon", true)
			expect(primaryIconInstance.Image).to.equal(PRIMARY_ICON)
			expect(secondaryIconInstance.Image).to.equal(SECONDARY_ICON)

			cleanup()
		end)
	end)
end
