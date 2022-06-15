local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local List = require(Packages.llama).List

local reducer = require(script.Parent.TextChannels)

local Actions = ExperienceChat.Actions
local ChatInputBarActivatedTeamMode = require(Actions.ChatInputBarActivatedTeamMode)
local ChatInputBarDeactivatedTeamMode = require(Actions.ChatInputBarDeactivatedTeamMode)
local ClientAppLoaded = require(Actions.ClientAppLoaded)
local LocalTeamChanged = require(Actions.LocalTeamChanged)
local TargetTextChannelPropertyChanged = require(Actions.TargetTextChannelPropertyChanged)
local TextChannelCreated = require(Actions.TextChannelCreated)
local TextChannelRemoved = require(Actions.TextChannelRemoved)

return function()
	describe("WHEN TextChannelCreated is dispatched with a few channels", function()
		beforeAll(function(c)
			c.teamA = Instance.new("Team")
			c.teamA.TeamColor = BrickColor.Red()

			c.teamB = Instance.new("Team")
			c.teamB.TeamColor = BrickColor.Blue()

			c.teamC_withoutATextChannel = Instance.new("Team")
			c.teamC_withoutATextChannel.TeamColor = BrickColor.Green()

			local function createTextChannel(name)
				local textChannel = Instance.new("TextChannel")
				textChannel.Name = name

				return TextChannelCreated(textChannel)
			end

			local state0 = reducer(nil, { type = "" })
			c.state1 = List.reduce({
				createTextChannel("RBXGeneral"),
				createTextChannel("RBXSystem"),
				createTextChannel("RBXTeamBright red"),
				createTextChannel("RBXTeamBright blue"),
			}, reducer, state0)
		end)

		describe("WHEN TextChannelRemoved is dispatched", function()
			beforeAll(function(c)
				local systemChannel = c.state1.allTextChannels.RBXSystem
				c.state2 = reducer(c.state1, TextChannelRemoved(systemChannel))
			end)

			it("SHOULD NOT have RBXSystem in allTextChannels", function(c)
				expect(c.state2).never.toHaveProperty({ "allTextChannels", "RBXSystem" })
			end)
		end)

		describe("WHEN ClientAppLoaded is dispatched with teamA", function()
			beforeAll(function(c)
				c.state2 = reducer(c.state1, ClientAppLoaded({ team = c.teamA }))
			end)

			it("SHOULD set the currentTeam to teamA", function(c)
				expect(c.state2).toHaveProperty("currentTeam", c.teamA)
			end)

			describe("WHEN LocalTeamChanged is dispatched while we are not targeting a team channel", function()
				beforeAll(function(c)
					c.state3 = reducer(c.state2, LocalTeamChanged(c.teamB))
				end)

				it("SHOULD NOT update targetTextChannel", function(c)
					expect(c.state3.targetTextChannel).toBe(c.state2.targetTextChannel)
				end)
			end)

			describe("WHEN ChatInputBarActivatedTeamMode is dispatched", function()
				beforeAll(function(c)
					c.state3 = reducer(c.state2, ChatInputBarActivatedTeamMode())
				end)

				it("SHOULD set the targetTextChannel to RBXBright red", function(c)
					expect(c.state3).toHaveProperty({ "targetTextChannel", "Name" }, "RBXTeamBright red")
				end)

				describe("WHEN LocalTeamChanged is dispatched with teamB", function()
					beforeAll(function(c)
						c.state4 = reducer(c.state3, LocalTeamChanged(c.teamB))
					end)

					it("SHOULD set the targetTextChannel to RBXBright blue", function(c)
						expect(c.state4).toHaveProperty({ "targetTextChannel", "Name" }, "RBXTeamBright blue")
					end)
				end)

				describe("WHEN LocalTeamChanged is dispatched with teamC (without a team channel)", function()
					beforeAll(function(c)
						c.state4 = reducer(c.state3, LocalTeamChanged(c.teamC_withoutATextChannel))
					end)

					it("SHOULD set the targetTextChannel to RBXGeneral", function(c)
						expect(c.state4).toHaveProperty({ "targetTextChannel", "Name" }, "RBXGeneral")
					end)
				end)

				describe("WHEN LocalTeamChanged is dispatched with no team", function()
					beforeAll(function(c)
						c.state4 = reducer(c.state3, LocalTeamChanged(nil))
					end)

					it("SHOULD set the targetTextChannel to RBXBright blue", function(c)
						expect(c.state4).toHaveProperty({ "targetTextChannel", "Name" }, "RBXGeneral")
					end)

					describe("WHEN ChatInputBarActivatedTeamMode is dispatched while not on a team", function()
						beforeAll(function(c)
							c.state5 = reducer(c.state4, ChatInputBarActivatedTeamMode())
						end)

						it("SHOULD NOT update state", function(c)
							expect(c.state4).toBe(c.state5)
						end)
					end)
				end)

				describe("WHEN ChatInputBarDeactivatedTeamMode is dispatched", function()
					beforeAll(function(c)
						c.state4 = reducer(c.state3, ChatInputBarDeactivatedTeamMode())
					end)

					it("SHOULD set the targetTextChannel to RBXGeneral", function(c)
						expect(c.state4).toHaveProperty({ "targetTextChannel", "Name" }, "RBXGeneral")
					end)
				end)

				describe("WHEN TargetTextChannelPropertyChanged is dispatched as nil", function()
					beforeAll(function(c)
						c.state4 = reducer(c.state3, TargetTextChannelPropertyChanged(nil))
					end)

					it("SHOULD set the targetTextChannel as nil", function(c)
						expect(c.state4).never.toHaveProperty("targetTextChannel")
					end)

					describe("WHEN TargetTextChannelPropertyChanged is dispatched back to team channel", function()
						beforeAll(function(c)
							local teamChannel = c.state4.allTextChannels["RBXTeamBright red"]
							c.state5 = reducer(c.state4, TargetTextChannelPropertyChanged(teamChannel))
						end)

						it("SHOULD set the targetTextChannel as RBXTeamBright red", function(c)
							expect(c.state5.targetTextChannel).toHaveProperty("Name", "RBXTeamBright red")
						end)
					end)
				end)
			end)
		end)
	end)
end
