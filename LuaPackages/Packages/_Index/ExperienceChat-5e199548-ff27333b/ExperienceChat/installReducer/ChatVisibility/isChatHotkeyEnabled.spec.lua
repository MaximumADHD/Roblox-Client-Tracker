local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local Actions = ExperienceChat.Actions

return function()
	local isChatHotkeyEnabled = require(script.Parent.isChatHotkeyEnabled)

	local ChatInputBarConfigurationEnabled = require(Actions.ChatInputBarConfigurationEnabled)
	local SetCoreGuiEnabledChanged = require(Actions.SetCoreGuiEnabledChanged)
	local ClientAppLoaded = require(Actions.ClientAppLoaded)

	describe("isChatHotkeyEnabled", function()
		it("should be not nil by default", function()
			local defaultState = isChatHotkeyEnabled(nil, {})

			expect(defaultState).never.toBeNil()
		end)

		it("should have value = true on default", function()
			local state = isChatHotkeyEnabled(nil, {})

			expect(state).toEqual({
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				value = true,
			})
		end)

		it("should be changed using ChatInputBarConfigurationEnabled", function()
			local state = isChatHotkeyEnabled(nil, {})
			state = isChatHotkeyEnabled(state, ChatInputBarConfigurationEnabled(false))

			expect(state).toEqual({
				_propertyEnabled = false,
				_coreGuiEnabled = true,
				value = false,
			})

			state = isChatHotkeyEnabled(state, ChatInputBarConfigurationEnabled(true))

			expect(state).toEqual({
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				value = true,
			})
		end)

		it("should be changed using SetCoreGuiEnabled", function()
			local state = isChatHotkeyEnabled(nil, {})

			state = isChatHotkeyEnabled(state, SetCoreGuiEnabledChanged(false))

			expect(state).toEqual({
				_propertyEnabled = true,
				_coreGuiEnabled = false,
				value = false,
			})

			state = isChatHotkeyEnabled(state, SetCoreGuiEnabledChanged(true))

			expect(state).toEqual({
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				value = true,
			})
		end)

		describe("GIVEN StarterGui sets Chat before state is initialized", function()
			it(
				"SHOULD change _coreGuiEnabled to false using ClientAppLoaded if StarterGui sets Chat to false",
				function()
					local state1 =
						isChatHotkeyEnabled(nil, ClientAppLoaded({ team = "", isChatCoreGuiEnabled = false }))

					expect(state1).toEqual({
						_propertyEnabled = true,
						_coreGuiEnabled = false,
						value = false,
					})
				end
			)

			it("SHOULD do nothing using ClientAppLoaded if StarterGui sets Chat to true", function()
				local state1 = isChatHotkeyEnabled(nil, {})
				local state2 = isChatHotkeyEnabled(state1, ClientAppLoaded({ team = "", isChatCoreGuiEnabled = true }))

				expect(state1).toEqual(state2)
			end)
		end)
	end)
end
