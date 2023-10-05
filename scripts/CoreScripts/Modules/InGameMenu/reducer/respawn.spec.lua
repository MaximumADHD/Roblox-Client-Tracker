return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenu = script.Parent.Parent
	local SetRespawning = require(InGameMenu.Actions.SetRespawning)
	local SetRespawnBehavior = require(InGameMenu.Actions.SetRespawnBehavior)
	local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
	local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
	local Constants = require(InGameMenu.Resources.Constants)
	local respawn = require(script.Parent.respawn)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should have respawning enabled by default", function()
		local defaultState = respawn(nil, {})
		expect(defaultState.enabled).toBe(true)
	end)

	it("should have the dialog closed by default", function()
		local defaultState = respawn(nil, {})
		expect(defaultState.dialogOpen).toBe(false)
	end)

	it("should have no custom callback by default", function()
		local defaultState = respawn(nil, {})
		expect(defaultState.customCallback).toBeNil()
	end)

	describe("SetRespawning", function()
		it("should correctly set the respawn dialog open", function()
			local oldState = respawn(nil, {})
			local newState = respawn(oldState, SetRespawning(true))
			expect(oldState).never.toBe(newState)
			expect(newState).toMatchObject({
				dialogOpen = true,
				enabled = true,
			})
		end)

		it("should correctly set the respawn dialog closed", function()
			local oldState = respawn(nil, {})
			oldState = respawn(oldState, SetRespawning(true))
			local newState = respawn(oldState, SetRespawning(false))
			expect(oldState).never.toBe(newState)
			expect(newState).toMatchObject({
				dialogOpen = false,
				enabled = true,
			})
		end)
	end)

	local dummyCallback = Instance.new("BindableEvent")

	describe("SetRespawnBehavior", function()
		it("should correctly set a custom callback", function()
			local oldState = respawn(nil, {})
			local newState = respawn(oldState, SetRespawnBehavior(true, dummyCallback))
			expect(oldState).never.toBe(newState)
			expect(newState).toMatchObject({
				dialogOpen = false,
				enabled = true,
				customCallback = dummyCallback,
			})
		end)

		it("should correctly remove a custom callback", function()
			local oldState = respawn(nil, {})
			oldState = respawn(oldState, SetRespawnBehavior(true, dummyCallback))
			local newState = respawn(oldState, SetRespawnBehavior(true, nil))
			expect(oldState).never.toBe(newState)
			expect(newState).toMatchObject({
				dialogOpen = false,
				enabled = true,
			})
			expect(newState.customCallback).toBeNil()
		end)

		it("should close the respawn dialog if respawning is disabled", function()
			local oldState = respawn(nil, {})
			oldState = respawn(oldState, SetRespawning(true))
			local newState = respawn(oldState, SetRespawnBehavior(false, nil))
			expect(oldState).never.toBe(newState)
			expect(newState).toMatchObject({
				dialogOpen = false,
				enabled = false,
			})
			expect(newState.customCallback).toBeNil()
		end)
	end)

	describe("RespawnNavigationBehavior", function()
		it("should close the dialog when exiting the menu", function()
			local oldState = respawn(nil, {
				dialogOpen = true,
				enabled = true,
			})
			local newState = respawn(oldState, SetMenuOpen(false))
			expect(oldState).never.toBe(newState)
			expect(newState.dialogOpen).toBe(false)
		end)
		it("should close the dialog when changing page", function()
			local oldState = respawn(nil, {
				dialogOpen = true,
				enabled = true,
			})
			local newState = respawn(oldState, SetCurrentPage(Constants.LeaveGamePromptPageKey))
			expect(oldState).never.toBe(newState)
			expect(newState.dialogOpen).toBe(false)
		end)
	end)
end
