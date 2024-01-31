return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
	local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local ContactList = RobloxGui.Modules.ContactList
	local dependencies = require(ContactList.dependencies)
	local RoduxCall = dependencies.RoduxCall

	local CallBar = require(script.Parent.CallBar)
	local Reducer = require(script.Parent.Parent.Reducer)

	it("should mount and unmount without errors", function()
		local store = Rodux.Store.new(Reducer, {
			Call = {
				currentCall = {
					status = RoduxCall.Enums.Status.Active,
					callerId = 11111111,
					calleeId = 12345678,
					placeId = 789,
					reservedServerAccessCode = "accessCode",
					callId = "12345",
					callerCombinedName = "Display Name 1",
					calleeCombinedName = "Display Name 2",
					gameInstanceId = "gameId",
					createdUtc = os.time(),
					activeUtc = os.time(),
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
					CallBar = Roact.createElement(CallBar, {
						size = Vector2.new(200, 44),
						activeUtc = os.time(),
						position = UDim2.new(0.5, -100, 0, 0),
					}),
				}),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)

		local detailTextElement: TextLabel = folder:FindFirstChild("DetailsText", true) :: TextLabel
		expect(detailTextElement).never.toBeNil()
		expect(detailTextElement.Text).toBe("00:00")

		Roact.unmount(instance)
	end)
end
