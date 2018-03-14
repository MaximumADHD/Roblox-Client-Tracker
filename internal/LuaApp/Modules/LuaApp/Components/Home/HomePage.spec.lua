return function()
	local LocalizationService = game:GetService("LocalizationService")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local Rodux = require(Modules.Common.Rodux)
	local RoactRodux = require(Modules.Common.RoactRodux)
	local Localization = require(Modules.LuaApp.Localization)
	local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
	local StringsLocale = require(Modules.LuaApp.StringsLocale)
	local AppReducer = require(Modules.LuaApp.AppReducer)
	local AddUser = require(Modules.LuaApp.Actions.AddUser)
	local SetLocalUser = require(Modules.LuaApp.Actions.SetLocalUser)
	local HomePage = require(Modules.LuaApp.Components.Home.HomePage)
	local User = require(Modules.LuaApp.Models.User)

	local function MockStore(userCount, membership)
		local store = Rodux.Store.new(AppReducer)
		if userCount then
			for _ = 1, userCount do
				store:Dispatch(AddUser(User.mock()))
			end
		end
		if membership then
			store:Dispatch(SetLocalUser("filler", membership))
		else
			store:Dispatch(SetLocalUser("filler", Enum.MembershipType.None))
		end
		return store
	end

	local function MockHomepage(store)
		return Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			localization = Roact.createElement(RoactLocalization.LocalizationProvider, {
				localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId),
			}, {
				Roact.createElement(HomePage),
			}),
		})
	end

	it("should create and destroy without errors", function()
		local store = MockStore()
		local element = MockHomepage(store)
		local instance = Roact.reify(element)
		Roact.teardown(instance)
		store:Destruct()
	end)

	it("should show the friends section if there are users", function()
		local store = MockStore(5)
		local element = MockHomepage(store)
		local container = Instance.new("Folder")
		Roact.reify(element, container, "Test")

		expect(container.Test:FindFirstChild("FriendSection", true)).to.be.ok()
		store:Destruct()
	end)

	it("should hide the friends section if there are no users", function()
		local store = MockStore()
		local element = MockHomepage(store)
		local container = Instance.new("Folder")
		Roact.reify(element, container, "Test")

		expect(container.Test:FindFirstChild("FriendSection", true)).to.never.be.ok()
		store:Destruct()
	end)

	it("should show the builders club icon if the local user is builders club", function()
		local store = MockStore(0, Enum.MembershipType.BuildersClub)
		local element = MockHomepage(store)
		local container = Instance.new("Folder")
		Roact.reify(element, container, "Test")

		expect(container.Test:FindFirstChild("BuildersClub", true)).to.be.ok()
		store:Destruct()
	end)

	it("should hide the builders club icon if the local user is not builders club", function()
		local store = MockStore()
		local element = MockHomepage(store)
		local container = Instance.new("Folder")
		Roact.reify(element, container, "Test")

		expect(container.Test:FindFirstChild("BuildersClub", true)).to.never.be.ok()
		store:Destruct()
	end)
end