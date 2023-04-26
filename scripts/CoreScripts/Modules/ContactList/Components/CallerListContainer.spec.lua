return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local CallerListContainer = require(script.Parent.CallerListContainer)

	local appStyle = {
		Font = AppFont,
		Theme = AppDarkTheme,
	}

	local function MockReducer(state, action)
		state = state or {}
		return {
			Call = {
				callHistory = {
					{
						callId = "test_call_Id",
						callerId = 2,
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
					{
						callId = "test_call_Id",
						callerId = 2,
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
						status = "CallMissed",
						startUtc = 1681338167883,
						endUtc = 1681338335366,
						universeId = 123,
						placeId = 456,
					},
					{
						callId = "test_call_Id",
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
						status = "CallDeclined",
						startUtc = 1681338167883,
						endUtc = 1681338335366,
						universeId = 123,
						placeId = 456,
					},
				},
			},
		}
	end

	it("should mount and unmount without errors", function()
		local store = Rodux.Store.new(MockReducer, {}, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				CallerListContainer = Roact.createElement(CallerListContainer),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local containerElement = folder:FindFirstChildOfClass("ScrollingFrame")
		expect(containerElement).to.be.ok()
		if containerElement then
			expect(#containerElement:GetChildren()).to.be.equal(4) -- Layout, and three cells.

			local usernameElement: TextLabel = containerElement:FindFirstChild("Username", true) :: TextLabel
			expect(usernameElement.Text).to.be.equal("testuser_0")
		end

		Roact.unmount(instance)
	end)
end
