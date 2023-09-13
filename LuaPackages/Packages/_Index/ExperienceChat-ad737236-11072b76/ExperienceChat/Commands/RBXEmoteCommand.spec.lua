local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local createStore = require(ExperienceChat.createStore)
local LocalCharacterLoaded = require(ExperienceChat.Actions.LocalCharacterLoaded)

local RBXEmoteCommand = require(script.Parent.RBXEmoteCommand)

local LEGACY_COMMAND = "/e dance"
local NORMAL_COMMAND = "/e hello"

return function()
	beforeEach(function(c)
		c.TextSource = {
			UserId = 1,
		}
	end)

	it("SHOULD return error when an emote is not provided", function(c)
		local store = createStore()
		expect(RBXEmoteCommand.clientRun(store, c.TextSource.UserId, "/emote")).toHaveProperty(
			"metadata",
			"Roblox.Emote.Error.DoesNotExist"
		)
	end)

	describe("GIVEN Player", function()
		beforeEach(function(c)
			c.store = createStore()
		end)

		describe("WHEN LocalCharacterLoaded is never invoked", function()
			it("SHOULD return NotSupported error if emote is a legacy emote", function(c)
				expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, LEGACY_COMMAND)).toHaveProperty(
					"metadata",
					"Roblox.Emote.Error.NotSupported"
				)
			end)
			it("SHOULD return TemporarilyUnavailable error if emote is a non-legacy emote", function(c)
				expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, NORMAL_COMMAND)).toHaveProperty(
					"metadata",
					"Roblox.Emote.Error.TemporarilyUnavailable"
				)
			end)
		end)

		describe("WHEN LocalCharacterLoaded is invoked", function()
			beforeEach(function(c)
				local character = Instance.new("Model")
				character.Parent = workspace
				-- We have to assign the Character to the LocalPlayer in order to PlayEmotes
				local localPlayer = game:GetService("Players").LocalPlayer
				assert(localPlayer, "No local player! Check test harness.")
				localPlayer.Character = character

				c.character = character
				c.store:dispatch(LocalCharacterLoaded(character))
			end)

			describe("WHEN Player has no Animate child", function()
				it("SHOULD return NotSupported error if emote is a legacy emote", function(c)
					expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, LEGACY_COMMAND)).toHaveProperty(
						"metadata",
						"Roblox.Emote.Error.NotSupported"
					)
				end)

				it("SHOULD return NotSupported error if emote is a non-legacy emote", function(c)
					expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, NORMAL_COMMAND)).toHaveProperty(
						"metadata",
						"Roblox.Emote.Error.NotSupported"
					)
				end)
			end)

			describe("WHEN Player has Animate child", function()
				beforeEach(function(c)
					local animateScript = Instance.new("Folder")
					animateScript.Name = "Animate"
					animateScript.Parent = c.character

					-- Mock PlayEmote bindable function
					local mockPlayEmote = Instance.new("BindableFunction")
					mockPlayEmote.Name = "PlayEmote"
					mockPlayEmote.OnInvoke = function()
						return true
					end
					mockPlayEmote.Parent = animateScript
				end)

				it("SHOULD return NotSupported error if Animate does not have PlayEmote child", function(c)
					local mockPlayEmote = c.character:FindFirstChild("Animate").PlayEmote
					mockPlayEmote:Destroy()
					expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, LEGACY_COMMAND)).toHaveProperty(
						"metadata",
						"Roblox.Emote.Error.NotSupported"
					)
				end)

				describe("WHEN Player has no Humanoid child", function()
					it("SHOULD return nothing if emote is a legacy emote", function(c)
						expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, LEGACY_COMMAND)).toBeNil()
					end)

					it("SHOULD return TemporarilyUnavailable error if emote is a non-legacy emote", function(c)
						expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, NORMAL_COMMAND)).toHaveProperty(
							"metadata",
							"Roblox.Emote.Error.TemporarilyUnavailable"
						)
					end)
				end)

				describe("WHEN Player has Humanoid child", function()
					beforeEach(function(c)
						local humanoid = Instance.new("Humanoid")
						humanoid.Parent = c.character
						c.humanoid = humanoid
					end)

					describe("WHEN UserEmotesEnabled is false", function()
						beforeEach(function()
							game:GetService("StarterPlayer").UserEmotesEnabled = false
						end)

						afterEach(function()
							game:GetService("StarterPlayer").UserEmotesEnabled = true
						end)

						it("SHOULD return error UserEmotesNotEnabled when performing a normal emote", function(c)
							expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, NORMAL_COMMAND)).toHaveProperty(
								"metadata",
								"Roblox.Emote.Error.UserEmotesNotEnabled"
							)
						end)

						it("SHOULD return nothing when performing a legacy emote", function(c)
							expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, LEGACY_COMMAND)).toBeNil()
						end)
					end)

					describe("WHEN Humanoid RigType is not R15", function()
						beforeEach(function(c)
							c.humanoid.RigType = Enum.HumanoidRigType.R6
						end)

						it("SHOULD return nothing if emote is a legacy emote", function(c)
							expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, LEGACY_COMMAND)).toBeNil()
						end)

						it("SHOULD return SwitchToR15 error if emote is a non-legacy emote", function(c)
							expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, NORMAL_COMMAND)).toHaveProperty(
								"metadata",
								"Roblox.Emote.Error.SwitchToR15"
							)
						end)
					end)

					describe("WHEN Humanoid RigType is R15", function()
						beforeEach(function(c)
							c.humanoid.RigType = Enum.HumanoidRigType.R15
						end)

						it("SHOULD return nothing if emote is a legacy emote", function(c)
							expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, LEGACY_COMMAND)).toBeNil()
						end)

						it("SHOULD return NotSupported if Humanoid has no HumanoidDescription", function(c)
							expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, NORMAL_COMMAND)).toHaveProperty(
								"metadata",
								"Roblox.Emote.Error.NotSupported"
							)
						end)

						describe("WHEN Humanoid has HumanoidDescription property", function()
							beforeEach(function(c)
								local humanoidDescription = Instance.new("HumanoidDescription")
								humanoidDescription.Parent = c.humanoid
								c.humanoidDescription = humanoidDescription
							end)

							describe("GIVEN the equipped and owned emotes", function()
								beforeEach(function(c)
									c.humanoidDescription:SetEmotes({ Salute = { 3360689775 } })
									c.humanoidDescription:SetEquippedEmotes({ "Salute" })
								end)

								describe("WHEN PlayEmote fails (when out of Datamodel", function()
									beforeEach(function(c)
										c.character.Parent = nil
									end)

									it("SHOULD return AnimationPlayer error", function(c)
										expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, "/e 1")).toHaveProperty(
											"metadata",
											"Roblox.Emote.Error.AnimationPlaying"
										)
									end)
								end)

								it(
									"SHOULD return Not Owned if the emote IS NOT part of the HumanoidDescription dictionary of emotes",
									function(c)
										expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, "/e applause")).toHaveProperty(
											"metadata",
											"Roblox.Emote.Error.NotOwnedGeneric"
										)
									end
								)

								it(
									"SHOULD return nothing if the emote IS part of the HumanoidDescription dictionary of emotes",
									function(c)
										expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, "/e salute")).toBeNil()
									end
								)

								describe("WHEN perfoming emote with an integer parameter", function()
									it(
										"SHOULD return nothing if the parameter IS part of list of equipped emotes",
										function(c)
											expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, "/emote 1")).toBeNil()
										end
									)

									it(
										"SHOULD return error NotEquipped if if the parameter IS NOT part of list of equipped emotes",
										function(c)
											expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, "/emote 2")).toHaveProperty(
												"metadata",
												"Roblox.Emote.Error.EmoteNotEquipped"
											)
										end
									)

									it(
										"SHOULD return error DoesNotExist if calling an parameter that is out of range",
										function(c)
											expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, "/emote 9")).toHaveProperty(
												"metadata",
												"Roblox.Emote.Error.DoesNotExist"
											)

											expect(RBXEmoteCommand.clientRun(c.store, c.TextSource.UserId, "/emote 0")).toHaveProperty(
												"metadata",
												"Roblox.Emote.Error.DoesNotExist"
											)
										end
									)
								end)
							end)
						end)
					end)
				end)
			end)
		end)
	end)
end
