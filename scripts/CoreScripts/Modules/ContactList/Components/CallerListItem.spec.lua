return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local CallerListItem = require(script.Parent.CallerListItem)
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
				CallerListItem = Roact.createElement(CallerListItem, {
					caller = {
						callId = "test_call_id",
						callerId = 1,
						participants = {
							{
								userId = 1,
								displayName = "testuser_0",
								userName = "testuser_0",
							},
							{
								userId = 2,
								displayName = "testuser_1",
								userName = "testuser_1",
							},
						},
						status = "CallFinished",
						startUtc = 1681338167883,
						endUtc = 1681338335366,
						universeId = 123,
						placeId = 456,
					},
					localUserId = 1,
					showDivider = true,
					OpenCallDetails = function() end,
				}),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local usernameElement: TextLabel = folder:FindFirstChild("Username", true) :: TextLabel

		expect(usernameElement).to.be.ok()
		expect(usernameElement.Text).to.be.equal("testuser_1")
		Roact.unmount(instance)
	end)
end
