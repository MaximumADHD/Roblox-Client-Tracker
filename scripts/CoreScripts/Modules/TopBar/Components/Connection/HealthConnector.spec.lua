--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local Players = game:GetService("Players")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect

	local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local act = Roact.act

	local Connection = script.Parent
	local HealthConnector = require(Connection.HealthConnector)

	local TopBar = Connection.Parent.Parent
	local Reducer = require(TopBar.Reducer)

	local LocalPlayer = Players.LocalPlayer

	local function createMockCharacter()
		local character = Instance.new("Model")
		character.Name = "Test"

		local humanoid = Instance.new("Humanoid")
		humanoid.Parent = character

		return character
	end

	describe("HealthConnector", function()
		it("should set the correct inital health", function()
			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			local character = createMockCharacter()
			LocalPlayer.Character = character

			character.Humanoid.Health = 25
			character.Humanoid.MaxHealth = 50

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				HealthConnector = Roact.createElement(HealthConnector)
			})

			local instance = Roact.mount(element)

			jestExpect(store:getState().health.currentHealth).toBe(25)
			jestExpect(store:getState().health.maxHealth).toBe(50)

			Roact.unmount(instance)
		end)

		it("should update the health when changed", function()
			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			local character = createMockCharacter()
			LocalPlayer.Character = character

			character.Humanoid.Health = 25
			character.Humanoid.MaxHealth = 50

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				HealthConnector = Roact.createElement(HealthConnector)
			})

			local instance = Roact.mount(element)

			jestExpect(store:getState().health.currentHealth).toBe(25)
			jestExpect(store:getState().health.maxHealth).toBe(50)

			character.Humanoid.Health = 40
			character.Humanoid.MaxHealth = 70
			waitForEvents()

			jestExpect(store:getState().health.currentHealth).toBe(40)
			jestExpect(store:getState().health.maxHealth).toBe(70)

			Roact.unmount(instance)
		end)

		it("should update the health when character updates", function()
			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			local character = createMockCharacter()
			LocalPlayer.Character = character

			character.Humanoid.Health = 25
			character.Humanoid.MaxHealth = 50

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				HealthConnector = Roact.createElement(HealthConnector)
			})

			local instance = Roact.mount(element)

			jestExpect(store:getState().health.currentHealth).toBe(25)
			jestExpect(store:getState().health.maxHealth).toBe(50)

			local newCharacter = createMockCharacter()
			newCharacter.Humanoid.Health = 10
			newCharacter.Humanoid.MaxHealth = 20

			act(function()
				LocalPlayer.Character = newCharacter
				waitForEvents()
			end)

			jestExpect(store:getState().health.currentHealth).toBe(10)
			jestExpect(store:getState().health.maxHealth).toBe(20)

			newCharacter.Humanoid.Health = 12
			newCharacter.Humanoid.MaxHealth = 22
			waitForEvents()

			jestExpect(store:getState().health.currentHealth).toBe(12)
			jestExpect(store:getState().health.maxHealth).toBe(22)

			Roact.unmount(instance)
		end)
	end)
end
