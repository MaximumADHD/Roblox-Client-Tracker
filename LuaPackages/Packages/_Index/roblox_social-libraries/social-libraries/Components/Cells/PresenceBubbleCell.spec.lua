return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect

	local PresenceBubbleCell = require(script.Parent.PresenceBubbleCell)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function(context)
			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(PresenceBubbleCell))

			cleanup()
		end)

		it("should mount and unmount without issue with icons", function(context)
			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(PresenceBubbleCell, {
				thumbnails = {" ", " ", " "}
			}))

			cleanup()
		end)
	end)

	describe("props Size", function()
		it("SHOULD resize the topmost element", function(context)
			local size = UDim2.new(1, 100, 1, 100)
			local frame, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(PresenceBubbleCell, {
				Size = size,
			}))
			local guiObject = frame:FindFirstChildWhichIsA("GuiObject")
			jestExpect(guiObject.Size).toBe(size)

			cleanup()
		end)
	end)
end
