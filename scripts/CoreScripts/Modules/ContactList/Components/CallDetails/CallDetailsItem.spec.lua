return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local dependencies = require(script.Parent.Parent.Parent.dependencies)
	local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local CallDetailsItem = require(script.Parent.CallDetailsItem)

	local appStyle = {
		Font = AppFont,
		Theme = AppDarkTheme,
	}

	it("should mount and unmount without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			CallDetailsItem = Roact.createElement(CallDetailsItem, {
				user = {
					userId = 1,
					username = "Hello World!",
				},
				showDivider = true,
				presenceModel = { userPresenceType = EnumPresenceType.Online },
				showParticipantSettings = true,
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local usernameElement: TextLabel = folder:FindFirstChild("Username", true) :: TextLabel

		expect(usernameElement).to.be.ok()
		expect(usernameElement.Text).to.be.equal("Hello World!")
		Roact.unmount(instance)
	end)

	it("should correctly display Online presence", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			CallDetailsItem = Roact.createElement(CallDetailsItem, {
				user = {
					userId = 1,
					username = "Hello World!",
				},
				showDivider = true,
				presenceModel = { userPresenceType = EnumPresenceType.Online },
				showParticipantSettings = true,
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local presenceElement: TextLabel = folder:FindFirstChild("PresenceText", true) :: TextLabel

		expect(presenceElement).to.be.ok()
		expect(presenceElement.Text).to.be.equal("Online")
		Roact.unmount(instance)
	end)

	it("should correctly display Offline presence", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			CallDetailsItem = Roact.createElement(CallDetailsItem, {
				user = {
					userId = 1,
					username = "Hello World!",
				},
				showDivider = true,
				presenceModel = { userPresenceType = EnumPresenceType.Offline },
				showParticipantSettings = true,
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local presenceElement: TextLabel = folder:FindFirstChild("PresenceText", true) :: TextLabel

		expect(presenceElement).to.be.ok()
		expect(presenceElement.Text).to.be.equal("Offline")
		Roact.unmount(instance)
	end)

	it("should correctly display Offline presence with invalid props", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			CallDetailsItem = Roact.createElement(CallDetailsItem, {
				user = {
					userId = 1,
					username = "Hello World!",
				},
				showDivider = true,
				presenceModel = nil,
				showParticipantSettings = true,
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local presenceElement: TextLabel = folder:FindFirstChild("PresenceText", true) :: TextLabel

		expect(presenceElement).to.be.ok()
		expect(presenceElement.Text).to.be.equal("Offline")
		Roact.unmount(instance)
	end)

	it("should show participant settings button showParticipantSettings is true", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			CallDetailsItem = Roact.createElement(CallDetailsItem, {
				user = {
					userId = 1,
					username = "Hello World!",
				},
				showDivider = true,
				presenceModel = nil,
				showParticipantSettings = true,
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local ParticipantsSettingsButton = folder:FindFirstChild("ParticipantSettings", true)
		expect(ParticipantsSettingsButton).to.be.ok()
		Roact.unmount(instance)
	end)
end
