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
	local DevTextBoxEnabledChanged = require(Actions.DevTextBoxEnabledChanged)

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

		describe("GIVEN developer textbox is not supplied", function()
			it("should be changed using ChatInputBarConfigurationEnabled", function()
				local state = isChatInputBarEnabled(nil, {})

				state = isChatInputBarEnabled(state, ChatInputBarConfigurationEnabled(false))

				expect(state).toEqual({
					_propertyEnabled = false,
					_coreGuiEnabled = true,
					_topBarVisibility = true,
					_devTextBoxEnabled = false,
					value = false,
				})

				state = isChatInputBarEnabled(state, ChatInputBarConfigurationEnabled(true))

				expect(state).toEqual({
					_propertyEnabled = true,
					_coreGuiEnabled = true,
					_topBarVisibility = true,
					_devTextBoxEnabled = false,
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
					_devTextBoxEnabled = false,
					value = false,
				})

				state = isChatInputBarEnabled(state, ChatTopBarButtonActivated(true))

				expect(state).toEqual({
					_propertyEnabled = true,
					_coreGuiEnabled = true,
					_topBarVisibility = true,
					_devTextBoxEnabled = false,
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
					_devTextBoxEnabled = false,
					value = false,
				})

				state = isChatInputBarEnabled(state, SetCoreGuiEnabledChanged(true))

				expect(state).toEqual({
					_propertyEnabled = true,
					_coreGuiEnabled = true,
					_devTextBoxEnabled = false,
					_topBarVisibility = true,
					value = true,
				})
			end)

			describe("GIVEN StarterGui sets Chat before state is initialized", function()
				it(
					"SHOULD change _coreGuiEnabled to false using ClientAppLoaded if StarterGui sets Chat to false",
					function()
						local state1 = isChatInputBarEnabled(nil, {})
						local state2 =
							isChatInputBarEnabled(state1, ClientAppLoaded({ team = "", isChatCoreGuiEnabled = false }))

						expect(state2).toEqual({
							_propertyEnabled = true,
							_coreGuiEnabled = false,
							_topBarVisibility = true,
							_devTextBoxEnabled = false,
							value = false,
						})
					end
				)

				it("SHOULD do nothing using ClientAppLoaded if StarterGui sets Chat to true", function()
					local state1 = isChatInputBarEnabled(nil, {})
					local state2 =
						isChatInputBarEnabled(state1, ClientAppLoaded({ team = "", isChatCoreGuiEnabled = true }))

					expect(state1).toEqual(state2)
				end)
			end)
		end)

		describe("GIVEN developer textbox IS supplied", function()
			local assertChatInputBarDisabled = function(state)
				expect(state._devTextBoxEnabled).toEqual(true)
				expect(state.value).toEqual(false)
			end

			it("should have value = false on default", function()
				local state = isChatInputBarEnabled(nil, DevTextBoxEnabledChanged(true))

				assertChatInputBarDisabled(state)
			end)

			it("should be not be changed by any actions", function()
				local state = isChatInputBarEnabled(nil, DevTextBoxEnabledChanged(true))
				state = isChatInputBarEnabled(state, ChatInputBarConfigurationEnabled(false))

				assertChatInputBarDisabled(state)

				state = isChatInputBarEnabled(state, ChatInputBarConfigurationEnabled(true))

				assertChatInputBarDisabled(state)
			end)

			it("should not be changed using ChatTopBarButtonActivated", function()
				local state = isChatInputBarEnabled(nil, DevTextBoxEnabledChanged(true))

				state = isChatInputBarEnabled(state, ChatTopBarButtonActivated(false))
				assertChatInputBarDisabled(state)

				state = isChatInputBarEnabled(state, ChatTopBarButtonActivated(true))

				assertChatInputBarDisabled(state)
			end)

			it("should not be changed using SetCoreGuiEnabled", function()
				local state = isChatInputBarEnabled(nil, DevTextBoxEnabledChanged(true))

				state = isChatInputBarEnabled(state, SetCoreGuiEnabledChanged(false))

				assertChatInputBarDisabled(state)
			end)

			describe("GIVEN StarterGui sets Chat before state is initialized", function()
				it("SHOULD do nothing", function()
					local state1 = isChatInputBarEnabled(nil, DevTextBoxEnabledChanged(true))
					local state2 =
						isChatInputBarEnabled(state1, ClientAppLoaded({ team = "", isChatCoreGuiEnabled = false }))

					assertChatInputBarDisabled(state2)
				end)
			end)
		end)
	end)
end
