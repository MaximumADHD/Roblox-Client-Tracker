return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect

	local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
	local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization

	local Reducer = require(script.Parent.Parent.Parent.Reducer)
	local ConfigureFriendMenu = require(script.Parent.ConfigureFriendMenu)

	it("menu items should be named block and unfriend", function()
		local store = Rodux.Store.new(Reducer, {
			PlayerMenu = {
				isOpen = true,
				friend = {
					userName = "testName",
					combinedName = "testText",
					userId = 1234567891,
				},
			},
		}, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					ConfigureFriendMenu = Roact.createElement(ConfigureFriendMenu),
				}),
			}),
		})

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
		jestExpect(blockText.Text).toBe("Block testText")
		jestExpect(unfriendText.Text).toBe("Unfriend testText")

		Roact.unmount(instance)
	end)
end
