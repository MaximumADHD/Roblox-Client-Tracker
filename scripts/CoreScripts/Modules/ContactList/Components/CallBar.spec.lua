return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local ContactList = RobloxGui.Modules.ContactList
	local dependencies = require(ContactList.dependencies)
	local RoduxCall = dependencies.RoduxCall

	local CallBar = require(script.Parent.CallBar)
	local Reducer = require(script.Parent.Parent.Reducer)

	local appStyle = {
		Font = AppFont,
		Theme = AppDarkTheme,
	}

	it("should mount and unmount without errors", function()
		local store = Rodux.Store.new(Reducer, {
			Call = {
				currentCall = {
					callId = "123456",
					status = RoduxCall.Enums.Status.Active.rawValue(),
					participants = {
						["11111111"] = {
							userId = 11111111,
							displayName = "Display Name 1",
						},
						["12345678"] = {
							userId = 12345678,
							displayName = "Display Name 2",
						},
					},
					experienceDetail = {
						placeId = 0,
						gameInstanceId = "gameId",
						universeName = "Universe Name",
					},
				},
			},
		}, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				CallBar = Roact.createElement(CallBar, {}),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)

		local detailTextElement: TextLabel = folder:FindFirstChild("DetailsText", true) :: TextLabel
		expect(detailTextElement).to.be.ok()
		expect(detailTextElement.Text).to.be.equal("Roblox Call")

		Roact.unmount(instance)
	end)
end
