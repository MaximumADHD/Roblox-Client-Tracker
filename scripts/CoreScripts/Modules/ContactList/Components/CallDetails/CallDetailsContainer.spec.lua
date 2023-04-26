return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local CallDetailsContainer = require(script.Parent.CallDetailsContainer)
	local Reducer = require(script.Parent.Parent.Parent.Reducer)

	local appStyle = {
		Font = AppFont,
		Theme = AppDarkTheme,
	}

	it("should mount and unmount without errors", function()
		local store = Rodux.Store.new(Reducer, {
			Navigation = {
				callDetailParticipants = {
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
				CallDetailsContainer = Roact.createElement(CallDetailsContainer),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local containerElement = folder:FindFirstChildOfClass("ScrollingFrame")
		expect(containerElement).to.be.ok()

		if containerElement then
			local participantListElement = containerElement:FindFirstChild("ParticipantList")
			expect(participantListElement).to.be.ok()

			if participantListElement then
				local FirstParticipant = participantListElement:FindFirstChild("ParticipantItem1", true)
				local SecondParticipant = participantListElement:FindFirstChild("ParticipantItem2", true)

				local FirstParticipantUsernameElement = FirstParticipant:FindFirstChild("Username", true) :: TextLabel
				local SecondParticipantUsernameElement = SecondParticipant:FindFirstChild("Username", true) :: TextLabel

				expect(FirstParticipantUsernameElement.Text).to.be.equal("testuser_0")
				expect(SecondParticipantUsernameElement.Text).to.be.equal("testuser_1")
			end
		end

		Roact.unmount(instance)
	end)
end
