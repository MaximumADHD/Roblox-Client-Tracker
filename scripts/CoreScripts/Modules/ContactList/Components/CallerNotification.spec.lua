return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local CallerNotification = require(script.Parent.CallerNotification)

	local appStyle = {
		Font = AppFont,
		Theme = AppDarkTheme,
	}

	it("should mount and unmount without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			CallerNotification = Roact.createElement(CallerNotification, {
				caller = {
					userId = 1,
					username = "Hello World!",
					state = "Calling",
				},
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)

		local usernameElement: TextLabel = folder:FindFirstChild("Username", true) :: TextLabel
		expect(usernameElement).to.be.ok()
		expect(usernameElement.Text).to.be.equal("Hello World!")

		Roact.unmount(instance)
	end)
end
