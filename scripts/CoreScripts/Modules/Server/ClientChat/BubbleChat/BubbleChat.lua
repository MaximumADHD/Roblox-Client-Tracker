--[[
	// FileName: BubbleChat.lua
	// Written by: jeditkacheff, TheGamer101
	// Description: Code for rendering bubble chat
]]

--[[ SERVICES ]]
local PlayersService = game:GetService('Players')
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ChatService = game:GetService("Chat")
local TextService = game:GetService("TextService")
--[[ END OF SERVICES ]]

local LocalPlayer = PlayersService.LocalPlayer
while LocalPlayer == nil do
	PlayersService.ChildAdded:wait()
	LocalPlayer = PlayersService.LocalPlayer
end

local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local okShouldClipInGameChat, valueShouldClipInGameChat = pcall(function() return UserSettings():IsUserFeatureEnabled("UserShouldClipInGameChat") end)
local shouldClipInGameChat = okShouldClipInGameChat and valueShouldClipInGameChat

--[[ SCRIPT VARIABLES ]]
local CHAT_BUBBLE_FONT = Enum.Font.SourceSans
local CHAT_BUBBLE_FONT_SIZE = Enum.FontSize.Size24 -- if you change CHAT_BUBBLE_FONT_SIZE_INT please change this to match
local CHAT_BUBBLE_FONT_SIZE_INT = 24 -- if you change CHAT_BUBBLE_FONT_SIZE please change this to match
local CHAT_BUBBLE_LINE_HEIGHT = CHAT_BUBBLE_FONT_SIZE_INT + 10
local CHAT_BUBBLE_TAIL_HEIGHT = 14
local CHAT_BUBBLE_WIDTH_PADDING = 30
local CHAT_BUBBLE_FADE_SPEED = 1.5

local BILLBOARD_MAX_WIDTH = 400
local BILLBOARD_MAX_HEIGHT = 250	--This limits the number of bubble chats that you see above characters

local ELIPSES = "..."
local MaxChatMessageLength = 128 -- max chat message length, including null terminator and elipses.
local MaxChatMessageLengthExclusive = MaxChatMessageLength - string.len(ELIPSES) - 1

local NEAR_BUBBLE_DISTANCE = 65	--previously 45
local MAX_BUBBLE_DISTANCE = 100	--previously 80

--[[ END OF SCRIPT VARIABLES ]]


-- [[ SCRIPT ENUMS ]]
local BubbleColor = {	WHITE = "dub",
					BLUE = "blu",
					GREEN = "gre",
					RED = "red" }

--[[ END OF SCRIPT ENUMS ]]

-- This screenGui exists so that the billboardGui is not deleted when the PlayerGui is reset.
local BubbleChatScreenGui = Instance.new("ScreenGui")
BubbleChatScreenGui.Name = "BubbleChat"
BubbleChatScreenGui.ResetOnSpawn = false
BubbleChatScreenGui.Parent = PlayerGui

--[[ FUNCTIONS ]]

local function lerpLength(msg, min, max)
	return min + (max-min) * math.min(string.len(msg)/75.0, 1.0)
end

local function createFifo()
	local this = {}
	this.data = {}

	local emptyEvent = Instance.new("BindableEvent")
	this.Emptied = emptyEvent.Event

	function this:Size()
		return #this.data
	end

	function this:Empty()
		return this:Size() <= 0
	end

	function this:PopFront()
		table.remove(this.data, 1)
		if this:Empty() then emptyEvent:Fire() end
	end

	function this:Front()
		return this.data[1]
	end

	function this:Get(index)
		return this.data[index]
	end

	function this:PushBack(value)
		table.insert(this.data, value)
	end

	function this:GetData()
		return this.data
	end

	return this
end

local function createCharacterChats()
	local this = {}

	this.Fifo = createFifo()
	this.BillboardGui = nil

	return this
end

local function createMap()
	local this = {}
	this.data = {}
	local count = 0

	function this:Size()
		return count
	end

	function this:Erase(key)
		if this.data[key] then count = count - 1 end
		this.data[key] = nil
	end

	function this:Set(key, value)
		this.data[key] = value
		if value then count = count + 1 end
	end

	function this:Get(key)
		if not key then return end
		if not this.data[key] then
			this.data[key] = createCharacterChats()
			local emptiedCon = nil
			emptiedCon = this.data[key].Fifo.Emptied:connect(function()
				emptiedCon:disconnect()
				this:Erase(key)
			end)
		end
		return this.data[key]
	end

	function this:GetData()
		return this.data
	end

	return this
end

local function createChatLine(message, bubbleColor, isLocalPlayer)
	local this = {}

	function this:ComputeBubbleLifetime(msg, isSelf)
		if isSelf then
			return lerpLength(msg,8,15)
		else
			return lerpLength(msg,12,20)
		end
	end

	this.Origin = nil
	this.RenderBubble = nil
	this.Message = message
	this.BubbleDieDelay = this:ComputeBubbleLifetime(message, isLocalPlayer)
	this.BubbleColor = bubbleColor
	this.IsLocalPlayer = isLocalPlayer

	return this
end

local function createPlayerChatLine(player, message, isLocalPlayer)
	local this = createChatLine(message, BubbleColor.WHITE, isLocalPlayer)

	if player then
		this.User = player.Name
		this.Origin = player.Character
	end

	return this
end

local function createGameChatLine(origin, message, isLocalPlayer, bubbleColor)
	local this = createChatLine(message, bubbleColor, isLocalPlayer)
	this.Origin = origin

	return this
end

function createChatBubbleMain(filePrefix, sliceRect)
	local chatBubbleMain = Instance.new("ImageLabel")
	chatBubbleMain.Name = "ChatBubble"
	chatBubbleMain.ScaleType = Enum.ScaleType.Slice
	chatBubbleMain.SliceCenter = sliceRect
	chatBubbleMain.Image = "rbxasset://textures/" .. tostring(filePrefix) .. ".png"
	chatBubbleMain.BackgroundTransparency = 1
	chatBubbleMain.BorderSizePixel = 0
	chatBubbleMain.Size = UDim2.new(1.0, 0, 1.0, 0)
	chatBubbleMain.Position = UDim2.new(0,0,0,0)

	return chatBubbleMain
end

function createChatBubbleTail(position, size)
	local chatBubbleTail = Instance.new("ImageLabel")
	chatBubbleTail.Name = "ChatBubbleTail"
	chatBubbleTail.Image = "rbxasset://textures/ui/dialog_tail.png"
	chatBubbleTail.BackgroundTransparency = 1
	chatBubbleTail.BorderSizePixel = 0
	chatBubbleTail.Position = position
	chatBubbleTail.Size = size

	return chatBubbleTail
end

function createChatBubbleWithTail(filePrefix, position, size, sliceRect)
	local chatBubbleMain = createChatBubbleMain(filePrefix, sliceRect)

	local chatBubbleTail = createChatBubbleTail(position, size)
	chatBubbleTail.Parent = chatBubbleMain

	return chatBubbleMain
end

function createScaledChatBubbleWithTail(filePrefix, frameScaleSize, position, sliceRect)
	local chatBubbleMain = createChatBubbleMain(filePrefix, sliceRect)

	local frame = Instance.new("Frame")
	frame.Name = "ChatBubbleTailFrame"
	frame.BackgroundTransparency = 1
	frame.SizeConstraint = Enum.SizeConstraint.RelativeXX
	frame.Position = UDim2.new(0.5, 0, 1, 0)
	frame.Size = UDim2.new(frameScaleSize, 0, frameScaleSize, 0)
	frame.Parent = chatBubbleMain

	local chatBubbleTail = createChatBubbleTail(position, UDim2.new(1,0,0.5,0))
	chatBubbleTail.Parent = frame

	return chatBubbleMain
end

function createChatImposter(filePrefix, dotDotDot, yOffset)
	local result = Instance.new("ImageLabel")
	result.Name = "DialogPlaceholder"
	result.Image = "rbxasset://textures/" .. tostring(filePrefix) .. ".png"
	result.BackgroundTransparency = 1
	result.BorderSizePixel = 0
	result.Position = UDim2.new(0, 0, -1.25, 0)
	result.Size = UDim2.new(1, 0, 1, 0)

	local image = Instance.new("ImageLabel")
	image.Name = "DotDotDot"
	image.Image = "rbxasset://textures/" .. tostring(dotDotDot) .. ".png"
	image.BackgroundTransparency = 1
	image.BorderSizePixel = 0
	image.Position = UDim2.new(0.001, 0, yOffset, 0)
	image.Size = UDim2.new(1, 0, 0.7, 0)
	image.Parent = result

	return result
end


local this = {}
this.ChatBubble = {}
this.ChatBubbleWithTail = {}
this.ScalingChatBubbleWithTail = {}
this.CharacterSortedMsg = createMap()

-- init chat bubble tables
local function initChatBubbleType(chatBubbleType, fileName, imposterFileName, isInset, sliceRect)
	this.ChatBubble[chatBubbleType] = createChatBubbleMain(fileName, sliceRect)
	this.ChatBubbleWithTail[chatBubbleType] = createChatBubbleWithTail(fileName, UDim2.new(0.5, -CHAT_BUBBLE_TAIL_HEIGHT, 1, isInset and -1 or 0), UDim2.new(0, 30, 0, CHAT_BUBBLE_TAIL_HEIGHT), sliceRect)
	this.ScalingChatBubbleWithTail[chatBubbleType] = createScaledChatBubbleWithTail(fileName, 0.5, UDim2.new(-0.5, 0, 0, isInset and -1 or 0), sliceRect)
end

initChatBubbleType(BubbleColor.WHITE,	"ui/dialog_white",	"ui/chatBubble_white_notify_bkg", 	false,	Rect.new(5,5,15,15))
initChatBubbleType(BubbleColor.BLUE,	"ui/dialog_blue",	"ui/chatBubble_blue_notify_bkg",	true, 	Rect.new(7,7,33,33))
initChatBubbleType(BubbleColor.RED,		"ui/dialog_red",	"ui/chatBubble_red_notify_bkg",		true,	Rect.new(7,7,33,33))
initChatBubbleType(BubbleColor.GREEN,	"ui/dialog_green",	"ui/chatBubble_green_notify_bkg",	true,	Rect.new(7,7,33,33))

function this:SanitizeChatLine(msg)
	if string.len(msg) > MaxChatMessageLengthExclusive then
		return string.sub(msg, 1, MaxChatMessageLengthExclusive + string.len(ELIPSES))
	else
		return msg
	end
end

local function createBillboardInstance(adornee)
	local billboardGui = Instance.new("BillboardGui")
	billboardGui.Adornee = adornee
	billboardGui.Size = UDim2.new(0,BILLBOARD_MAX_WIDTH,0,BILLBOARD_MAX_HEIGHT)
	billboardGui.StudsOffset = Vector3.new(0, 1.5, 2)
	billboardGui.Parent = BubbleChatScreenGui

	local billboardFrame = Instance.new("Frame")
	billboardFrame.Name = "BillboardFrame"
	billboardFrame.Size = UDim2.new(1,0,1,0)
	billboardFrame.Position = UDim2.new(0,0,-0.5,0)
	billboardFrame.BackgroundTransparency = 1
	billboardFrame.Parent = billboardGui

	local billboardChildRemovedCon = nil
	billboardChildRemovedCon = billboardFrame.ChildRemoved:connect(function()
		if #billboardFrame:GetChildren() <= 1 then
			billboardChildRemovedCon:disconnect()
			billboardGui:Destroy()
		end
	end)

	this:CreateSmallTalkBubble(BubbleColor.WHITE).Parent = billboardFrame

	return billboardGui
end

function this:CreateBillboardGuiHelper(instance, onlyCharacter)
	if instance and not this.CharacterSortedMsg:Get(instance)["BillboardGui"] then
		if not onlyCharacter then
			if instance:IsA("BasePart") then
				-- Create a new billboardGui object attached to this player
				local billboardGui = createBillboardInstance(instance)
				this.CharacterSortedMsg:Get(instance)["BillboardGui"] = billboardGui
				return
			end
		end

		if instance:IsA("Model") then
			local head = instance:FindFirstChild("Head")
			if head and head:IsA("BasePart") then
				-- Create a new billboardGui object attached to this player
				local billboardGui = createBillboardInstance(head)
				this.CharacterSortedMsg:Get(instance)["BillboardGui"] = billboardGui
			end
		end
	end
end

local function distanceToBubbleOrigin(origin)
	if not origin then return 100000 end

	return (origin.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
end

local function isPartOfLocalPlayer(adornee)
	if adornee and PlayersService.LocalPlayer.Character then
		return adornee:IsDescendantOf(PlayersService.LocalPlayer.Character)
	end
end

function this:SetBillboardLODNear(billboardGui)
	local isLocalPlayer = isPartOfLocalPlayer(billboardGui.Adornee)
	billboardGui.Size = UDim2.new(0, BILLBOARD_MAX_WIDTH, 0, BILLBOARD_MAX_HEIGHT)
	billboardGui.StudsOffset = Vector3.new(0, isLocalPlayer and 1.5 or 2.5, isLocalPlayer and 2 or 0.1)
	billboardGui.Enabled = true
	local billChildren = billboardGui.BillboardFrame:GetChildren()
	for i = 1, #billChildren do
		billChildren[i].Visible = true
	end
	billboardGui.BillboardFrame.SmallTalkBubble.Visible = false
end

function this:SetBillboardLODDistant(billboardGui)
	local isLocalPlayer = isPartOfLocalPlayer(billboardGui.Adornee)
	billboardGui.Size = UDim2.new(4,0,3,0)
	billboardGui.StudsOffset = Vector3.new(0, 3, isLocalPlayer and 2 or 0.1)
	billboardGui.Enabled = true
	local billChildren = billboardGui.BillboardFrame:GetChildren()
	for i = 1, #billChildren do
		billChildren[i].Visible = false
	end
	billboardGui.BillboardFrame.SmallTalkBubble.Visible = true
end

function this:SetBillboardLODVeryFar(billboardGui)
	billboardGui.Enabled = false
end

function this:SetBillboardGuiLOD(billboardGui, origin)
	if not origin then return end

	if origin:IsA("Model") then
		local head = origin:FindFirstChild("Head")
		if not head then origin = origin.PrimaryPart
		else origin = head end
	end

	local bubbleDistance = distanceToBubbleOrigin(origin)

	if bubbleDistance < NEAR_BUBBLE_DISTANCE then
		this:SetBillboardLODNear(billboardGui)
	elseif bubbleDistance >= NEAR_BUBBLE_DISTANCE and bubbleDistance < MAX_BUBBLE_DISTANCE then
		this:SetBillboardLODDistant(billboardGui)
	else
		this:SetBillboardLODVeryFar(billboardGui)
	end
end

function this:CameraCFrameChanged()
	for index, value in pairs(this.CharacterSortedMsg:GetData()) do
		local playerBillboardGui = value["BillboardGui"]
		if playerBillboardGui then this:SetBillboardGuiLOD(playerBillboardGui, index) end
	end
end

function this:CreateBubbleText(message)
	local bubbleText = Instance.new("TextLabel")
	bubbleText.Name = "BubbleText"
	bubbleText.BackgroundTransparency = 1
	bubbleText.Position = UDim2.new(0,CHAT_BUBBLE_WIDTH_PADDING/2,0,0)
	bubbleText.Size = UDim2.new(1,-CHAT_BUBBLE_WIDTH_PADDING,1,0)
	bubbleText.Font = CHAT_BUBBLE_FONT
	if shouldClipInGameChat then
		bubbleText.ClipsDescendants = true
	end
	bubbleText.TextWrapped = true
	bubbleText.FontSize = CHAT_BUBBLE_FONT_SIZE
	bubbleText.Text = message
	bubbleText.Visible = false

	return bubbleText
end

function this:CreateSmallTalkBubble(chatBubbleType)
	local smallTalkBubble = this.ScalingChatBubbleWithTail[chatBubbleType]:Clone()
	smallTalkBubble.Name = "SmallTalkBubble"
	smallTalkBubble.AnchorPoint = Vector2.new(0, 0.5)
	smallTalkBubble.Position = UDim2.new(0,0,0.5,0)
	smallTalkBubble.Visible = false
	local text = this:CreateBubbleText("...")
	text.TextScaled = true
	text.TextWrapped = false
	text.Visible = true
	text.Parent = smallTalkBubble

	return smallTalkBubble
end

function this:UpdateChatLinesForOrigin(origin, currentBubbleYPos)
	local bubbleQueue = this.CharacterSortedMsg:Get(origin).Fifo
	local bubbleQueueSize = bubbleQueue:Size()
	local bubbleQueueData = bubbleQueue:GetData()
	if #bubbleQueueData <= 1 then return end

	for index = (#bubbleQueueData - 1), 1, -1 do
		local value = bubbleQueueData[index]
		local bubble = value.RenderBubble
		if not bubble then return end
		local bubblePos = bubbleQueueSize - index + 1

		if bubblePos > 1 then
			local tail = bubble:FindFirstChild("ChatBubbleTail")
			if tail then tail:Destroy() end
			local bubbleText = bubble:FindFirstChild("BubbleText")
			if bubbleText then bubbleText.TextTransparency = 0.5 end
		end

		local udimValue = UDim2.new( bubble.Position.X.Scale, bubble.Position.X.Offset,
									1, currentBubbleYPos - bubble.Size.Y.Offset - CHAT_BUBBLE_TAIL_HEIGHT )
		bubble:TweenPosition(udimValue, Enum.EasingDirection.Out, Enum.EasingStyle.Bounce, 0.1, true)
		currentBubbleYPos = currentBubbleYPos - bubble.Size.Y.Offset - CHAT_BUBBLE_TAIL_HEIGHT
	end
end

function this:DestroyBubble(bubbleQueue, bubbleToDestroy)
	if not bubbleQueue then return end
	if bubbleQueue:Empty() then return end

	local bubble = bubbleQueue:Front().RenderBubble
	if not bubble then
		bubbleQueue:PopFront()
	 	return
	end

	spawn(function()
		while bubbleQueue:Front().RenderBubble ~= bubbleToDestroy do
			wait()
		end

		bubble = bubbleQueue:Front().RenderBubble

		local timeBetween = 0
		local bubbleText = bubble:FindFirstChild("BubbleText")
		local bubbleTail = bubble:FindFirstChild("ChatBubbleTail")

		while bubble and bubble.ImageTransparency < 1 do
			timeBetween = wait()
			if bubble then
				local fadeAmount = timeBetween * CHAT_BUBBLE_FADE_SPEED
				bubble.ImageTransparency = bubble.ImageTransparency + fadeAmount
				if bubbleText then bubbleText.TextTransparency = bubbleText.TextTransparency + fadeAmount end
				if bubbleTail then bubbleTail.ImageTransparency = bubbleTail.ImageTransparency + fadeAmount end
			end
		end

		if bubble then
			bubble:Destroy()
			bubbleQueue:PopFront()
		end
	end)
end

function this:CreateChatLineRender(instance, line, onlyCharacter, fifo)
	if not instance then return end

	if not this.CharacterSortedMsg:Get(instance)["BillboardGui"] then
		this:CreateBillboardGuiHelper(instance, onlyCharacter)
	end

	local billboardGui = this.CharacterSortedMsg:Get(instance)["BillboardGui"]
	if billboardGui then
		local chatBubbleRender = this.ChatBubbleWithTail[line.BubbleColor]:Clone()
		chatBubbleRender.Visible = false
		local bubbleText = this:CreateBubbleText(line.Message)

		bubbleText.Parent = chatBubbleRender
		chatBubbleRender.Parent = billboardGui.BillboardFrame

		line.RenderBubble = chatBubbleRender

		local currentTextBounds = TextService:GetTextSize(
				bubbleText.Text, CHAT_BUBBLE_FONT_SIZE_INT, CHAT_BUBBLE_FONT,
				Vector2.new(BILLBOARD_MAX_WIDTH, BILLBOARD_MAX_HEIGHT))
		local bubbleWidthScale = math.max((currentTextBounds.X + CHAT_BUBBLE_WIDTH_PADDING)/BILLBOARD_MAX_WIDTH, 0.1)
		local numOflines = (currentTextBounds.Y/CHAT_BUBBLE_FONT_SIZE_INT)

		-- prep chat bubble for tween
		chatBubbleRender.Size = UDim2.new(0,0,0,0)
		chatBubbleRender.Position = UDim2.new(0.5,0,1,0)

		local newChatBubbleOffsetSizeY = numOflines * CHAT_BUBBLE_LINE_HEIGHT

		chatBubbleRender:TweenSizeAndPosition(UDim2.new(bubbleWidthScale, 0, 0, newChatBubbleOffsetSizeY),
											 	UDim2.new( (1-bubbleWidthScale)/2, 0, 1, -newChatBubbleOffsetSizeY),
											 	Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.1, true,
											 	function() bubbleText.Visible = true end)

		-- todo: remove when over max bubbles
		this:SetBillboardGuiLOD(billboardGui, line.Origin)
		this:UpdateChatLinesForOrigin(line.Origin, -newChatBubbleOffsetSizeY)

		delay(line.BubbleDieDelay, function()
			this:DestroyBubble(fifo, chatBubbleRender)
		end)
	end
end

function this:OnPlayerChatMessage(sourcePlayer, message, targetPlayer)
	if not this:BubbleChatEnabled() then return end

	local localPlayer = PlayersService.LocalPlayer
	local fromOthers = localPlayer ~= nil and sourcePlayer ~= localPlayer

	local safeMessage = this:SanitizeChatLine(message)

	local line = createPlayerChatLine(sourcePlayer, safeMessage, not fromOthers)

	if sourcePlayer and line.Origin then
		local fifo = this.CharacterSortedMsg:Get(line.Origin).Fifo
		fifo:PushBack(line)
		--Game chat (badges) won't show up here
		this:CreateChatLineRender(sourcePlayer.Character, line, true, fifo)
	end
end

function this:OnGameChatMessage(origin, message, color)
	local localPlayer = PlayersService.LocalPlayer
	local fromOthers = localPlayer ~= nil and (localPlayer.Character ~= origin)

	local bubbleColor = BubbleColor.WHITE

	if color == Enum.ChatColor.Blue then bubbleColor = BubbleColor.BLUE
	elseif color == Enum.ChatColor.Green then bubbleColor = BubbleColor.GREEN
	elseif color == Enum.ChatColor.Red then bubbleColor = BubbleColor.RED end

	local safeMessage = this:SanitizeChatLine(message)
	local line = createGameChatLine(origin, safeMessage, not fromOthers, bubbleColor)

	this.CharacterSortedMsg:Get(line.Origin).Fifo:PushBack(line)
	this:CreateChatLineRender(origin, line, false, this.CharacterSortedMsg:Get(line.Origin).Fifo)
end

function this:BubbleChatEnabled()
	local clientChatModules = ChatService:FindFirstChild("ClientChatModules")
	if clientChatModules then
		local chatSettings = clientChatModules:FindFirstChild("ChatSettings")
		if chatSettings then
			local chatSettings = require(chatSettings)
			if chatSettings.BubbleChatEnabled ~= nil then
				return chatSettings.BubbleChatEnabled
			end
		end
	end
	return PlayersService.BubbleChat
end

function this:ShowOwnFilteredMessage()
	local clientChatModules = ChatService:FindFirstChild("ClientChatModules")
	if clientChatModules then
		local chatSettings = clientChatModules:FindFirstChild("ChatSettings")
		if chatSettings then
			chatSettings = require(chatSettings)
			return chatSettings.ShowUserOwnFilteredMessage
		end
	end
	return false
end

function findPlayer(playerName)
	for i,v in pairs(PlayersService:GetPlayers()) do
		if v.Name == playerName then
			return v
		end
	end
end

ChatService.Chatted:connect(function(origin, message, color) this:OnGameChatMessage(origin, message, color) end)

local cameraChangedCon = nil
if game.Workspace.CurrentCamera then
	cameraChangedCon = game.Workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):connect(function(prop) this:CameraCFrameChanged() end)
end

game.Workspace.Changed:connect(function(prop)
	if prop == "CurrentCamera" then
		if cameraChangedCon then cameraChangedCon:disconnect() end
		if game.Workspace.CurrentCamera then
			cameraChangedCon = game.Workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):connect(function(prop) this:CameraCFrameChanged() end)
		end
	end
end)


local AllowedMessageTypes = nil

function getAllowedMessageTypes()
	if AllowedMessageTypes then
		return AllowedMessageTypes
	end
	local clientChatModules = ChatService:FindFirstChild("ClientChatModules")
	if clientChatModules then
		local chatSettings = clientChatModules:FindFirstChild("ChatSettings")
		if chatSettings then
			chatSettings = require(chatSettings)
			if chatSettings.BubbleChatMessageTypes then
				AllowedMessageTypes = chatSettings.BubbleChatMessageTypes
				return AllowedMessageTypes
			end
		end
		local chatConstants = clientChatModules:FindFirstChild("ChatConstants")
		if chatConstants then
			chatConstants = require(chatConstants)
			AllowedMessageTypes = {chatConstants.MessageTypeDefault, chatConstants.MessageTypeWhisper}
		end
		return AllowedMessageTypes
	end
	return {"Message", "Whisper"}
end

function checkAllowedMessageType(messageData)
	local allowedMessageTypes = getAllowedMessageTypes()
	for i = 1, #allowedMessageTypes do
		if allowedMessageTypes[i] == messageData.MessageType then
			return true
		end
	end
	return false
end

local ChatEvents = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents")
local OnMessageDoneFiltering = ChatEvents:WaitForChild("OnMessageDoneFiltering")
local OnNewMessage = ChatEvents:WaitForChild("OnNewMessage")

OnNewMessage.OnClientEvent:connect(function(messageData, channelName)
	if not checkAllowedMessageType(messageData) then
		return
	end

	local sender = findPlayer(messageData.FromSpeaker)
	if not sender then
		return
	end

	if not messageData.IsFiltered or messageData.FromSpeaker == LocalPlayer.Name then
		if messageData.FromSpeaker ~= LocalPlayer.Name or this:ShowOwnFilteredMessage() then
			return
		end
	end

	this:OnPlayerChatMessage(sender, messageData.Message, nil)
end)

OnMessageDoneFiltering.OnClientEvent:connect(function(messageData, channelName)
	if not checkAllowedMessageType(messageData) then
		return
	end

	local sender = findPlayer(messageData.FromSpeaker)
	if not sender then
		return
	end

	if messageData.FromSpeaker == LocalPlayer.Name and not this:ShowOwnFilteredMessage() then
		return
	end

	this:OnPlayerChatMessage(sender, messageData.Message, nil)
end)
