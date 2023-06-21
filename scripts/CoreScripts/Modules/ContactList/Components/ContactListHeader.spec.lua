return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)
	local ContactListHeader = require(script.Parent.ContactListHeader)
	local Pages = require(script.Parent.Parent.Enums.Pages)
	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local appStyle = {
		Font = AppFont,
		Theme = AppDarkTheme,
	}

	it("should mount and unmount without errors hidden", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			ContactListHeader = Roact.createElement(ContactListHeader, {
				headerHeight = 48,
				currentPage = Pages.FriendList,
				dismissCallback = function() end,
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)

		local headerTextElement = folder:FindFirstChild("HeaderText", true)
		expect(headerTextElement).never.toBeNull()

		local dismissButtonElement = folder:FindFirstChild("DismissButton", true)
		expect(dismissButtonElement).never.toBeNull()

		Roact.unmount(instance)
	end)
end
