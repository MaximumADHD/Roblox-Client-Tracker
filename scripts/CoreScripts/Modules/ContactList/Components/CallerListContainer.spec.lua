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
				callList = {
					{
						createdUtc = 1666635183000,
						participants = {
							{
								userId = 3447649029,
								username = "jovocados",
							},
						},
						state = "Outgoing",
					},
					{
						createdUtc = 1665635183000,
						participants = {
							{
								userId = 2591489824,
								username = "corgichu8",
							},
						},
						state = "Incoming",
					},
					{
						createdUtc = 1664635183000,
						participants = {
							{
								userId = 2591622000,
								username = "hamulgg",
							},
						},
						state = "Missed",
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
			expect(usernameElement.Text).to.be.equal("jovocados")
		end

		Roact.unmount(instance)
	end)
end
