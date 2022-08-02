local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local Actions = ExperienceChat.Actions

return function()
	local isChatInputBarEnabled = require(script.Parent.isChatInputBarEnabled)

	local ChatInputBarConfigurationEnabled = require(Actions.ChatInputBarConfigurationEnabled)
	local ChatTopBarButtonActivated = require(Actions.ChatTopBarButtonActivated)
	local SetCoreGuiEnabledChanged = require(Actions.SetCoreGuiEnabledChanged)
	local ClientAppLoaded = require(Actions.ClientAppLoaded)

	describe("isChatInputBarEnabled", function()
		it("should be not nil by default", function()
			local defaultState = isChatInputBarEnabled(nil, {})

			expect(defaultState).never.toBeNil()
		end)

		it("should be unmodified by other actions", function()
			local oldState = isChatInputBarEnabled(nil, {})
			local newState = isChatInputBarEnabled(oldState, { type = "not a real action" })

			expect(oldState).toEqual(newState)
		end)

		it("should have value = true on default", function()
			local state = isChatInputBarEnabled(nil, {})

			expect(state).toEqual({
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = true,
			})
		end)

		it("should be changed using ChatInputBarConfigurationEnabled", function()
			local state = isChatInputBarEnabled(nil, {})
			state = isChatInputBarEnabled(state, ChatInputBarConfigurationEnabled(false))

			expect(state).toEqual({
				_propertyEnabled = false,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = false,
			})

			state = isChatInputBarEnabled(state, ChatInputBarConfigurationEnabled(true))

			expect(state).toEqual({
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = true,
			})
		end)

		it("should be changed using ChatTopBarButtonActivated", function()
			local state = isChatInputBarEnabled(nil, {})

			state = isChatInputBarEnabled(state, ChatTopBarButtonActivated(false))
			expect(state).toEqual({
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = false,
				value = false,
			})

			state = isChatInputBarEnabled(state, ChatTopBarButtonActivated(true))

			expect(state).toEqual({
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = true,
			})
		end)

		it("should be changed using SetCoreGuiEnabled", function()
			local state = isChatInputBarEnabled(nil, {})

			state = isChatInputBarEnabled(state, SetCoreGuiEnabledChanged(false))

			expect(state).toEqual({
				_propertyEnabled = true,
				_coreGuiEnabled = false,
				_topBarVisibility = true,
				value = false,
			})

			state = isChatInputBarEnabled(state, SetCoreGuiEnabledChanged(true))

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
					local state1 = isChatInputBarEnabled(nil, {})
					local state2 = isChatInputBarEnabled(
						state1,
						ClientAppLoaded({ team = "", isChatCoreGuiEnabled = false })
					)

					expect(state2).toEqual({
						_propertyEnabled = true,
						_coreGuiEnabled = false,
						_topBarVisibility = true,
						value = false,
					})
				end
			)

			it("SHOULD do nothing using ClientAppLoaded if StarterGui sets Chat to true", function()
				local state1 = isChatInputBarEnabled(nil, {})
				local state2 = isChatInputBarEnabled(
					state1,
					ClientAppLoaded({ team = "", isChatCoreGuiEnabled = true })
				)

				expect(state1).toEqual(state2)
			end)
		end)
	end)
end
