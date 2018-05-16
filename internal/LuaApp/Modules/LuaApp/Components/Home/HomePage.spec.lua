return function()
	local HomePage = require(script.Parent.HomePage)

	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local AddUser = require(Modules.LuaApp.Actions.AddUser)
	local AppReducer = require(Modules.LuaApp.AppReducer)
	local Roact = require(Modules.Common.Roact)
	local Rodux = require(Modules.Common.Rodux)
	local SetLocalUserId = require(Modules.LuaApp.Actions.SetLocalUserId)
	local SetUserMembershipType = require(Modules.LuaApp.Actions.SetUserMembershipType)
	local mockServices = require(Modules.LuaApp.TestHelpers.mockServices)
	local User = require(Modules.LuaApp.Models.User)

	local function MockStore(eachUserIsFriend, membership)
		local store = Rodux.Store.new(AppReducer)
		if eachUserIsFriend then
			for i, isFriend in ipairs(eachUserIsFriend) do
				store:Dispatch(AddUser(User.fromData(i, "User " .. i, isFriend)))
			end
		end
		local localUser = User.mock()
		store:Dispatch(AddUser(localUser))
		store:Dispatch(SetLocalUserId(localUser.id))
		if membership then
			store:Dispatch(SetUserMembershipType(localUser.id, membership))
		else
			store:Dispatch(SetUserMembershipType(localUser.id, Enum.MembershipType.None))
		end
		return store
	end

	local function MockHomepage(store)
		return mockServices({
			HomePage = Roact.createElement(HomePage),
		}, {
			includeStoreProvider = true,
			store = store,
		})
	end

	it("should create and destroy without errors", function()
		local store = MockStore()
		local element = MockHomepage(store)
		local instance = Roact.reify(element)
		Roact.teardown(instance)
		store:Destruct()
	end)

	it("should show the friends section if there are friends", function()
		local store = MockStore({false, true, true})
		local element = MockHomepage(store)
		local container = Instance.new("Folder")
		Roact.reify(element, container, "Test")
		expect(container.Test:FindFirstChild("FriendSection", true)).to.be.ok()
		store:Destruct()
	end)

	it("should hide the friends section if there are no friends", function()
		local store = MockStore({false, false, false})
		local element = MockHomepage(store)
		local container = Instance.new("Folder")
		Roact.reify(element, container, "Test")

		expect(container.Test:FindFirstChild("FriendSection", true)).to.never.be.ok()
		store:Destruct()
	end)

	it("should show the builders club icon if the local user is builders club", function()
		local store = MockStore(nil, Enum.MembershipType.BuildersClub)
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