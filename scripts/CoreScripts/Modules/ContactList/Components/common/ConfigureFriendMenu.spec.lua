return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect

	local ConfigureFriendMenu = require(script.Parent.ConfigureFriendMenu)

	it("menu items should be named block and unfriend", function()
		local element = Roact.createElement(
			UIBlox.Core.Style.Provider,
			{},
			{ ConfigureFriendMenu = Roact.createElement(ConfigureFriendMenu) }
		)

		local folder = Instance.new("Folder")

		local instance = Roact.mount(element, folder)

		-- check if menu has 2 items
		local scrollingFrame = folder:FindFirstChild("ScrollingFrame", true)
		local scrollingFrameChildren = scrollingFrame:GetChildren()

		-- 3 because it includes "layout" as a child
		jestExpect(#scrollingFrameChildren).toBe(3)

		local cell1 = folder:FindFirstChild("cell 1", true)
		local cell2 = folder:FindFirstChild("cell 2", true)
		jestExpect(cell1).never.toBeNull()
		jestExpect(cell2).never.toBeNull()

		local blockText: TextLabel = cell1:FindFirstChild("Text", true) :: TextLabel
		local unfriendText: TextLabel = cell2:FindFirstChild("Text", true) :: TextLabel
		jestExpect(blockText).never.toBeNull()
		jestExpect(unfriendText).never.toBeNull()

		-- check if buttons names are correct
		jestExpect(blockText.Text).toBe("Block")
		jestExpect(unfriendText.Text).toBe("Unfriend")

		Roact.unmount(instance)
	end)
end
