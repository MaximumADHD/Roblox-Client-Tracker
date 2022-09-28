local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local Actions = ExperienceChat.Actions
local ChatInputBarConfigurationEnabled = require(Actions.ChatInputBarConfigurationEnabled)
local ChatTopBarButtonActivated = require(Actions.ChatTopBarButtonActivated)
local SetCoreGuiEnabledChanged = require(Actions.SetCoreGuiEnabledChanged)
local ClientAppLoaded = require(ExperienceChat.Actions.ClientAppLoaded)
local UserInteraction = require(ExperienceChat.Actions.UserInteraction)
local IncomingMessageReceived = require(Actions.IncomingMessageReceived)

return function()
	local reducer = require(script.Parent.transparency)

	describe("WHEN app loads", function()
		local default = reducer(nil, { type = "" })
		local loaded = reducer(
			default,
			ClientAppLoaded({
				team = nil,
				isChatCoreGuiEnabled = true,
			})
		)

		it("SHOULD reset all timestamps", function()
			expect(loaded.lastGeneralActivityTimestamp).never.toEqual(default.lastGeneralActivityTimestamp)
			expect(loaded.lastMessageActivityTimestamp).never.toEqual(default.lastMessageActivityTimestamp)
		end)

		describe("WHEN a message is received", function()
			local firstMessageReceived = reducer(loaded, IncomingMessageReceived({}))

			it("SHOULD reset the message timestamp only", function()
				expect(firstMessageReceived.lastGeneralActivityTimestamp).toEqual(loaded.lastGeneralActivityTimestamp)
				expect(firstMessageReceived.lastMessageActivityTimestamp).never.toEqual(
					loaded.lastMessageActivityTimestamp
				)
			end)

			describe("WHEN top bar chat button is pressed to hide and show chat", function()
				local chatHidden = reducer(firstMessageReceived, ChatTopBarButtonActivated(false))
				local chatShown = reducer(chatHidden, ChatTopBarButtonActivated(true))

				it("SHOULD not reset timestamps when hidden", function()
					expect(chatHidden).toBe(firstMessageReceived)
				end)

				it("SHOULD reset all timestamps", function()
					expect(chatShown.lastGeneralActivityTimestamp).never.toEqual(
						firstMessageReceived.lastGeneralActivityTimestamp
					)
					expect(chatShown.lastMessageActivityTimestamp).never.toEqual(
						firstMessageReceived.lastMessageActivityTimestamp
					)
				end)
			end)

			describe("WHEN SetCoreGuiEnabled is used to hide and show chat", function()
				local chatHidden = reducer(firstMessageReceived, SetCoreGuiEnabledChanged(false))
				local chatShown = reducer(chatHidden, SetCoreGuiEnabledChanged(true))

				it("SHOULD not reset timestamps when hidden", function()
					expect(chatHidden).toBe(firstMessageReceived)
				end)

				it("SHOULD reset all timestamps", function()
					expect(chatShown.lastGeneralActivityTimestamp).never.toEqual(
						firstMessageReceived.lastGeneralActivityTimestamp
					)
					expect(chatShown.lastMessageActivityTimestamp).never.toEqual(
						firstMessageReceived.lastMessageActivityTimestamp
					)
				end)
			end)

			describe("WHEN ChatInputBarConfigurationEnabled is used to hide and show chat", function()
				local chatHidden = reducer(firstMessageReceived, ChatInputBarConfigurationEnabled(false))
				local chatShown = reducer(chatHidden, ChatInputBarConfigurationEnabled(true))

				it("SHOULD not reset timestamps when hidden", function()
					expect(chatHidden).toBe(firstMessageReceived)
				end)

				it("SHOULD reset all timestamps", function()
					expect(chatShown.lastGeneralActivityTimestamp).never.toEqual(
						firstMessageReceived.lastGeneralActivityTimestamp
					)
					expect(chatShown.lastMessageActivityTimestamp).never.toEqual(
						firstMessageReceived.lastMessageActivityTimestamp
					)
				end)
			end)

			describe("WHEN the user hovers over the ChatWindow", function()
				local hovered = reducer(firstMessageReceived, UserInteraction("hover"))

				it("SHOULD reset all timestamps", function()
					expect(hovered.lastGeneralActivityTimestamp).never.toEqual(
						firstMessageReceived.lastGeneralActivityTimestamp
					)
					expect(hovered.lastMessageActivityTimestamp).never.toEqual(
						firstMessageReceived.lastMessageActivityTimestamp
					)
				end)
			end)

			describe("WHEN the user focuses the ChatInputBar", function()
				local focused = reducer(firstMessageReceived, UserInteraction("focus"))

				it("SHOULD reset all timestamps", function()
					expect(focused.lastGeneralActivityTimestamp).never.toEqual(
						firstMessageReceived.lastGeneralActivityTimestamp
					)
					expect(focused.lastMessageActivityTimestamp).never.toEqual(
						firstMessageReceived.lastMessageActivityTimestamp
					)
				end)

				it("SHOULD set isTextBoxFocused to true", function()
					expect(focused).toHaveProperty("isTextBoxFocused", true)
				end)

				describe("WHEN the user unfocuses the ChatInputBar", function()
					local unfocused = reducer(focused, UserInteraction("unfocus"))

					it("SHOULD reset all timestamps", function()
						expect(unfocused.lastGeneralActivityTimestamp).never.toEqual(
							firstMessageReceived.lastGeneralActivityTimestamp
						)
						expect(unfocused.lastMessageActivityTimestamp).never.toEqual(
							firstMessageReceived.lastMessageActivityTimestamp
						)
					end)

					it("SHOULD set isTextBoxFocused to false", function()
						expect(unfocused).toHaveProperty("isTextBoxFocused", false)
					end)
				end)
			end)
		end)
	end)
end
