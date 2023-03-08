return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local CallerNotification = require(script.Parent.CallerNotification)
	local Reducer = require(script.Parent.Parent.Reducer)

	local appStyle = {
		Font = AppFont,
		Theme = AppDarkTheme,
	}

	it("should mount and unmount without errors", function()
		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				CallerNotification = Roact.createElement(CallerNotification, {
					caller = {
						userId = 1,
						username = "Hello World!",
						state = "Calling",
					},
				}),
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
