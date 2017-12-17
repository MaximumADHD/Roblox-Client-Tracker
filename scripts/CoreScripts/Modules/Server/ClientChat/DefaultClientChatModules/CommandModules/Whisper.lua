--	// FileName: Whisper.lua
--	// Written by: TheGamer101
--	// Description: Whisper chat bar manipulation.

local util = require(script.Parent:WaitForChild("Util"))
local ChatSettings = require(script.Parent.Parent:WaitForChild("ChatSettings"))

local PlayersService = game:GetService("Players")

local LocalPlayer = PlayersService.LocalPlayer
while LocalPlayer == nil do
	PlayersService.ChildAdded:wait()
	LocalPlayer = PlayersService.LocalPlayer
end

local whisperStateMethods = {}
whisperStateMethods.__index = whisperStateMethods

local WhisperCustomState = {}

function whisperStateMethods:TrimWhisperCommand(text)
	if string.sub(text, 1, 3):lower() == "/w " then
		return string.sub(text, 4)
	elseif string.sub(text, 1, 9):lower() == "/whisper " then
		return string.sub(text, 10)
 	end
	return nil
end

function whisperStateMethods:TrimWhiteSpace(text)
	local newText = string.gsub(text, "%s+", "")
	local wasWhitespaceTrimmed = text[#text] == " "
	return newText, wasWhitespaceTrimmed
end

function whisperStateMethods:ShouldAutoCompleteNames()
	if ChatSettings.WhisperCommandAutoCompletePlayerNames ~= nil then
		return ChatSettings.WhisperCommandAutoCompletePlayerNames
	end
	return true
end

function whisperStateMethods:GetWhisperingPlayer(enteredText)
	enteredText = enteredText:lower()
	local trimmedText = self:TrimWhisperCommand(enteredText)
	if trimmedText then
		local possiblePlayerName, whitespaceTrimmed = self:TrimWhiteSpace(trimmedText)
		local possibleMatches = {}
		local players = PlayersService:GetPlayers()
		for i = 1, #players do
			if players[i] ~= LocalPlayer then
				local lowerPlayerName = players[i].Name:lower()
				if string.sub(lowerPlayerName, 1, string.len(possiblePlayerName)) == possiblePlayerName then
					possibleMatches[players[i]] = players[i].Name:lower()
				end
			end
		end
		local matchCount = 0
		local lastMatch = nil
		local lastMatchName = nil
		for player, playerName in pairs(possibleMatches) do
			matchCount = matchCount + 1
			lastMatch = player
			lastMatchName = playerName
			if playerName == possiblePlayerName and whitespaceTrimmed then
				return player
			end
		end
		if matchCount == 1 then
			if self:ShouldAutoCompleteNames() then
				return lastMatch
			elseif lastMatchName == possiblePlayerName then
				return lastMatch
			end
		end
	end
	return nil
end

function whisperStateMethods:GetWhisperChanneNameColor()
	if self.ChatSettings.WhisperChannelNameColor then
		return self.ChatSettings.WhisperChannelNameColor
	end
	return Color3.fromRGB(102, 14, 102)
end

function whisperStateMethods:TextUpdated()
	local newText = self.TextBox.Text
	if not self.PlayerNameEntered then
		local player = self:GetWhisperingPlayer(newText)
		if player then
			self.PlayerNameEntered = true
			self.PlayerName = player.Name

			self.MessageModeButton.Size = UDim2.new(0, 1000, 1, 0)
			self.MessageModeButton.Text = string.format("[To %s]", player.Name)
			self.MessageModeButton.TextColor3 = self:GetWhisperChanneNameColor()

			local xSize = self.MessageModeButton.TextBounds.X
			self.MessageModeButton.Size = UDim2.new(0, xSize, 1, 0)
			self.TextBox.Size = UDim2.new(1, -xSize, 1, 0)
			self.TextBox.Position = UDim2.new(0, xSize, 0, 0)
			self.TextBox.Text = " "
		end
	else
		if newText == "" then
			self.MessageModeButton.Text = ""
			self.MessageModeButton.Size = UDim2.new(0, 0, 0, 0)
			self.TextBox.Size = UDim2.new(1, 0, 1, 0)
			self.TextBox.Position = UDim2.new(0, 0, 0, 0)
			self.TextBox.Text = ""
			---Implement this when setting cursor positon is a thing.
			---self.TextBox.Text = self.OriginalText .. " " .. self.PlayerName
			self.PlayerNameEntered = false
			---Temporary until setting cursor position...
			self.ChatBar:ResetCustomState()
			self.ChatBar:CaptureFocus()
		end
	end
end

function whisperStateMethods:GetMessage()
	if self.PlayerNameEntered then
		return "/w " ..self.PlayerName.. " " ..self.TextBox.Text
	end
	return self.TextBox.Text
end

function whisperStateMethods:ProcessCompletedMessage()
	return false
end

function whisperStateMethods:Destroy()
	self.MessageModeConnection:disconnect()
	self.Destroyed = true
end

function WhisperCustomState.new(ChatWindow, ChatBar, ChatSettings)
	local obj = setmetatable({}, whisperStateMethods)
	obj.Destroyed = false
	obj.ChatWindow = ChatWindow
	obj.ChatBar = ChatBar
	obj.ChatSettings = ChatSettings
	obj.TextBox = ChatBar:GetTextBox()
	obj.MessageModeButton = ChatBar:GetMessageModeTextButton()
	obj.OriginalWhisperText = ""
	obj.PlayerNameEntered = false

	obj.MessageModeConnection = obj.MessageModeButton.MouseButton1Click:connect(function()
		local chatBarText = obj.TextBox.Text
		if string.sub(chatBarText, 1, 1) == " " then
			chatBarText = string.sub(chatBarText, 2)
		end
		obj.ChatBar:ResetCustomState()
		obj.ChatBar:SetTextBoxText(chatBarText)
		obj.ChatBar:CaptureFocus()
	end)

	obj:TextUpdated()

	return obj
end

function ProcessMessage(message, ChatWindow, ChatBar, ChatSettings)
	if string.sub(message, 1, 3):lower() == "/w " or	string.sub(message, 1, 9):lower() == "/whisper " then
		return WhisperCustomState.new(ChatWindow, ChatBar, ChatSettings)
	end
	return nil
end

return {
	[util.KEY_COMMAND_PROCESSOR_TYPE] = util.IN_PROGRESS_MESSAGE_PROCESSOR,
	[util.KEY_PROCESSOR_FUNCTION] = ProcessMessage
}
