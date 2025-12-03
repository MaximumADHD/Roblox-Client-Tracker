--!nonstrict
local runnerScriptName = "ChatScript"
local bubbleChatScriptName = "BubbleChat"
local installDirectory = game:GetService("Chat")

local PlayersService = game:GetService("Players")
local StarterPlayerScripts = game:GetService("StarterPlayer"):WaitForChild("StarterPlayerScripts")

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local FFlagEnableForkedChatAnalytics = require(RobloxGui.Modules.Common.Flags.FFlagEnableForkedChatAnalytics)
local ServerUtil = require(RobloxGui.Modules.Server.ServerUtil)

local SendChatAnalytics
if FFlagEnableForkedChatAnalytics then
	SendChatAnalytics = require(RobloxGui.Modules.Server.SendChatAnalytics)
end

local FFlagChatWindowInstallerCheckClassName = game:DefineFastFlag("ChatWindowInstallerCheckClassName", false)

local userIsChatTranslationEnabled = false
do
	local success, value = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserIsChatTranslationEnabled2")
	end)
	userIsChatTranslationEnabled = success and value
end

local function LoadLocalScript(location, name, parent)
	local originalModule = location:WaitForChild(name)
	if FFlagChatWindowInstallerCheckClassName then
		if originalModule.ClassName ~= "ModuleScript" then
			return originalModule:Clone()
		end
	end
	local script = Instance.new("LocalScript")
	script.Name = name
	if ServerUtil.getFFlagServerCoreScriptSourceCode() then
		script.Source = ServerUtil.getSourceForServerScript(originalModule)
	else
		script.Source = originalModule.Source
	end
	script.Parent = parent
	return script
end

local function LoadModule(location, name, parent)
	local originalModule = location:WaitForChild(name)
	if FFlagChatWindowInstallerCheckClassName then
		if originalModule.ClassName ~= "ModuleScript" then
			return originalModule:Clone()
		end
	end
	local module = Instance.new("ModuleScript")
	module.Name = name
	if ServerUtil.getFFlagServerCoreScriptSourceCode() then
		module.Source = ServerUtil.getSourceForServerScript(originalModule)
	else
		module.Source = originalModule.Source
	end
	module.Parent = parent
	return module
end

local function GetBoolValue(parent, name, defaultValue)
	local boolValue = parent:FindFirstChild(name)
	if boolValue then
		if boolValue:IsA("BoolValue") then
			return boolValue.Value
		end
	end
	return defaultValue
end

local function Install()
	local eventTable = {}

	local chatScriptArchivable = true
	local ChatScript = installDirectory:FindFirstChild(runnerScriptName)
	if not ChatScript then
		chatScriptArchivable = false
		ChatScript = LoadLocalScript(script.Parent, runnerScriptName, installDirectory)
		local ChatMain = LoadModule(script.Parent, "ChatMain", ChatScript)

		LoadModule(script.Parent, "ChannelsBar", ChatMain)
		LoadModule(script.Parent, "ChatBar", ChatMain)
		LoadModule(script.Parent, "ChatChannel", ChatMain)
		LoadModule(script.Parent, "MessageLogDisplay", ChatMain)
		LoadModule(script.Parent, "ChatWindow", ChatMain)
		LoadModule(script.Parent, "MessageLabelCreator", ChatMain)
		LoadModule(script.Parent, "CommandProcessor", ChatMain)
		LoadModule(script.Parent, "ChannelsTab", ChatMain)
		LoadModule(script.Parent.Parent.Parent.Common, "ObjectPool", ChatMain)
		LoadModule(script.Parent, "MessageSender", ChatMain)
		LoadModule(script.Parent, "CurveUtil", ChatMain)
		
		if userIsChatTranslationEnabled then
			local chatTranslationEnabled = Instance.new("BoolValue")
			chatTranslationEnabled.Name = "ChatTranslationEnabled"
			chatTranslationEnabled.Value = false
			chatTranslationEnabled.Parent = ChatMain
		end
	elseif FFlagEnableForkedChatAnalytics then
		eventTable[runnerScriptName] = "True"
	end

	local bubbleChatScriptArchivable = true
	local BubbleChatScript = installDirectory:FindFirstChild(bubbleChatScriptName)
	if not BubbleChatScript then
		bubbleChatScriptArchivable = false
		BubbleChatScript = LoadLocalScript(script.Parent.BubbleChat, bubbleChatScriptName, installDirectory)
	elseif FFlagEnableForkedChatAnalytics then
		eventTable[bubbleChatScriptName] = "True"
	end

	local clientChatModules = installDirectory:FindFirstChild("ClientChatModules")
	if not clientChatModules then
		clientChatModules = Instance.new("Folder")
		clientChatModules.Name = "ClientChatModules"
		clientChatModules.Archivable = false

		clientChatModules.Parent = installDirectory
	elseif FFlagEnableForkedChatAnalytics then
		eventTable["ClientChatModules"] = "True"
	end

	local chatSettings = clientChatModules:FindFirstChild("ChatSettings")
	if not chatSettings then
		LoadModule(script.Parent.DefaultClientChatModules, "ChatSettings", clientChatModules)
	elseif FFlagEnableForkedChatAnalytics then
		eventTable["ChatSettings"] = "True"
	end

	local chatConstants = clientChatModules:FindFirstChild("ChatConstants")
	if not chatConstants then
		LoadModule(script.Parent.DefaultClientChatModules, "ChatConstants", clientChatModules)
	elseif FFlagEnableForkedChatAnalytics then
		eventTable["ChatConstants"] = "True"
	end

	local ChatLocalization = clientChatModules:FindFirstChild("ChatLocalization")
	if not ChatLocalization then
		LoadModule(script.Parent.DefaultClientChatModules, "ChatLocalization", clientChatModules)
	elseif FFlagEnableForkedChatAnalytics then
		eventTable["ChatLocalization"] = "True"
	end

	local MessageCreatorModules = clientChatModules:FindFirstChild("MessageCreatorModules")
	if not MessageCreatorModules then
		MessageCreatorModules = Instance.new("Folder")
		MessageCreatorModules.Name = "MessageCreatorModules"
		MessageCreatorModules.Archivable = false

		local InsertDefaults = Instance.new("BoolValue")
		InsertDefaults.Name = "InsertDefaultModules"
		InsertDefaults.Value = true
		InsertDefaults.Parent = MessageCreatorModules

		MessageCreatorModules.Parent = clientChatModules
	end

	local insertDefaultMessageCreators = GetBoolValue(MessageCreatorModules, "InsertDefaultModules", false)

	if insertDefaultMessageCreators then
		local creatorModules = script.Parent.DefaultClientChatModules.MessageCreatorModules:GetChildren()
		for i = 1, #creatorModules do
			if not MessageCreatorModules:FindFirstChild(creatorModules[i].Name) then
				LoadModule(script.Parent.DefaultClientChatModules.MessageCreatorModules, creatorModules[i].Name, MessageCreatorModules)
			elseif FFlagEnableForkedChatAnalytics then
				eventTable[creatorModules[i].Name] = "True"
			end
		end
	end

	local CommandModules = clientChatModules:FindFirstChild("CommandModules")
	if not CommandModules then
		CommandModules = Instance.new("Folder")
		CommandModules.Name = "CommandModules"
		CommandModules.Archivable = false

		local InsertDefaults = Instance.new("BoolValue")
		InsertDefaults.Name = "InsertDefaultModules"
		InsertDefaults.Value = true
		InsertDefaults.Parent = CommandModules

		CommandModules.Parent = clientChatModules
	end

	local insertDefaultCommands = GetBoolValue(CommandModules, "InsertDefaultModules", false)

	if insertDefaultCommands then
		local commandModules = script.Parent.DefaultClientChatModules.CommandModules:GetChildren()
		for i = 1, #commandModules do
			if not CommandModules:FindFirstChild(commandModules[i].Name) then
				LoadModule(script.Parent.DefaultClientChatModules.CommandModules, commandModules[i].Name, CommandModules)
			elseif FFlagEnableForkedChatAnalytics then
				eventTable[commandModules[i].Name] = "True"
			end
		end
	end

	if not StarterPlayerScripts:FindFirstChild(runnerScriptName) then
		local ChatScriptCopy = ChatScript:Clone()
		ChatScriptCopy.Parent = StarterPlayerScripts
		ChatScriptCopy.Archivable = false

		local currentPlayers = PlayersService:GetPlayers()
		for _, player in pairs(currentPlayers) do
			-- These players were created before we added the ChatScript to StarterPlayerScripts
			-- This only happens in studio.
			if player:FindFirstChildOfClass("PlayerGui") then
				-- We need to put this script in the PlayerGui as we can't access the PlayerScripts on the server.
				local installVerifier = LoadLocalScript(script.Parent, "ChatInstallVerifier", player.PlayerGui)
				local scriptToVerify = Instance.new("StringValue")
				scriptToVerify.Name = "ScriptToVerify"
				scriptToVerify.Value = runnerScriptName
				scriptToVerify.Parent = installVerifier
			end
		end
	end

	ChatScript.Archivable = chatScriptArchivable

	if not StarterPlayerScripts:FindFirstChild(bubbleChatScriptName) then
		local BubbleChatScriptCopy = BubbleChatScript:Clone()
		BubbleChatScriptCopy.Parent = StarterPlayerScripts
		BubbleChatScriptCopy.Archivable = false

		local currentPlayers = PlayersService:GetPlayers()
		for _, player in pairs(currentPlayers) do
			if player:FindFirstChildOfClass("PlayerGui") then
				local installVerifier = LoadLocalScript(script.Parent, "ChatInstallVerifier", player.PlayerGui)
				local scriptToVerify = Instance.new("StringValue")
				scriptToVerify.Name = "ScriptToVerify"
				scriptToVerify.Value = bubbleChatScriptName
				scriptToVerify.Parent = installVerifier
			end
		end
	end

	BubbleChatScript.Archivable = bubbleChatScriptArchivable

	if FFlagEnableForkedChatAnalytics then
		SendChatAnalytics("LoadClientDefaultChatForkedModules", eventTable)
	end
end

return Install
