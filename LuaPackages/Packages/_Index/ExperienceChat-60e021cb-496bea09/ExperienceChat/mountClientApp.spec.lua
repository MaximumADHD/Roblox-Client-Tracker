--!nocheck

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local jest = globals.jest
local expect = globals.expect

local UIBlox = require(Packages.UIBlox)
local UIBloxConfig = require(script.Parent.UIBloxConfig)
pcall(UIBlox.init, UIBloxConfig)

local Analytics = require(ExperienceChat.Analytics)
local mountClientApp = require(script.Parent.mountClientApp)

return function()
	FIXME("---- TextChannel:SendAsync will yield forever in non-networked context. See EXPCHAT-266.")
	if true then
		return
	end

	local mockAnalyticsService = {
		SetRBXEventStream = jest.fn(),
	}

	beforeAll(function()
		Analytics.with(mockAnalyticsService)
	end)

	afterAll(function()
		game:GetService("Players").LocalPlayer.Team = nil
		Analytics.with(nil)
	end)

	local TextChatService = game:GetService("TextChatService")

	-- original channel and command to watch
	local RBXGeneral = Instance.new("TextChannel")
	RBXGeneral.Name = "RBXGeneral"
	RBXGeneral.Parent = TextChatService

	local RBXTeam = Instance.new("TextChannel")
	RBXTeam.Name = "RBXTeam"
	RBXTeam.Parent = TextChatService

	local RBXSystem = Instance.new("TextChannel")
	RBXSystem.Name = "RBXSystem"
	RBXSystem.Parent = TextChatService

	local RBXHelp = Instance.new("TextChatCommand")
	RBXHelp.Name = "RBXHelpCommand"
	RBXHelp.PrimaryAlias = "/help"
	RBXHelp.Parent = TextChatService

	local receivedSystemMessage = jest.fn()
	RBXSystem.MessageReceived:Connect(function(...)
		receivedSystemMessage(...)
	end)

	mountClientApp({
		defaultTargetTextChannel = RBXGeneral,
		defaultSystemTextChannel = RBXSystem,
		canUserChatAsync = function()
			return true
		end,
		parent = nil,
		translator = {
			FormatByKey = function(_, key)
				return key
			end,
		},
		textChatService = TextChatService,
	})

	afterEach(function()
		mockAnalyticsService.SetRBXEventStream.mockReset()
		receivedSystemMessage.mockReset()
	end)

	it("SHOULD fire MessageSent", function()
		local textChannel = Instance.new("TextChannel")
		textChannel.Name = "TestChannel"
		textChannel.Parent = TextChatService

		textChannel:SendAsync("test")
		task.wait()
		textChannel:Destroy()

		expect(mockAnalyticsService.SetRBXEventStream).toHaveBeenCalledTimes(1)
		expect(mockAnalyticsService.SetRBXEventStream).toHaveBeenCalledWith(
			mockAnalyticsService,
			"client",
			"experienceChat",
			"MessageSent",
			{
				channelName = "TestChannel",
				totalParticipants = 0,
			}
		)
	end)

	it("SHOULD fire CommandSent", function()
		local textCommand = Instance.new("TextChatCommand")
		textCommand.Name = "TestCommand"
		textCommand.PrimaryAlias = "/test"
		textCommand.Parent = TextChatService
		task.wait()

		RBXGeneral:SendAsync("/test")
		task.wait()

		expect(mockAnalyticsService.SetRBXEventStream).toHaveBeenCalledTimes(1)
		expect(mockAnalyticsService.SetRBXEventStream).toHaveBeenCalledWith(
			mockAnalyticsService,
			"client",
			"experienceChat",
			"CommandSent",
			{
				commandName = "TestCommand",
			}
		)

		textCommand:Destroy()
	end)

	it("SHOULD run default help message", function()
		RBXGeneral:SendAsync("/help")
		task.wait()

		expect(receivedSystemMessage).toHaveBeenCalled()
		expect(mockAnalyticsService.SetRBXEventStream).toHaveBeenCalledTimes(2)
		expect(mockAnalyticsService.SetRBXEventStream).toHaveBeenCalledWith(
			mockAnalyticsService,
			"client",
			"experienceChat",
			"CommandSent",
			{
				commandName = "RBXHelpCommand",
			}
		)
		expect(mockAnalyticsService.SetRBXEventStream).toHaveBeenCalledWith(
			mockAnalyticsService,
			"client",
			"experienceChat",
			"MessageResponse",
			{
				messageStatus = "Success",
			}
		)
	end)

	it("SHOULD format team channel messages", function()
		local sendingTeamMessage = jest.fn()
		TextChatService.SendingMessage:Connect(function(textChatMessage)
			if textChatMessage.TextChannel == RBXTeam then
				sendingTeamMessage(textChatMessage)
				-- make sure we format the message with [Team]
				expect(textChatMessage.PrefixText).toContain("[Team]")
			end
		end)
		RBXTeam:SendAsync("hello")
		task.wait()

		expect(sendingTeamMessage).toHaveBeenCalled()
	end)

	it("SHOULD create system messages when joining a team", function()
		local Players = game:GetService("Players")
		local localPlayer = Players.LocalPlayer
		assert(localPlayer, "LocalPlayer needed to continue!")
		assert(
			localPlayer.Team == nil,
			"LocalPlayer should not be on a team already. (Did you forget to clean up after one of your tests?)"
		)

		local team = Instance.new("Team")
		team.AutoAssignable = false
		team.Parent = game:GetService("Teams")

		localPlayer.Team = team
		task.wait()

		local firstCall = receivedSystemMessage.mock.calls[1]
		assert(firstCall, "receivedSystemMessage was never called!")
		local systemMessage = firstCall[1]
		assert(systemMessage and systemMessage:IsA("TextChatMessage"), "Did not get system message")
	end)
end
