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
	local function createCallerListItem(callerId, status, localUserId)
		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		return Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				CallerListItem = Roact.createElement(CallerListItem, {
					caller = {
						callId = "test_call_id",
						callerId = callerId,
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
						status = status,
						startUtc = 1681338167883,
						endUtc = 1681338335366,
						universeId = 123,
						placeId = 456,
					},
					localUserId = localUserId,
					showDivider = true,
					OpenCallDetails = function() end,
				}),
			}),
		})
	end

	it("should mount and unmount without errors", function()
		local element = createCallerListItem(2, "CallMissed", 1)
		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local usernameElement: TextLabel = folder:FindFirstChild("Username", true) :: TextLabel
		local displayNameElement: TextLabel = folder:FindFirstChild("DisplayName", true) :: TextLabel
		expect(usernameElement.Text).to.be.equal("@testuser_1")
		expect(displayNameElement.Text).to.be.equal("testuser_1")
		Roact.unmount(instance)
	end)

	describe("CallerListItem - call status and context image", function()
		it("should display correct status and context image for missed call", function()
			local element = createCallerListItem(2, "CallMissed", 1)
			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local statusElement: TextLabel = folder:FindFirstChild("DetailsText", true) :: TextLabel
			local usernameElement: TextLabel = folder:FindFirstChild("Username", true) :: TextLabel
			local displayNameElement: TextLabel = folder:FindFirstChild("DisplayName", true) :: TextLabel

			expect(usernameElement.Text).to.be.equal("@testuser_1")
			expect(displayNameElement.Text).to.be.equal("testuser_1")
			expect(string.sub(statusElement.Text, 1, 6)).to.be.equal("Missed")
			Roact.unmount(instance)
		end)

		it("should display correct status and context image for incoming call", function()
			local element = createCallerListItem(2, "CallFinished", 1)
			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local statusElement: TextLabel = folder:FindFirstChild("DetailsText", true) :: TextLabel
			local usernameElement: TextLabel = folder:FindFirstChild("Username", true) :: TextLabel
			local displayNameElement: TextLabel = folder:FindFirstChild("DisplayName", true) :: TextLabel

			expect(usernameElement.Text).to.be.equal("@testuser_1")
			expect(displayNameElement.Text).to.be.equal("testuser_1")
			expect(string.sub(statusElement.Text, 1, 8)).to.be.equal("Incoming")
			Roact.unmount(instance)
		end)

		it("should display correct status and context image for outgoing call", function()
			local element = createCallerListItem(2, "CallFinished", 2)
			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local statusElement: TextLabel = folder:FindFirstChild("DetailsText", true) :: TextLabel
			local usernameElement: TextLabel = folder:FindFirstChild("Username", true) :: TextLabel
			local displayNameElement: TextLabel = folder:FindFirstChild("DisplayName", true) :: TextLabel

			expect(usernameElement.Text).to.be.equal("@testuser_0")
			expect(displayNameElement.Text).to.be.equal("testuser_0")
			expect(string.sub(statusElement.Text, 1, 8)).to.equal("Outgoing")
			Roact.unmount(instance)
		end)
	end)
end
