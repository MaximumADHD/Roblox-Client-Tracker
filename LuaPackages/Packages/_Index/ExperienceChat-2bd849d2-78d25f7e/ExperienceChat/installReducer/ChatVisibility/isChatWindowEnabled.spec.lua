local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local Actions = ExperienceChat.Actions

return function()
	local isChatWindowEnabled = require(script.Parent.isChatWindowEnabled)

	local ChatWindowConfigurationEnabled = require(Actions.ChatWindowConfigurationEnabled)
	local ChatTopBarButtonActivated = require(Actions.ChatTopBarButtonActivated)
	local SetCoreGuiEnabledChanged = require(Actions.SetCoreGuiEnabledChanged)
	local ClientAppLoaded = require(Actions.ClientAppLoaded)

	describe("isChatWindowEnabled", function()
		it("should be not nil by default", function()
			local defaultState = isChatWindowEnabled(nil, {})

			expect(defaultState).never.toBeNil()
		end)

		it("should be unmodified by other actions", function()
			local oldState = isChatWindowEnabled(nil, {})
			local newState = isChatWindowEnabled(oldState, { type = "not a real action" })

			expect(oldState).toEqual(newState)
		end)

		it("should have value = true on default", function()
			local state = isChatWindowEnabled(nil, {})

			expect(state).toEqual({
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = true,
			})
		end)

		it("should be changed using ChatWindowConfigurationEnabled", function()
			local state1 = isChatWindowEnabled(nil, {})

			local state2 = isChatWindowEnabled(state1, ChatWindowConfigurationEnabled(false))

			expect(state2).toEqual({
				_propertyEnabled = false,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = false,
			})

			local state3 = isChatWindowEnabled(state2, ChatWindowConfigurationEnabled(true))

			expect(state3).toEqual({
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = true,
			})
		end)

		it("should be changed using ChatTopBarButtonActivated", function()
			local state = isChatWindowEnabled(nil, {})

			state = isChatWindowEnabled(state, ChatTopBarButtonActivated(false))

			expect(state).toEqual({
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = false,
				value = false,
			})

			state = isChatWindowEnabled(state, ChatTopBarButtonActivated(true))

			expect(state).toEqual({
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = true,
			})
		end)

		it("should be changed using SetCoreGuiEnabled", function()
			local state = isChatWindowEnabled(nil, {})

			state = isChatWindowEnabled(state, SetCoreGuiEnabledChanged(false))

			expect(state).toEqual({
				_propertyEnabled = true,
				_coreGuiEnabled = false,
				_topBarVisibility = true,
				value = false,
			})

			state = isChatWindowEnabled(state, SetCoreGuiEnabledChanged(true))

			expect(state).toEqual({
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = true,
			})
		end)

		describe("GIVEN StarterGui sets Chat before state is initialized", function()
			it(
				"SHOULD change _coreGuiEnabled to false using ClientAppLoaded if StarterGui sets Chat to false",
				function()
					local state = isChatWindowEnabled(nil, {})
					state = isChatWindowEnabled(state, ClientAppLoaded({ team = "", isChatCoreGuiEnabled = false }))

					expect(state).toEqual({
						_propertyEnabled = true,
						_coreGuiEnabled = false,
						_topBarVisibility = true,
						value = false,
					})
				end
			)

			it("SHOULD do nothing using ClientAppLoaded if StarterGui sets Chat to true", function()
				local state1 = isChatWindowEnabled(nil, {})
				local state2 = isChatWindowEnabled(state1, ClientAppLoaded({ team = "", isChatCoreGuiEnabled = true }))

				expect(state1).toEqual(state2)
			end)
		end)
	end)
end
