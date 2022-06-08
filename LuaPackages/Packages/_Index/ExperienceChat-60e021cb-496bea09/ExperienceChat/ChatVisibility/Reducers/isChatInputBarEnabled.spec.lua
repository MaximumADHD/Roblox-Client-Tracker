local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local ChatVisibility = ExperienceChat.ChatVisibility

return function()
	local ChatInputBarConfigurationEnabled = require(ChatVisibility.Actions.ChatInputBarConfigurationEnabled)
	local ChatTopBarButtonActivated = require(ChatVisibility.Actions.ChatTopBarButtonActivated)
	local SetCoreGuiEnabledChanged = require(ChatVisibility.Actions.SetCoreGuiEnabledChanged)
	local isChatInputBarEnabled = require(ChatVisibility.Reducers.isChatInputBarEnabled)
	local ClientAppLoaded = require(ExperienceChat.Actions.ClientAppLoaded)

	local checkForCorrectState = function(currState, expectedState)
		expect(currState._propertyEnabled).toEqual(expectedState._propertyEnabled)
		expect(currState._coreGuiEnabled).toEqual(expectedState._coreGuiEnabled)
		expect(currState._topBarVisibility).toEqual(expectedState._topBarVisibility)
		expect(currState.value).toEqual(expectedState.value)
	end

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
			local expectedState = {
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = true,
			}
			checkForCorrectState(state, expectedState)
		end)

		it("should be changed using ChatInputBarConfigurationEnabled", function()
			local state = isChatInputBarEnabled(nil, {})
			state = isChatInputBarEnabled(state, ChatInputBarConfigurationEnabled(false))

			local expectedState = {
				_propertyEnabled = false,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = false,
			}
			checkForCorrectState(state, expectedState)

			state = isChatInputBarEnabled(state, ChatInputBarConfigurationEnabled(true))
			expectedState = {
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = true,
			}
			checkForCorrectState(state, expectedState)
		end)

		it("should be changed using ChatTopBarButtonActivated", function()
			local state = isChatInputBarEnabled(nil, {})

			state = isChatInputBarEnabled(state, ChatTopBarButtonActivated(false))
			local expectedState = {
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = false,
				value = false,
			}
			checkForCorrectState(state, expectedState)

			state = isChatInputBarEnabled(state, ChatTopBarButtonActivated(true))
			expectedState = {
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = true,
			}
			checkForCorrectState(state, expectedState)
		end)

		it("should be changed using SetCoreGuiEnabled", function()
			local state = isChatInputBarEnabled(nil, {})

			state = isChatInputBarEnabled(state, SetCoreGuiEnabledChanged(false))
			local expectedState = {
				_propertyEnabled = true,
				_coreGuiEnabled = false,
				_topBarVisibility = true,
				value = false,
			}
			checkForCorrectState(state, expectedState)

			state = isChatInputBarEnabled(state, SetCoreGuiEnabledChanged(true))
			expectedState = {
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = true,
			}
			checkForCorrectState(state, expectedState)
		end)

		describe("GIVEN StarterGui sets Chat before state is initialized", function()
			it(
				"SHOULD change _coreGuiEnabled to false using ClientAppLoaded if StarterGui sets Chat to false",
				function()
					local StarterGui = game:GetService("StarterGui")
					StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)

					local state = isChatInputBarEnabled(nil, {})
					state = isChatInputBarEnabled(state, ClientAppLoaded({ team = "" }))

					local expectedState = {
						_propertyEnabled = true,
						_coreGuiEnabled = false,
						_topBarVisibility = true,
						value = false,
					}
					checkForCorrectState(state, expectedState)
				end
			)

			it(
				"SHOULD change _coreGuiEnabled to false using ClientAppLoaded if StarterGui sets All to false",
				function()
					local StarterGui = game:GetService("StarterGui")
					StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)

					local state = isChatInputBarEnabled(nil, {})
					state = isChatInputBarEnabled(state, ClientAppLoaded({ team = "" }))

					local expectedState = {
						_propertyEnabled = true,
						_coreGuiEnabled = false,
						_topBarVisibility = true,
						value = false,
					}
					checkForCorrectState(state, expectedState)
				end
			)

			it("SHOULD do nothing using ClientAppLoaded if StarterGui sets Chat to true", function()
				local StarterGui = game:GetService("StarterGui")
				StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)

				local state = isChatInputBarEnabled(nil, {})
				state = isChatInputBarEnabled(state, ClientAppLoaded({ team = "" }))

				local expectedState = state
				checkForCorrectState(state, expectedState)
			end)

			it("SHOULD do nothing using ClientAppLoaded if StarterGui sets All to true", function()
				local StarterGui = game:GetService("StarterGui")
				StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)

				local state = isChatInputBarEnabled(nil, {})
				state = isChatInputBarEnabled(state, ClientAppLoaded({ team = "" }))

				local expectedState = state
				checkForCorrectState(state, expectedState)
			end)
		end)
	end)
end
