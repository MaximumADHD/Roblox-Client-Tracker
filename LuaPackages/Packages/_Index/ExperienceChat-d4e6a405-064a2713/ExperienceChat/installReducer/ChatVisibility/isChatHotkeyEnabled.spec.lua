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
	local DevTextBoxEnabledChanged = require(Actions.DevTextBoxEnabledChanged)

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
				_devTextBoxEnabled = false,
				value = true,
			})
		end)

		describe("GIVEN developer textbox is supplied", function()
			local assertHotkeyDisabled = function(state)
				expect(state._devTextBoxEnabled).toEqual(true)
				expect(state.value).toEqual(false)
			end

			it("should not be changed using ChatInputBarConfigurationEnabled", function()
				local state = isChatHotkeyEnabled(nil, DevTextBoxEnabledChanged(true))
				state = isChatHotkeyEnabled(state, ChatInputBarConfigurationEnabled(false))

				assertHotkeyDisabled(state)

				state = isChatHotkeyEnabled(state, ChatInputBarConfigurationEnabled(true))

				assertHotkeyDisabled(state)
			end)

			it("should be changed using SetCoreGuiEnabled", function()
				local state = isChatHotkeyEnabled(nil, DevTextBoxEnabledChanged(true))

				state = isChatHotkeyEnabled(state, SetCoreGuiEnabledChanged(false))

				assertHotkeyDisabled(state)
			end)

			describe("GIVEN StarterGui sets Chat before state is initialized", function()
				it(
					"SHOULD change _coreGuiEnabled to false using ClientAppLoaded if StarterGui sets Chat to false",
					function()
						local state1 =
							isChatHotkeyEnabled(nil, ClientAppLoaded({ team = "", isChatCoreGuiEnabled = false }))

						local state2 = isChatHotkeyEnabled(state1, DevTextBoxEnabledChanged(true))
						assertHotkeyDisabled(state2)
					end
				)

				it("SHOULD do nothing using ClientAppLoaded if StarterGui sets Chat to true", function()
					local state1 = isChatHotkeyEnabled(nil, DevTextBoxEnabledChanged(true))
					local state2 =
						isChatHotkeyEnabled(state1, ClientAppLoaded({ team = "", isChatCoreGuiEnabled = true }))

					expect(state1).toEqual(state2)
				end)
			end)
		end)
	end)
end
