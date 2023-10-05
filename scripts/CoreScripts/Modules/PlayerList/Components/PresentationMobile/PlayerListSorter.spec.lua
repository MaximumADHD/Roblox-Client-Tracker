--!nonstrict
return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")
	local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)

	local Components = script.Parent.Parent
	local PlayerList = Components.Parent
	local AddPlayer = require(PlayerList.Actions.AddPlayer)
	local Reducers = PlayerList.Reducers
	local Reducer = require(Reducers.Reducer)

	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local TestProviders = require(PlayerList.TestProviders)

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")
	--Create dummy events:
	local SendNotificationInfo = Instance.new("BindableEvent")
	SendNotificationInfo.Name = "SendNotificationInfo"
	SendNotificationInfo.Parent = RobloxGui

	local NewFollower = Instance.new("RemoteEvent")
	NewFollower.Name = "NewFollower"
	NewFollower.Parent = RobloxReplicatedStorage

	local PlayerListSorter = require(script.Parent.PlayerListSorter)


	it("should create and destroy without errors", function()
		local element = Roact.createElement(TestProviders, {}, {
			PlayerListSorter = Roact.createElement(PlayerListSorter, {
				screenSizeY = 1000,
				entrySize = 200,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors tenfoot", function()
		local element = Roact.createElement(TestProviders, {
			layoutValues = CreateLayoutValues(true)
		}, {
			PlayerListSorter = Roact.createElement(PlayerListSorter, {
				screenSizeY = 1000,
				entrySize = 200,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy with fake players without error", function()
		local store = Rodux.Store.new(Reducer)

		local nextUserId = 1200
		local function createFakePlayer(name)
			local userId = nextUserId
			nextUserId += 1
			return {
				Name = name,
				DisplayName = name .. "+DN",
				UserId = userId
			}
		end

		for _,name in pairs({"Apple", "Banana", "Clementine"}) do
			local player = createFakePlayer(name)
			store:dispatch(AddPlayer(player))
		end

		store:flush()

		local element = Roact.createElement(TestProviders, {
			store = store,
			layoutValues = CreateLayoutValues(true)
		}, {
			PlayerListSorter = Roact.createElement(PlayerListSorter, {
				screenSizeY = 1000,
				entrySize = 200,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
