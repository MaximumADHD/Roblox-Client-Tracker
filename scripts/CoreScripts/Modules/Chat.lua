--[[
	// FileName: Chat.lua
	// Written by: SolarCrane
	// Description: Code for lua side chat on ROBLOX.
]]

--[[ CONSTANTS ]]

-- NOTE: IF YOU WANT TO USE THIS CHAT SCRIPT IN YOUR OWN GAME:
-- 1) COPY THE CONTENTS OF THIS FILE INTO A MODULE
-- 2) CREATE A LOCALSCRIPT AND PARENT IT TO StarterGui
-- 3) IN THE LOCALSCRIPT require() THE CHAT MODULE YOU MADE IN STEP 1
-- 4) CONFIGURE YOUR PLACE ON THE WEBSITE TO USE BUBBLE-CHAT
-- 5) SET THE FOLLOWING TWO VARIABLES TO TRUE
local FORCE_CHAT_GUI = false
local NON_CORESCRIPT_MODE = false
-- 6) (OPTIONAL) PUT THE FOLLOWING LINE IN A SERVER SCRIPT TO MAKE CHAT PERSIST THROUGH RESPAWNING
--  game:GetService('StarterGui').ResetPlayerGuiOnSpawn = false
---------------------------------

local MESSAGES_FADE_OUT_TIME = 30
local MAX_UDIM_SIZE = 2^15 - 1

local CHAT_WINDOW_Y_OFFSET = 2

local PHONE_SCREEN_WIDTH = 640
local TABLET_SCREEN_WIDTH = 1024

local FLOOD_CHECK_MESSAGE_COUNT = 7
local FLOOD_CHECK_MESSAGE_INTERVAL = 15 -- This is in seconds

local VR_CHAT_CLICK_DEBOUNCE = 0.25

local SCROLLBAR_THICKNESS = 7
local CHAT_COLORS =
{
  Color3.new(253/255, 41/255, 67/255), -- BrickColor.new("Bright red").Color,
  Color3.new(1/255, 162/255, 255/255), -- BrickColor.new("Bright blue").Color,
  Color3.new(2/255, 184/255, 87/255), -- BrickColor.new("Earth green").Color,
  BrickColor.new("Bright violet").Color,
  BrickColor.new("Bright orange").Color,
  BrickColor.new("Bright yellow").Color,
  BrickColor.new("Light reddish violet").Color,
  BrickColor.new("Brick yellow").Color,
}

local thisModuleName = "Chat"

local emptySelectionImage = Instance.new("ImageLabel")
emptySelectionImage.ImageTransparency = 1
emptySelectionImage.BackgroundTransparency = 1

--[[ END OF CONSTANTS ]]

--[[ SERVICES ]]
local RunService = game:GetService('RunService')
local CoreGuiService = game:GetService('CoreGui')
local PlayersService = game:GetService('Players')
local DebrisService = game:GetService('Debris')
local GuiService = game:GetService('GuiService')
local InputService = game:GetService('UserInputService')
local StarterGui = game:GetService('StarterGui')
local ContextActionService = game:GetService('ContextActionService')
local Settings = UserSettings()
local GameSettings = Settings.GameSettings
--[[ END OF SERVICES ]]

--[[ Fast Flags ]]--
local playerDropDownEnabledSuccess, playerDropDownEnabledFlagValue = pcall(function() return settings():GetFFlag("PlayerDropDownEnabled") end)
local IsPlayerDropDownEnabled = playerDropDownEnabledSuccess and playerDropDownEnabledFlagValue

--[[ SCRIPT VARIABLES ]]
local RobloxGui = CoreGuiService:WaitForChild("RobloxGui")
local VRHub = require(RobloxGui.Modules.VR.VRHub)
local PlayerPermissionsModule = require(RobloxGui.Modules.PlayerPermissionsModule)
local StatsUtils = require(RobloxGui.Modules.Stats.StatsUtils)

-- I am not fond of waiting at the top of the script here...
while PlayersService.LocalPlayer == nil do PlayersService.ChildAdded:wait() end
local Player = PlayersService.LocalPlayer
-- GuiRoot will act as the top-node for parenting GUIs
local GuiRoot = Instance.new('Frame')
GuiRoot.Name = 'GuiRoot';
GuiRoot.Size = UDim2.new(1,0,1,0);
GuiRoot.BackgroundTransparency = 1;



local chatRepositioned = false
local chatBarDisabled = false

local lastSelectedPlayer = nil
local lastSelectedButton = nil

local playerDropDownModule = nil
local playerDropDown = nil
local blockingUtility = nil

local topbarEnabled = true

if not NON_CORESCRIPT_MODE and not InputService.VREnabled then
  playerDropDownModule = require(RobloxGui.Modules:WaitForChild("PlayerDropDown"))
  playerDropDown = playerDropDownModule:CreatePlayerDropDown()
  blockingUtility = playerDropDownModule:CreateBlockingUtility()
end

--[[ END OF SCRIPT VARIABLES ]]

local function GetLuaChatFilteringFlag()
  return true
end

local Util = {}
do
  -- Check if we are running on a touch device
  function Util.IsTouchDevice()
    local touchEnabled = false
    pcall(function() touchEnabled = InputService.TouchEnabled end)
    return touchEnabled
  end

  function Util.IsSmallScreenSize()
    return GuiRoot.AbsoluteSize.X <= PHONE_SCREEN_WIDTH
  end

  function Util.Create(instanceType)
    return function(data)
      local obj = Instance.new(instanceType)
      for k, v in pairs(data) do
        if type(k) == 'number' then
          v.Parent = obj
        else
          obj[k] = v
        end
      end
      return obj
    end
  end

  function Util.Clamp(low, high, input)
    return math.max(low, math.min(high, input))
  end

  function Util.Linear(t, b, c, d)
    if t >= d then return b + c end

    return c*t/d + b
  end

  function Util.EaseOutQuad(t, b, c, d)
    if t >= d then return b + c end

    t = t/d;
    return -c * t*(t-2) + b
  end

  function Util.EaseInOutQuad(t, b, c, d)
    if t >= d then
      return b + c
    end

    t = t / (d/2);
    if (t < 1) then
      return c/2*t*t + b
    end;
    t = t - 1;
    return -c/2 * (t*(t-2) - 1) + b;
  end

    function Util.PropertyTweener(instance, prop, start, final, duration, easingFunc, cbFunc)
    local this = {}
    this.StartTime = tick()
    this.EndTime = this.StartTime + duration
    this.Cancelled = false

    local finished = false
    local percentComplete = 0
    spawn(function()
        local now = tick()
        while now < this.EndTime and instance do
          if this.Cancelled then
            return
          end
          instance[prop] = easingFunc(now - this.StartTime, start, final - start, duration)
          percentComplete = Util.Clamp(0, 1, (now - this.StartTime) / duration)
          RunService.RenderStepped:wait()
          now = tick()
        end
        if this.Cancelled == false and instance then
          instance[prop] = final
          finished = true
          percentComplete = 1
          if cbFunc then
            cbFunc()
          end
        end
      end)

    function this:GetPercentComplete()
      return percentComplete
    end

    function this:IsFinished()
      return finished
    end

    function this:Cancel()
      this.Cancelled = true
    end

    return this
  end

  function Util.Signal()
    local sig = {}

    local mSignaler = Instance.new('BindableEvent')

    local mArgData = nil
    local mArgDataCount = nil

    function sig:fire(...)
      mArgData = {...}
      mArgDataCount = select('#', ...)
      mSignaler:Fire()
    end

    function sig:connect(f)
      if not f then error("connect(nil)", 2) end
      return mSignaler.Event:connect(function()
          f(unpack(mArgData, 1, mArgDataCount))
        end)
    end

    function sig:wait()
      mSignaler.Event:wait()
      assert(mArgData, "Missing arg data, likely due to :TweenSize/Position corrupting threadrefs.")
      return unpack(mArgData, 1, mArgDataCount)
    end

    return sig
  end

  function Util.DisconnectEvent(conn)
    if conn then
      conn:disconnect()
    end
    return nil
  end

  function Util.SetGUIInsetBounds(x, y)
    local success, _ = pcall(function() GuiService:SetGlobalGuiInset(0, x, 0, y) end)
    if not success then
      pcall(function() GuiService:SetGlobalSizeOffsetPixel(-x, -y) end) -- Legacy GUI-offset function
    end
  end

  local baseUrl = game:GetService("ContentProvider").BaseUrl:lower()
  baseUrl = string.gsub(baseUrl,"/m.","/www.") --mobile site does not work for this stuff!
  function Util.GetSecureApiBaseUrl()
    local secureApiUrl = baseUrl
    secureApiUrl = string.gsub(secureApiUrl,"http://","https://")
    secureApiUrl = string.gsub(secureApiUrl,"www","api")
    return secureApiUrl
  end

  function Util.GetPlayerByName(playerName)
    -- O(n), may be faster if I store a reverse hash from the players list; can't trust FindFirstChild in PlayersService because anything can be parented to there.
    local lowerName = string.lower(playerName)
    for _, player in pairs(PlayersService:GetPlayers()) do
      if string.lower(player.Name) == lowerName then
        return player
      end
    end
    return nil -- Found no player
  end

  local function MakeIsInGroup(groupId, requiredRank)
    assert(type(requiredRank) == "nil" or type(requiredRank) == "number", "requiredRank must be a number or nil")

    local inGroupCache = {}
    return function(player)
      if player and player.UserId then
        local userId = player.UserId

        if inGroupCache[userId] == nil then
          local inGroup = false
          pcall(function() -- Many things can error is the IsInGroup check
              if requiredRank then
                inGroup = player:GetRankInGroup(groupId) > requiredRank
              else
                inGroup = player:IsInGroup(groupId)
              end
            end)
          inGroupCache[userId] = inGroup
        end

        return inGroupCache[userId]
      end

      return false
    end
  end
  Util.IsPlayerAdminAsync = MakeIsInGroup(1200769)
  Util.IsPlayerInternAsync = MakeIsInGroup(2868472, 100)

  local function GetNameValue(pName)
    local value = 0
    for index = 1, #pName do
      local cValue = string.byte(string.sub(pName, index, index))
      local reverseIndex = #pName - index + 1
      if #pName%2 == 1 then
        reverseIndex = reverseIndex - 1
      end
      if reverseIndex%4 >= 2 then
        cValue = -cValue
      end
      value = value + cValue
    end
    return value
  end

  function Util.ComputeChatColor(pName)
    return CHAT_COLORS[(GetNameValue(pName) % #CHAT_COLORS) + 1]
  end

  -- This is a memo-izing function
  local testLabel = Instance.new('TextLabel')
  testLabel.TextWrapped = true;
  testLabel.Position = UDim2.new(1,0,1,0)
  testLabel.Parent = GuiRoot -- Note: We have to parent it to check TextBounds
  -- The TextSizeCache table looks like this Text->Font->sizeBounds->FontSize
  local TextSizeCache = {}
  function Util.GetStringTextBounds(text, font, fontSize, sizeBounds)
    -- If no sizeBounds are specified use some huge number
    sizeBounds = sizeBounds or false
    if not TextSizeCache[text] then
      TextSizeCache[text] = {}
    end
    if not TextSizeCache[text][font] then
      TextSizeCache[text][font] = {}
    end
    if not TextSizeCache[text][font][sizeBounds] then
      TextSizeCache[text][font][sizeBounds] = {}
    end
    if not TextSizeCache[text][font][sizeBounds][fontSize] then
      testLabel.Text = text
      testLabel.Font = font
      testLabel.FontSize = fontSize
      if sizeBounds then
        testLabel.TextWrapped = true;
        testLabel.Size = sizeBounds
      else
        testLabel.TextWrapped = false;
      end
      TextSizeCache[text][font][sizeBounds][fontSize] = testLabel.TextBounds
    end
    return TextSizeCache[text][font][sizeBounds][fontSize]
  end

  local PRINTABLE_CHARS = '[^' .. string.char(32) .. '-' ..  string.char(126) .. ']'
  local WHITESPACE_CHARS = '(' .. string.rep('%s', 7) .. ')%s+'
  function Util.FilterUnprintableCharacters(str)
    if not GetLuaChatFilteringFlag() then
      return str
    end

    local result = str:gsub(PRINTABLE_CHARS, '');
    result = str:gsub(WHITESPACE_CHARS, '%1');
    return result
  end
end

local SelectChatModeEvent = Util.Signal()
local SelectPlayerEvent = Util.Signal()

local function CreateChatMessage()
  local this = {}
  this.FadeRoutines = {}

  function this:GetMessageFontSize(settings)
    return Util.IsSmallScreenSize() and settings.SmallScreenFontSize or settings.FontSize
  end

  function this:OnResize()
    -- Nothing!
  end

  function this:FadeIn()
    local gui = this:GetGui()
    if gui then
      gui.Visible = true
    end
  end

  function this:FadeOut()
    local gui = this:GetGui()
    if gui then
      gui.Visible = false
    end
  end

  function this:GetGui()
    return this.Container
  end

  function this:Destroy()
    if this.Container ~= nil then
      this.Container:Destroy()
      this.Container = nil
    end
    if this.FadeRoutines then
      for _, routine in pairs(this.FadeRoutines) do
        routine:Cancel()
      end
      this.FadeRoutines = {}
    end
  end

  return this
end

local function CreateSystemChatMessage(settings, chattedMessage)
  local this = CreateChatMessage()

  this.Settings = settings
  this.rawChatString = chattedMessage

  function this:OnResize(containerSize)
    if this.Container and this.ChatMessage then

      if InputService.VREnabled then
        this.ChatMessage.Position = UDim2.new(0, 4, 0, 0)
        this.ChatMessage.Size = UDim2.new(1, 0, 1, 0)
      end

      this.Container.Size = UDim2.new(1,0,0,1000)
      local textHeight = this.ChatMessage.TextBounds.Y

      local newContainerHeight = textHeight + 5
      this.Container.Size = UDim2.new(1,0,0,newContainerHeight)
      return newContainerHeight
    end
  end

  function this:FadeIn()
    local gui = this:GetGui()
    if gui then
      gui.Visible = true
      for _, routine in pairs(this.FadeRoutines) do
        routine:Cancel()
      end
      this.FadeRoutines = {}
      local tweenableObjects = {
        this.ChatMessage;
      }
      for _, object in pairs(tweenableObjects) do
        object.TextTransparency = 0;
        object.TextStrokeTransparency = this.Settings.TextStrokeTransparency;
      end

      if this.MessageBackgroundImage then
        this.MessageBackgroundImage.Visible = InputService.VREnabled
      end
    end
  end

  function this:FadeOut(instant)
    local gui = this:GetGui()
    if gui then
      if instant then
        gui.Visible = false
      else
        local tweenableObjects = {
          this.ChatMessage;
        }
        for _, object in pairs(tweenableObjects) do
          table.insert(this.FadeRoutines, Util.PropertyTweener(object, 'TextTransparency', object.TextTransparency, 1, 1, Util.Linear))
          table.insert(this.FadeRoutines, Util.PropertyTweener(object, 'TextStrokeTransparency', object.TextStrokeTransparency, 1, 0.85, Util.Linear))
        end
      end
      if this.MessageBackgroundImage then
        this.MessageBackgroundImage.Visible = false
      end
    end
  end

  local function CreateMessageGuiElement()
    local fontSize = this:GetMessageFontSize(this.Settings)

    local systemMessageDisplayText = this.rawChatString or ""
    local systemMessageSize = Util.GetStringTextBounds(systemMessageDisplayText, this.Settings.Font, fontSize, UDim2.new(0, 400, 0, 1000))

    local container = Util.Create'Frame'
    {
      Name = 'MessageContainer';
      Position = UDim2.new(0, 0, 0, 0);
      ZIndex = 1;
      BackgroundColor3 = Color3.new(0, 0, 0);
      BackgroundTransparency = 1;
    };
    this.MessageBackgroundImage = Util.Create'ImageLabel'
    {
      Name = 'TextEntryBackground';
      Size = UDim2.new(1,0,1,-2);
      Position = UDim2.new(0,0,0,1);
      Image = 'rbxasset://textures/ui/Chat/VRChatBackground.png';
      ScaleType = Enum.ScaleType.Slice;
      SliceCenter = Rect.new(8,8,56,56);
      BackgroundTransparency = 1;
      ImageTransparency = 0.3;
      BorderSizePixel = 0;
      ZIndex = 1;
      Visible = InputService.VREnabled;
      Parent = container;
    }

    local chatMessage = Util.Create'TextLabel'
    {
      Name = 'SystemChatMessage';
      Position = UDim2.new(0, 0, 0, 0);
      Size = UDim2.new(1, 0, 1, 0);
      Text = systemMessageDisplayText;
      ZIndex = 1;
      BackgroundColor3 = Color3.new(0, 0, 0);
      BackgroundTransparency = 1;
      TextXAlignment = Enum.TextXAlignment.Left;
      TextYAlignment = Enum.TextYAlignment.Top;
      TextWrapped = true;
      TextColor3 = this.Settings.DefaultMessageTextColor;
      FontSize = fontSize;
      Font = this.Settings.Font;
      TextStrokeColor3 = this.Settings.TextStrokeColor;
      TextStrokeTransparency = this.Settings.TextStrokeTransparency;
      Parent = container;
    };
    if InputService.VREnabled then
      chatMessage.Position = UDim2.new(0, 4, 0, 0)
      chatMessage.Size = UDim2.new(1, 0, 1, 0)
    end

    container.Size = UDim2.new(1, 0, 0, systemMessageSize.Y + 1);
    this.Container = container
    this.ChatMessage = chatMessage
  end

  CreateMessageGuiElement()

  return this
end

--[[ Popup Handling ]]--
function createPopupFrame(selectedPlayer, selectedButton)
  if selectedPlayer and selectedPlayer.Parent == PlayersService then
    if lastSelectedButton ~= selectedButton then
      if lastSelectedButton ~= nil then
        lastSelectedButton.BackgroundTransparency = 1
        lastSelectedButton = nil
      end
      lastSelectedButton = selectedButton
      lastSelectedPlayer = selectedPlayer
      selectedButton.BackgroundTransparency = 0.5

      if IsPlayerDropDownEnabled then
        playerDropDown.HidePopupImmediately = true
        local PopupFrame = playerDropDown:CreatePopup(selectedPlayer)
        PopupFrame.Position = UDim2.new(0, selectedButton.AbsolutePosition.X + selectedButton.AbsoluteSize.X + 2, 0, selectedButton.AbsolutePosition.Y)
        PopupFrame.Size = UDim2.new(0, 150, PopupFrame.Size.Y.Scale, PopupFrame.Size.Y.Offset)
        PopupFrame.ZIndex = 5
        PopupFrame.Parent = GuiRoot

        for _, button in pairs(PopupFrame:GetChildren()) do
          button.BackgroundTransparency = 0
          button.ZIndex = 6
        end
      end
    else
      if IsPlayerDropDownEnabled then
        playerDropDown:Hide()
      end
      lastSelectedPlayer = nil
    end
  end
end

function popupHidden()
  if lastSelectedButton then
    lastSelectedPlayer = nil
    lastSelectedButton.BackgroundTransparency = 1
    lastSelectedButton = nil
  end
end

if IsPlayerDropDownEnabled and playerDropDown then
  playerDropDown.HiddenSignal:connect(popupHidden)
end

InputService.InputBegan:connect(function(inputObject, isProcessed)
    if isProcessed then return end
    local inputType = inputObject.UserInputType
    if ((inputType == Enum.UserInputType.Touch and
        inputObject.UserInputState == Enum.UserInputState.Begin) or
      inputType == Enum.UserInputType.MouseButton1) then
      if lastSelectedButton and IsPlayerDropDownEnabled then
        playerDropDown:Hide()
      end
    end
  end)

--[[ End of popup handling ]]--

local function CreatePlayerChatMessage(settings, playerChatType, sendingPlayer, chattedMessage, receivingPlayer)
  local this = CreateChatMessage()

  this.Settings = settings
  this.PlayerChatType = playerChatType
  this.SendingPlayer = sendingPlayer
  this.RawMessageContent = chattedMessage
  this.ReceivingPlayer = receivingPlayer
  this.ReceivedTime = tick()

  this.Neutral = this.SendingPlayer and this.SendingPlayer.Neutral or true
  this.TeamColor = this.SendingPlayer and this.SendingPlayer.TeamColor or BrickColor.new("White")

  function this:OnResize(containerSize)
    if this.Container and this.ChatMessage then
      this.Container.Size = UDim2.new(1,0,0,1000)
      local textHeight = this.ChatMessage.TextBounds.Y
      local newContainerHeight = textHeight + 5
      this.Container.Size = UDim2.new(1,0,0,newContainerHeight)
      return newContainerHeight
    end
  end

  function this:FormatMessage()
    local result = ""
    if this.RawMessageContent then
      local message = this.RawMessageContent
      result = message
    end
    return result
  end

  function this:FormatChatType()
    if this.PlayerChatType then
      if this.PlayerChatType == Enum.PlayerChatType.All then
        --return "[All]"
      elseif this.PlayerChatType == Enum.PlayerChatType.Team then
        return "[Team]"
      elseif this.PlayerChatType == Enum.PlayerChatType.Whisper then
        -- nothing!
      end
    end
  end

  function this:FormatPlayerNameText()
    local playerName = ""
    -- If we are sending a whisper to someone, then we should show their name
    if this.PlayerChatType == Enum.PlayerChatType.Whisper and this.SendingPlayer and this.SendingPlayer == Player then
      playerName = (this.ReceivingPlayer and this.ReceivingPlayer.Name or "")
    else
      playerName = (this.SendingPlayer and this.SendingPlayer.Name or "")
    end
    return "[" ..  playerName .. "]:"
  end

  function this:FadeIn()
    local gui = this:GetGui()
    if gui then
      gui.Visible = true
      for _, routine in pairs(this.FadeRoutines) do
        routine:Cancel()
      end
      this.FadeRoutines = {}
      local tweenableObjects = {
        this.WhisperToText;
        this.WhisperFromText;
        this.ChatModeButton;
        this.UserNameButton;
        this.ChatMessage;
      }
      for _, object in pairs(tweenableObjects) do
        object.TextTransparency = 0;
        object.TextStrokeTransparency = this.Settings.TextStrokeTransparency;
        object.Active = true
      end
      if this.UserNameDot then
        this.UserNameDot.ImageTransparency = 0
      end

      if this.MessageBackgroundImage then
        this.MessageBackgroundImage.Visible = InputService.VREnabled
      end
    end
  end

  function this:FadeOut(instant)
    local gui = this:GetGui()
    if gui then
      if instant then
        gui.Visible = false
      else
        local tweenableObjects = {
          this.WhisperToText;
          this.WhisperFromText;
          this.ChatModeButton;
          this.UserNameButton;
          this.ChatMessage;
        }
        for _, object in pairs(tweenableObjects) do
          table.insert(this.FadeRoutines, Util.PropertyTweener(object, 'TextTransparency', object.TextTransparency, 1, 1, Util.Linear))
          table.insert(this.FadeRoutines, Util.PropertyTweener(object, 'TextStrokeTransparency', object.TextStrokeTransparency, 1, 0.85, Util.Linear))
          object.Active = false
        end
        if this.UserNameDot then
          table.insert(this.FadeRoutines, Util.PropertyTweener(this.UserNameDot, 'ImageTransparency', this.UserNameDot.ImageTransparency, 1, 1, Util.Linear))
        end
      end
      if this.MessageBackgroundImage then
        this.MessageBackgroundImage.Visible = false
      end
    end
  end

  function this:Destroy()
    if this.Container ~= nil then
      this.Container:Destroy()
      this.Container = nil
    end
    this.ClickedOnModeConn = Util.DisconnectEvent(this.ClickedOnModeConn)
    this.ClickedOnPlayerConn = Util.DisconnectEvent(this.ClickedOnPlayerConn)
    this.RightClickedOnPlayerConn = Util.DisconnectEvent(this.RightClickedOnPlayerConn)
  end

  local function CreateMessageGuiElement()
    local fontSize = this:GetMessageFontSize(this.Settings)

    local toMesasgeDisplayText = "To "
    local toMessageSize = Util.GetStringTextBounds(toMesasgeDisplayText, this.Settings.Font, fontSize)
    local fromMesasgeDisplayText = "From "
    local fromMessageSize = Util.GetStringTextBounds(fromMesasgeDisplayText, this.Settings.Font, fontSize)
    local chatTypeDisplayText = this:FormatChatType()
    local chatTypeSize = chatTypeDisplayText and Util.GetStringTextBounds(chatTypeDisplayText, this.Settings.Font, fontSize) or Vector2.new(0,0)
    local playerNameDisplayText = this:FormatPlayerNameText()
    local playerNameSize = Util.GetStringTextBounds(playerNameDisplayText, this.Settings.Font, fontSize)

    local singleSpaceSize = Util.GetStringTextBounds(" ", this.Settings.Font, fontSize)
    local numNeededSpaces = math.ceil(playerNameSize.X / singleSpaceSize.X) + 1
    local chatMessageDisplayText = string.rep(" ", numNeededSpaces) .. this:FormatMessage()
    local chatMessageSize = Util.GetStringTextBounds(chatMessageDisplayText, this.Settings.Font, fontSize, UDim2.new(0, 400 - 5 - playerNameSize.X, 0, 1000))


    local playerColor = this.Settings.DefaultMessageTextColor
    if this.SendingPlayer then
      if this.PlayerChatType == Enum.PlayerChatType.Whisper then
        if this.SendingPlayer == Player and this.ReceivingPlayer then
          playerColor = Util.ComputeChatColor(this.ReceivingPlayer.Name)
        else
          playerColor = Util.ComputeChatColor(this.SendingPlayer.Name)
        end
      else
        if this.SendingPlayer.Neutral then
          playerColor = Util.ComputeChatColor(this.SendingPlayer.Name)
        else
          playerColor = this.SendingPlayer.TeamColor.Color
        end
      end
    end

    local container = Util.Create'Frame'
    {
      Name = 'MessageContainer';
      Position = UDim2.new(0, 0, 0, 0);
      ZIndex = 1;
      BackgroundColor3 = Color3.new(0, 0, 0);
      BackgroundTransparency = 1;
    };
    this.MessageBackgroundImage = Util.Create'ImageLabel'
    {
      Name = 'TextEntryBackground';
      Size = UDim2.new(1,0,1,-2);
      Position = UDim2.new(0,0,0,1);
      Image = 'rbxasset://textures/ui/Chat/VRChatBackground.png';
      ScaleType = Enum.ScaleType.Slice;
      SliceCenter = Rect.new(8,8,56,56);
      BackgroundTransparency = 1;
      ImageTransparency = 0.3;
      BorderSizePixel = 0;
      ZIndex = 1;
      Visible = InputService.VREnabled;
      Parent = container;
    }

    local xOffset = InputService.VREnabled and 4 or 0

    if this.SendingPlayer and this.SendingPlayer == Player and this.PlayerChatType == Enum.PlayerChatType.Whisper then
      local whisperToText = Util.Create'TextLabel'
      {
        Name = 'WhisperTo';
        Position = UDim2.new(0, 0, 0, 0);
        Size = UDim2.new(0, toMessageSize.X, 0, toMessageSize.Y);
        Text = toMesasgeDisplayText;
        ZIndex = 1;
        BackgroundColor3 = Color3.new(0, 0, 0);
        BackgroundTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextYAlignment = Enum.TextYAlignment.Top;
        TextWrapped = true;
        TextColor3 = this.Settings.DefaultMessageTextColor;
        FontSize = fontSize;
        Font = this.Settings.Font;
        TextStrokeColor3 = this.Settings.TextStrokeColor;
        TextStrokeTransparency = this.Settings.TextStrokeTransparency;
        Parent = container;
      };
      xOffset = xOffset + toMessageSize.X
      this.WhisperToText = whisperToText
    elseif this.SendingPlayer and this.SendingPlayer ~= Player and this.PlayerChatType == Enum.PlayerChatType.Whisper then
      local whisperFromText = Util.Create'TextLabel'
      {
        Name = 'WhisperFromText';
        Position = UDim2.new(0, 0, 0, 0);
        Size = UDim2.new(0, fromMessageSize.X, 0, fromMessageSize.Y);
        Text = fromMesasgeDisplayText;
        ZIndex = 1;
        BackgroundColor3 = Color3.new(0, 0, 0);
        BackgroundTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextYAlignment = Enum.TextYAlignment.Top;
        TextWrapped = true;
        TextColor3 = this.Settings.DefaultMessageTextColor;
        FontSize = fontSize;
        Font = this.Settings.Font;
        TextStrokeColor3 = this.Settings.TextStrokeColor;
        TextStrokeTransparency = this.Settings.TextStrokeTransparency;
        Parent = container;
      };
      xOffset = xOffset + fromMessageSize.X
      this.WhisperFromText = whisperFromText
    end
    if chatTypeDisplayText then
      local chatModeButton = Util.Create(Util.IsTouchDevice() and 'TextLabel' or 'TextButton')
      {
        Name = 'ChatMode';
        BackgroundTransparency = 1;
        ZIndex = 2;
        Text = chatTypeDisplayText;
        TextColor3 = this.Settings.DefaultMessageTextColor;
        Position = UDim2.new(0, xOffset, 0, 0);
        TextXAlignment = Enum.TextXAlignment.Left;
        TextYAlignment = Enum.TextYAlignment.Top;
        FontSize = fontSize;
        Font = this.Settings.Font;
        Size = UDim2.new(0, chatTypeSize.X, 0, chatTypeSize.Y);
        TextStrokeColor3 = this.Settings.TextStrokeColor;
        TextStrokeTransparency = this.Settings.TextStrokeTransparency;
        Parent = container
      }
      if chatModeButton:IsA('TextButton') then
        this.ClickedOnModeConn = chatModeButton.MouseButton1Click:connect(function()
            SelectChatModeEvent:fire(this.PlayerChatType)
          end)
      end
      if this.PlayerChatType == Enum.PlayerChatType.Team then
        chatModeButton.TextColor3 = playerColor
      end
      xOffset = xOffset + chatTypeSize.X + 1
      this.ChatModeButton = chatModeButton
    end
    local userNameButton = Util.Create(Util.IsTouchDevice() and 'TextLabel' or 'TextButton')
    {
      Name = 'PlayerName';
      BackgroundTransparency = 1;
      BackgroundColor3 = Color3.new(0, 1, 1);
      BorderSizePixel = 0;
      ZIndex = 2;
      Text = playerNameDisplayText;
      TextColor3 = playerColor;
      Position = UDim2.new(0, xOffset, 0, 0);
      TextXAlignment = Enum.TextXAlignment.Left;
      TextYAlignment = Enum.TextYAlignment.Top;
      FontSize = fontSize;
      Font = this.Settings.Font;
      Size = UDim2.new(0, playerNameSize.X, 0, playerNameSize.Y);
      TextStrokeColor3 = this.Settings.TextStrokeColor;
      TextStrokeTransparency = this.Settings.TextStrokeTransparency;
      Parent = container
    }
    if userNameButton:IsA('TextButton') then
      this.ClickedOnPlayerConn = userNameButton.MouseButton1Click:connect(function()
          local gui = this:GetGui()
          if gui and gui.Visible then
            if this.PlayerChatType == Enum.PlayerChatType.Whisper and this.SendingPlayer == Player and this.ReceivingPlayer then
              SelectPlayerEvent:fire(this.ReceivingPlayer)
            else
              SelectPlayerEvent:fire(this.SendingPlayer)
            end
          end
        end)
      this.RightClickedOnPlayerConn = userNameButton.MouseButton2Click:connect(function()
          local gui = this:GetGui()
          if gui and gui.Visible then
            if IsPlayerDropDownEnabled and playerDropDown then
              if this.SendingPlayer and this.SendingPlayer ~= Player then
                createPopupFrame(this.SendingPlayer, userNameButton)
              end
            end
          end
        end)
    end

    local chatMessage = Util.Create'TextLabel'
    {
      Name = 'ChatMessage';
      Position = UDim2.new(0, xOffset, 0, 0);
      Size = UDim2.new(1, -xOffset, 1, 0);
      Text = chatMessageDisplayText;
      ZIndex = 1;
      BackgroundColor3 = Color3.new(0, 0, 0);
      BackgroundTransparency = 1;
      TextXAlignment = Enum.TextXAlignment.Left;
      TextYAlignment = Enum.TextYAlignment.Top;
      TextWrapped = true;
      TextColor3 = this.Settings.DefaultMessageTextColor;
      FontSize = fontSize;
      Font = this.Settings.Font;
      TextStrokeColor3 = this.Settings.TextStrokeColor;
      TextStrokeTransparency = this.Settings.TextStrokeTransparency;
      Parent = container;
    };
    if InputService.VREnabled then
      chatMessage.Size = chatMessage.Size - UDim2.new(0,4,0,0)
    end
    -- Check if they got moderated and put up a real message instead of Label
    if chatMessage.Text == 'Label' and chatMessageDisplayText ~= 'Label' then
      chatMessage.Text = string.rep(" ", numNeededSpaces) .. '[Content Deleted]'
    end
    if this.SendingPlayer then
      if PlayerPermissionsModule.IsPlayerAdminAsync(this.SendingPlayer) then
        chatMessage.TextColor3 = this.Settings.AdminTextColor
      elseif PlayerPermissionsModule.IsPlayerInternAsync(this.SendingPlayer) then
        chatMessage.TextColor3 = this.Settings.InternTextColor
      end
    end
    chatMessage.Size = chatMessage.Size + UDim2.new(0, 0, 0, chatMessage.TextBounds.Y);

    container.Size = UDim2.new(1, 0, 0, math.max(chatMessageSize.Y + 1, userNameButton.Size.Y.Offset + 1));
    this.Container = container
    this.ChatMessage = chatMessage
    this.UserNameButton = userNameButton
  end

  CreateMessageGuiElement()

  return this
end

local function CreateChatBarWidget(settings)
  local this = {}

  -- MessageModes: {All, Team, Whisper}
  this.MessageMode = 'All'
  this.TargetWhisperPlayer = nil
  this.Settings = settings

  this.WidgetVisible = false
  this.FadedIn = true

  this.ChatBarGainedFocusEvent = Util.Signal()
  this.ChatBarLostFocusEvent = Util.Signal()
  this.ChatCommandEvent = Util.Signal() -- Signal Signatue: success, actionType, [captures]
  this.ChatErrorEvent = Util.Signal() -- Signal Signatue: success, actionType, [captures]
  this.ChatBarFloodEvent = Util.Signal()

  this.unfocusedAt = 0

  local chatCoreGuiEnabled = true

  -- This function while lets string.find work case-insensitively without clobbering the case of the captures
  local function nocase(s)
    s = string.gsub(s, "%a", function (c)
        return string.format("[%s%s]", string.lower(c),
          string.upper(c))
      end)
    return s
  end

  this.ChatMatchingRegex =
  {
    [function(chatBarText) return string.find(chatBarText, nocase("^/w ") .. "(%w+_?%w+)") end] = "Whisper";
    [function(chatBarText) return string.find(chatBarText, nocase("^/whisper ") .. "(%w+_?%w+)") end] = "Whisper";

    [function(chatBarText) return string.find(chatBarText, "^%%") end] = "Team";
    [function(chatBarText) return string.find(chatBarText, "^%(TEAM%)") end] = "Team";
    [function(chatBarText) return string.find(chatBarText, nocase("^/t")) end] = "Team";
    [function(chatBarText) return string.find(chatBarText, nocase("^/team")) end] = "Team";

    [function(chatBarText) return string.find(chatBarText, nocase("^/a")) end] = "All";
    [function(chatBarText) return string.find(chatBarText, nocase("^/all")) end] = "All";
    [function(chatBarText) return string.find(chatBarText, nocase("^/s")) end] = "All";
    [function(chatBarText) return string.find(chatBarText, nocase("^/say")) end] = "All";

    [function(chatBarText) return string.find(chatBarText, nocase("^/e")) end] = "Emote";
    [function(chatBarText) return string.find(chatBarText, nocase("^/emote")) end] = "Emote";

    [function(chatBarText) return string.find(chatBarText, "^/%?") end] = "Help";
    [function(chatBarText) return string.find(chatBarText, nocase("^/help")) end] = "Help";

    [function(chatBarText) return string.find(chatBarText, nocase("^/block ") .. "(%w+_?%w+)") end] = "Block";

    [function(chatBarText) return string.find(chatBarText, nocase("^/unblock ") .. "(%w+_?%w+)") end] = "Unblock";

    [function(chatBarText) return string.find(chatBarText, nocase("^/mute ") .. "(%w+_?%w+)") end] = "Mute";

    [function(chatBarText) return string.find(chatBarText, nocase("^/unmute ") .. "(%w+_?%w+)") end] = "Unmute";
  }

  local ChatModesDict =
  {
    ['Whisper'] = 'Whisper';
    ['Team'] = 'Team';
    ['All'] = 'All';
    [Enum.PlayerChatType.Whisper] = 'Whisper';
    [Enum.PlayerChatType.Team] = 'Team';
    [Enum.PlayerChatType.All] = 'All';
  }

  local function TearDownEvents()
    this.ClickToChatButtonConn = Util.DisconnectEvent(this.ClickToChatButtonConn)
    this.ChatBarFocusLostConn = Util.DisconnectEvent(this.ChatBarFocusLostConn)
    this.ChatBarLostFocusConn = Util.DisconnectEvent(this.ChatBarLostFocusConn)
    this.SelectChatModeConn = Util.DisconnectEvent(this.SelectChatModeConn)
    this.SelectPlayerConn = Util.DisconnectEvent(this.SelectPlayerConn)
    this.FocusChatBarInputBeganConn = Util.DisconnectEvent(this.FocusChatBarInputBeganConn)
    this.InputBeganConn = Util.DisconnectEvent(this.InputBeganConn)
    this.ChatBarChangedConn = Util.DisconnectEvent(this.ChatBarChangedConn)
  end

  local function HookUpEvents()
    TearDownEvents() -- Cleanup old events

    if this.ClickToChatButton then this.ClickToChatButtonConn = this.ClickToChatButton.MouseButton1Click:connect(function() this:FocusChatBar() end) end

    if this.ChatBar then
      -- Use a count to check for double backspace out of a chatmode
      local count = 0
      if not Util.IsTouchDevice() then
        this.FocusChatBarInputBeganConn = Util.DisconnectEvent(this.FocusChatBarInputBeganConn)
        this.FocusChatBarInputBeganConn = InputService.InputBegan:connect(function(inputObj)
            if inputObj.KeyCode == Enum.KeyCode.Backspace and this:GetChatBarText() == "" then
              if count == 0 then
                count = count + 1
              else
                this:SetMessageMode('All')
              end
            else
              count = 0
            end
          end)
      end

      this.ChatBarFocusLostConn = this.ChatBar.FocusLost:connect(function(...)
          count = 0
          this.unfocusedAt = tick()
          this.ChatBarLostFocusEvent:fire(...)
        end)
      this.ChatBarChangedConn = this.ChatBar.Changed:connect(function(prop)
          if prop == "Text" then
            this:OnChatBarTextChanged()
          elseif prop == 'TextFits' or prop == 'TextBounds' or prop == 'Visible' then
            this:OnChatBarBoundsChanged()
          end
        end)
    end

    if this.ChatBarLostFocusEvent then this.ChatBarLostFocusConn = this.ChatBarLostFocusEvent:connect(function(...) this:OnChatBarFocusLost(...) end) end

    this.SelectChatModeConn = SelectChatModeEvent:connect(function(chatType)
        this:SetMessageMode(chatType)
        this:FocusChatBar()
      end)

    this.SelectPlayerConn = SelectPlayerEvent:connect(function(chatPlayer)
        this.TargetWhisperPlayer = chatPlayer
        this:SetMessageMode("Whisper")
        this:FocusChatBar()
      end)

    this.InputBeganConn = InputService.InputBegan:connect(function(inputObject)
        if inputObject.KeyCode == Enum.KeyCode.Escape then
          -- Clear text when they press escape
          this:SetChatBarText("")
        end
      end)
  end

  function this:CalculateVisibility()
    if this.ChatBarContainer then
      local enabled = self.WidgetVisible and chatCoreGuiEnabled and not NON_CORESCRIPT_MODE
      if enabled then
        HookUpEvents()
      else
        TearDownEvents()
      end
      this.ChatBarContainer.Visible = enabled and self.FadedIn and (not chatBarDisabled)
    end
  end

  function this:ToggleVisibility(visible)
    if visible ~= self.WidgetVisible then
      self.WidgetVisible = visible
      self:CalculateVisibility()
    end
    if NON_CORESCRIPT_MODE or chatBarDisabled then
      this.ChatBarContainer.Visible = false
    end
  end

  function this:FadeIn()
    self.FadedIn = true
    self:CalculateVisibility()
  end

  function this:FadeOut()
    self.FadedIn = false
    self:CalculateVisibility()
  end

  function this:CoreGuiChanged(coreGuiType, enabled)
    if coreGuiType == Enum.CoreGuiType.Chat or coreGuiType == Enum.CoreGuiType.All then
      chatCoreGuiEnabled = enabled
      self:CalculateVisibility()
    end
  end

  function this:IsAChatMode(mode)
    return ChatModesDict[mode] ~= nil
  end

  function this:ProcessChatBarModes(requireWhitespaceAfterChatMode)
    local matchedAChatCommand = false
    if this.ChatBar then
      local chatBarText = this:SanitizeInput(this:GetChatBarText())
      for regexFunc, actionType in pairs(this.ChatMatchingRegex) do
        local start, finish, capture = regexFunc(chatBarText)
        if start and finish then
          -- The following line is for whether or not to try setting the chatmode as-you-type
          -- versus when you press enter.
          local whitespaceAfterSlashCommand = string.find(string.sub(chatBarText, finish+1, finish+1), "%s")
          if (not requireWhitespaceAfterChatMode and finish == #chatBarText) or whitespaceAfterSlashCommand then
            if this:IsAChatMode(actionType) then
              if actionType == "Whisper" then
                local targetPlayer = capture and Util.GetPlayerByName(capture)
                if targetPlayer then --and targetPlayer ~= Player then
                  this.TargetWhisperPlayer = targetPlayer
                  -- start from two over to eat the space or tab character after the slash command
                  this:SetChatBarText(string.sub(chatBarText, finish + 2))
                  this:SetMessageMode(actionType)
                  this.ChatCommandEvent:fire(true, actionType, capture)
                else
                  -- This is an indirect way of detecting if they used enter to close submit this chat
                  if not requireWhitespaceAfterChatMode then
                    this:SetChatBarText("")
                    this.ChatCommandEvent:fire(false, actionType, capture)
                  end
                end
              else
                -- start from two over to eat the space or tab character after the slash command
                this:SetChatBarText(string.sub(chatBarText, finish + 2))
                this:SetMessageMode(actionType)
                this.ChatCommandEvent:fire(true, actionType, capture)
              end
            elseif actionType == "Emote" then
              -- You can only emote to everyone.
              this:SetMessageMode('All')
            elseif not requireWhitespaceAfterChatMode then -- Some non-chat related command
              if actionType == "Help" then
                this:SetChatBarText("") -- Clear the chat so we don't send /? to everyone
              end
              this.ChatCommandEvent:fire(true, actionType, capture)
            end
            -- should we break here since we already matched a slash command or keep going?
            matchedAChatCommand = true
          end
        end
      end
    end
    return matchedAChatCommand
  end

  local previousText = ""
  function this:OnChatBarTextChanged()
    if not Util.IsTouchDevice() then
      this:ProcessChatBarModes(true)
      local originalText = this:GetChatBarText()
      local newText = Util.FilterUnprintableCharacters(originalText)
      if newText ~= originalText then
        previousText = newText
      end

      local fixedText = newText
      if #newText > this.Settings.MaxCharactersInMessage or originalText ~= newText then
        -- This is a hack to deal with the bug that holding down a key for repeated input doesn't trigger the textChanged event
        if #newText == #previousText + 1 then
          fixedText = string.sub(previousText, 1, this.Settings.MaxCharactersInMessage)
        else
          fixedText = string.sub(newText, 1, this.Settings.MaxCharactersInMessage)
        end
      end
      this:SetChatBarText(fixedText)
      previousText = fixedText
    end
  end

  function this:OnChatBarBoundsChanged()
    if this.ChatBarContainer and this.ChatBar then
      local currSize = this.ChatBarContainer.Size
      if this.ChatBar.Visible and not this.ChatBar.TextFits then
        local textBounds = Util.GetStringTextBounds(this.ChatBar.Text, this.ChatBar.Font, this.ChatBar.FontSize, UDim2.new(0, this.ChatBar.AbsoluteSize.X, 0, 1000))
        if textBounds.Y <= 36 then
          this.ChatBarContainer.Size = UDim2.new(currSize.X.Scale, currSize.X.Offset, currSize.Y.Scale, 58)
        else --if currSize.Y.Offset <= 54 then
          this.ChatBarContainer.Size = UDim2.new(currSize.X.Scale, currSize.X.Offset, currSize.Y.Scale, 76)
        end
      elseif this.ChatBar.Visible == false or this.ChatBar.TextBounds.Y <= 18 then
        if currSize.Y.Offset ~= 40 then
          this.ChatBarContainer.Size = UDim2.new(currSize.X.Scale, currSize.X.Offset, currSize.Y.Scale, 40)
        end
      elseif this.ChatBar.TextBounds.Y <= 36 then
        this.ChatBarContainer.Size = UDim2.new(currSize.X.Scale, currSize.X.Offset, currSize.Y.Scale, 58)
      end
    end
  end

  function this:GetChatBarText()
    return this.ChatBar and this.ChatBar.Text or ""
  end

  function this:SetChatBarText(newText)
    if this.ChatBar and newText ~= this.ChatBar.Text then
      this.ChatBar.Text = newText
    end
  end

  function this:GetMessageMode()
    return this.MessageMode
  end

  function this:SetMessageMode(newMessageMode)
    newMessageMode = ChatModesDict[newMessageMode]

    local chatRecipientText = "[" .. (this.TargetWhisperPlayer and this.TargetWhisperPlayer.Name or "") .. "]"
    if this.MessageMode ~= newMessageMode or (newMessageMode == 'Whisper' and this.ChatModeText and chatRecipientText ~= this.ChatModeText.Text) then
      if this.ChatModeText then
        this.MessageMode = newMessageMode
        if newMessageMode == 'Whisper' then
          local chatRecipientTextBounds = Util.GetStringTextBounds(chatRecipientText, this.ChatModeText.Font, this.ChatModeText.FontSize)

          this.ChatModeText.TextColor3 = this.Settings.WhisperTextColor
          this.ChatModeText.Text = chatRecipientText
          this.ChatModeText.Size = UDim2.new(0, chatRecipientTextBounds.X, 1, 0)
        elseif newMessageMode == 'Team' then
          local chatTeamText = '[Team]'
          local chatTeamTextBounds = Util.GetStringTextBounds(chatTeamText, this.ChatModeText.Font, this.ChatModeText.FontSize)

          this.ChatModeText.TextColor3 = this.Settings.TeamTextColor
          this.ChatModeText.Text = "[Team]"
          this.ChatModeText.Size = UDim2.new(0, chatTeamTextBounds.X, 1, 0)
        else
          this.ChatModeText.Text = ""
          this.ChatModeText.Size = UDim2.new(0, 0, 1, 0)
        end
        if this.ChatBar then
          local offset = this.ChatModeText.Size.X.Offset + this.ChatModeText.Position.X.Offset
          this.ChatBar.Size = UDim2.new(1, -14 - offset, 1, 0)
          this.ChatBar.Position = UDim2.new(0, 7 + offset, 0, 0)
        end
      end
    end
  end

  function this:FocusChatBar()
    if this.ChatBar and not chatBarDisabled then
      this.ChatBar.Visible = true
      this.ChatBar:CaptureFocus()
      if self.ClickToChatButton then
        self.ClickToChatButton.Visible = false
      end
      if this.ChatModeText then
        this.ChatModeText.Visible = true
      end
      if Util.IsTouchDevice() or InputService.VREnabled then
        this:SetMessageMode('All') -- Don't remember message mode on mobile devices or VR
      end
      -- Update chatbar properties when chatbar is focused
      this:OnChatBarBoundsChanged()
      if this.ChatBarContainer then
        if self.ChatBarInnerBackground then
          self.ChatBarInnerBackground.BackgroundTransparency = 0
        end
      end
      this.ChatBarGainedFocusEvent:fire()
    end
  end

  function this:RemoveFocus()
    if self:IsFocused() then
      self.ChatBar:ReleaseFocus()
    end
  end

  function this:IsFocused()
    return self.ChatBar and self.ChatBar == InputService:GetFocusedTextBox()
  end

  function this:WasFocused()
    return (tick() - this.unfocusedAt) < VR_CHAT_CLICK_DEBOUNCE
  end

  function this:SanitizeInput(input)
    local sanitizedInput = input
    -- Chomp the whitespace at the front and end of the string
    -- TODO: maybe only chop off the front space if there are more than a few?
    local _, _, capture = string.find(sanitizedInput, "^%s*(.*)%s*$")
    sanitizedInput = capture or ""

    return sanitizedInput
  end


  local sentMessageTimeQueue = {}
  function this:FloodCheck()
    if not GetLuaChatFilteringFlag() then
      return false
    end

    while sentMessageTimeQueue[1] and tick() - sentMessageTimeQueue[1] > FLOOD_CHECK_MESSAGE_INTERVAL do
      table.remove(sentMessageTimeQueue, 1)
    end
    if #sentMessageTimeQueue > FLOOD_CHECK_MESSAGE_COUNT then
      return true
    end
    return false
  end

  function this:OnChatBarFocusLost(enterPressed)
    if self.ChatBar then
      self.ChatBar.Visible = false
      if enterPressed then
        local didMatchSlashCommand = self:ProcessChatBarModes(false)
        local cText = self:SanitizeInput(self:GetChatBarText())
        if cText ~= "" then
          if self:FloodCheck() then -- and not didMatchSlashCommand then
            self.ChatBarFloodEvent:fire()
          else
            -- For now we will let any slash command go through, NOTE: these will show up in bubble-chat
            --if not didMatchSlashCommand and string.sub(cText,1,1) == "/" then
            --	self.ChatCommandEvent:fire(false, "Unknown", cText)
            --else
            local currentMessageMode = self:GetMessageMode()
            -- {All, Team, Whisper}
            if currentMessageMode == 'Team' then
              if Player and Player.Neutral == true then
                self.ChatErrorEvent:fire("You're not on a team.")
              else
                pcall(function() PlayersService:TeamChat(cText) end)
              end
            elseif currentMessageMode == 'Whisper' then
              if self.TargetWhisperPlayer then
                if self.TargetWhisperPlayer == Player then
                  self.ChatErrorEvent:fire("You cannot send a whisper to yourself.")
                else
                  pcall(function() PlayersService:WhisperChat(cText, self.TargetWhisperPlayer) end)
                end
              else
                self.ChatErrorEvent:fire("Invalid whisper target.")
              end
            elseif currentMessageMode == 'All' then
              pcall(function() PlayersService:Chat(cText) end)
            else
              spawn(function() error("ChatScript: Unknown Message Mode of " .. tostring(currentMessageMode)) end)
            end
            table.insert(sentMessageTimeQueue, tick())
            --end
            self:SetChatBarText("")
          end
        end
      end
    end
    if self.ClickToChatButton then
      self.ClickToChatButton.Visible = true
      -- Fade-back in the text so it doesn't abruptly appear
      -- Normally I would like to cancel the old tween but it is so short that it doesn't matter
      self.ClickToChatButton.TextTransparency = 1
      Util.PropertyTweener(self.ClickToChatButton, 'TextTransparency', 1, 0, 0.25, Util.Linear)
    end
    if self.ChatModeText then
      self.ChatModeText.Visible = false
    end
    if this.ChatBarContainer then
      local currSize = this.ChatBarContainer.Size
      this.ChatBarContainer.Size = UDim2.new(currSize.X.Scale, currSize.X.Offset, currSize.Y.Scale, 32)
      if self.ChatBarInnerBackground then
        self.ChatBarInnerBackground.BackgroundTransparency = 0.5
      end
    end
    this.ChatBarChangedConn = Util.DisconnectEvent(this.ChatBarChangedConn)
    this.FocusChatBarInputBeganConn = Util.DisconnectEvent(this.FocusChatBarInputBeganConn)
  end

  local function CreateChatBar()
    local chatBarContainer = Util.Create'Frame'
    {
      Name = 'ChatBarContainer';
      Position = UDim2.new(0, 0, 1, 0);
      Size = UDim2.new(1, 0, 0, 20);
      ZIndex = 1;
      BackgroundColor3 = Color3.new(0, 0, 0);
      BackgroundTransparency = 0.25;
      BorderSizePixel = 0;
    };
    chatBarContainer.BackgroundColor3 = Color3.new(31/255, 31/255, 31/255);
    chatBarContainer.BackgroundTransparency = 0.5;
    local chatBarInnerBackground = Util.Create'Frame'
    {
      Name = 'InnerBackground';
      Position = UDim2.new(0, 7, 0, 5);
      Size = UDim2.new(1, -14, 1, -10);
      ZIndex = 1;
      BackgroundColor3 = Color3.new(209/255, 216/255, 221/255);
      BackgroundTransparency = 0.5;
      BorderSizePixel = 0;
    };
    local clickToChatButton = Util.Create'TextButton'
    {
      Name = 'ClickToChat';
      Position = UDim2.new(0,9,0,0);
      Size = UDim2.new(1, -9, 1, 0);
      BackgroundTransparency = 1;
      AutoButtonColor = false;
      ZIndex = 3;
      Text = 'To chat click here or press "/" key';
      TextColor3 = this.Settings.GlobalTextColor;
      TextXAlignment = Enum.TextXAlignment.Left;
      TextYAlignment = Enum.TextYAlignment.Top;
      Font = Enum.Font.SourceSansBold;
      FontSize = Enum.FontSize.Size18;
      Parent = chatBarContainer;
    }
    clickToChatButton.TextWrapped = true;
    clickToChatButton.Position = UDim2.new(0, 7, 0, 0);
    clickToChatButton.Size = UDim2.new(1, -14, 1, 0);
    clickToChatButton.TextYAlignment = Enum.TextYAlignment.Center;
    if Util.IsTouchDevice() then
      clickToChatButton.Text = "Tap here to chat"
    end

    local chatBar = Util.Create'TextBox'
    {
      Name = 'ChatBar';
      Position = UDim2.new(0, 9, 0, 0);
      Size = UDim2.new(1, -9, 1, 0);
      Text = "";
      ZIndex = 1;
      BackgroundColor3 = Color3.new(0, 0, 0);
      Active = false;
      BackgroundTransparency = 1;
      TextXAlignment = Enum.TextXAlignment.Left;
      TextYAlignment = Enum.TextYAlignment.Top;
      TextColor3 = this.Settings.GlobalTextColor;
      Font = Enum.Font.SourceSansBold;
      FontSize = Enum.FontSize.Size18;
      ClearTextOnFocus = false;
      Visible = not Util.IsTouchDevice();
      Parent = chatBarContainer;
      SelectionImageObject = emptySelectionImage;
    }
    chatBar.TextWrapped = true;
    chatBar.Position = UDim2.new(0, 7, 0, 0);
    chatBar.Size = UDim2.new(1, -14, 1, 0);
    chatBar.TextYAlignment = Enum.TextYAlignment.Center;
    chatBar.Visible = false;

    local chatModeText = Util.Create'TextButton'
    {
      Name = 'ChatModeText';
      Position = UDim2.new(0, 9, 0, 0);
      Size = UDim2.new(1, -9, 1, 0);
      AutoButtonColor = false;
      BackgroundTransparency = 1;
      ZIndex = 2;
      Text = '';
      TextColor3 = this.Settings.WhisperTextColor;
      TextXAlignment = Enum.TextXAlignment.Left;
      TextYAlignment = Enum.TextYAlignment.Top;
      Font = Enum.Font.SourceSansBold;
      FontSize = Enum.FontSize.Size18;
      Parent = chatBarContainer;
    }
    chatModeText.Position = UDim2.new(0, 7, 0, 0);
    chatModeText.Size = UDim2.new(1, -14, 1, 0);
    chatModeText.TextYAlignment = Enum.TextYAlignment.Center;
    -- Create grey background for text
    chatBarInnerBackground.Parent = chatBarContainer;
    clickToChatButton.Parent = chatBarInnerBackground;
    chatBar.Parent = chatBarInnerBackground;
    chatModeText.Parent = chatBarInnerBackground;

    this.ChatBarContainer = chatBarContainer
    this.ChatBarInnerBackground = chatBarInnerBackground
    this.ClickToChatButton = clickToChatButton
    this.ChatBar = chatBar
    this.ChatModeText = chatModeText
    this.ChatBarContainer.Parent = GuiRoot

    local function UpdateChatBarContainerLayout(newSize)
      if chatBarContainer then
        local chatbarVisible = this.ChatBar and this.ChatBar.Visible
        local bubbleChatIsOn = not PlayersService.ClassicChat and PlayersService.BubbleChat
        -- Phone
        if newSize.X <= PHONE_SCREEN_WIDTH then
          chatBarContainer.Size = UDim2.new(0.5, 0,0, chatbarVisible and 40 or 32)
          if bubbleChatIsOn then
            chatBarContainer.Position = UDim2.new(0, 0, 0, 2)
          else
            chatBarContainer.Position = UDim2.new(0, 0, 0.5, 2)
          end
          -- Tablet
        elseif newSize.X <= TABLET_SCREEN_WIDTH then
          chatBarContainer.Size = UDim2.new(0.4, 0,0, chatbarVisible and 40 or 32)
          if bubbleChatIsOn then
            chatBarContainer.Position = UDim2.new(0, 0, 0, 2)
          else
            chatBarContainer.Position = UDim2.new(0, 0, 0.3, 2)
          end
          -- Desktop
        else
          chatBarContainer.Size = UDim2.new(0.3, 0,0, chatbarVisible and 40 or 32)
          if bubbleChatIsOn then
            chatBarContainer.Position = UDim2.new(0, 0, 0, 2)
          else
            chatBarContainer.Position = UDim2.new(0,0,0.25, 2)
          end
        end

        if Util.IsTouchDevice() or InputService.VREnabled then
          -- Hide the chatbar on mobile and in VR so they can't see it.
          chatBarContainer.Position = UDim2.new(0,0,1,20);
        end
      end
    end

    GuiRoot.Changed:connect(function(prop)
        if (prop == "AbsoluteSize" and not chatRepositioned) then
          UpdateChatBarContainerLayout(GuiRoot.AbsoluteSize)
        end
      end)
    UpdateChatBarContainerLayout(GuiRoot.AbsoluteSize)
  end


  CreateChatBar()
  return this
end

local function CreateChatWindowWidget(settings)
  local this = {}
  this.Settings = settings
  this.Chats = {}
  this.BackgroundVisible = false
  this.ChatsVisible = false
  this.WidgetVisible = false
  this.NewUnreadMessage = false
  this.MessageCount = 0

  this.MessageCountChanged = Util.Signal()
  this.FadeInSignal = Util.Signal()
  this.FadeOutSignal = Util.Signal()

  this.ChatWindowPagingConn = nil

  local lastMoveTime = tick()
  local lastEnterTime = tick()
  local lastLeaveTime = tick()

  local lastFadeOutTime = 0
  local lastFadeInTime = 0
  local lastChatActivity = 0

  local FadeLock = false

  local chatCoreGuiEnabled = true

  local function PointInChatWindow(pt)
    local point0 = this.ChatContainer.AbsolutePosition
    local point1 = point0 + this.ChatContainer.AbsoluteSize
    -- HACK, this is so the "ChatWindow" includes the chatbar box, TODO: refactor the fadeing code to include the chatbar
    point1 = point1 + Vector2.new(0, 34)
    return (point0.X <= pt.X and
      point1.X >= pt.X and
      point0.Y <= pt.Y and
      point1.Y >= pt.Y)
  end

  function this:IsHovering()
    if this.ChatContainer and this.LastMousePosition and self:CalculateVisibility() then
      return PointInChatWindow(this.LastMousePosition)
    end
    return false
  end

  function this:SetFadeLock(lock)
    FadeLock = lock
  end

  function this:GetFadeLock()
    return FadeLock
  end

  function this:SetCanvasPosition(newCanvasPosition)
    if this.ScrollingFrame then
      local maxSize = Vector2.new(math.max(0, this.ScrollingFrame.CanvasSize.X.Offset - this.ScrollingFrame.AbsoluteWindowSize.X),
        math.max(0, this.ScrollingFrame.CanvasSize.Y.Offset - this.ScrollingFrame.AbsoluteWindowSize.Y))
      this.ScrollingFrame.CanvasPosition = Vector2.new(Util.Clamp(0, maxSize.X, newCanvasPosition.X),
        Util.Clamp(0, maxSize.Y, newCanvasPosition.Y))
    end
  end

  function this:ScrollToBottom()
    if this.ScrollingFrame then
      this:SetCanvasPosition(Vector2.new(this.ScrollingFrame.CanvasPosition.X, this.ScrollingFrame.CanvasSize.Y.Offset))
    end
  end

  function this:FadeIn(duration, lockFade)
    if not FadeLock then
      duration = duration or 0.75
      local backgroundTransparency = InputService.VREnabled and 1 or 0.5
      -- fade in
      if this.BackgroundTweener then
        this.BackgroundTweener:Cancel()
      end
      lastFadeInTime = tick()
      lastChatActivity = tick()
      this.ScrollingFrame.ScrollingEnabled = true
      this.ScrollingFrame.ScrollBarThickness = SCROLLBAR_THICKNESS
      this.BackgroundTweener = Util.PropertyTweener(this.ChatContainer, 'BackgroundTransparency', this.ChatContainer.BackgroundTransparency, backgroundTransparency, duration, Util.Linear)
      this.BackgroundVisible = true
      this:FadeInChats()

      this.ChatWindowPagingConn = Util.DisconnectEvent(this.ChatWindowPagingConn)
      this.ChatWindowPagingConn = InputService.InputBegan:connect(function(inputObject)
          local key = inputObject.KeyCode
          if key == Enum.KeyCode.PageUp then
            this:SetCanvasPosition(this.ScrollingFrame.CanvasPosition - Vector2.new(0, this.ScrollingFrame.AbsoluteWindowSize.Y))
          elseif key == Enum.KeyCode.PageDown then
            this:SetCanvasPosition(this.ScrollingFrame.CanvasPosition + Vector2.new(0, this.ScrollingFrame.AbsoluteWindowSize.Y))
          elseif key == Enum.KeyCode.Home then
            this:SetCanvasPosition(Vector2.new(0, 0))
          elseif key == Enum.KeyCode.End then
            this:ScrollToBottom()
          end
        end)
      if this.FadeInSignal then
        this.FadeInSignal:fire()
      end
    end
  end

  function this:FadeOut(duration, unlockFade)
    if not FadeLock then
      duration = duration or 0.75
      -- fade out
      if this.BackgroundTweener then
        this.BackgroundTweener:Cancel()
      end
      lastFadeOutTime = tick()
      lastChatActivity = tick()
      this.ScrollingFrame.ScrollingEnabled = false
      this.ScrollingFrame.ScrollBarThickness = 0
      this.BackgroundTweener = Util.PropertyTweener(this.ChatContainer, 'BackgroundTransparency', this.ChatContainer.BackgroundTransparency, 1, duration, Util.Linear)
      this.BackgroundVisible = false

      this.ChatWindowPagingConn = Util.DisconnectEvent(this.ChatWindowPagingConn)
      if this.FadeOutSignal then
        this.FadeOutSignal:fire()
      end
    end
  end

  function this:FadeInChats()
    if this.ChatsVisible == true then return end
    this.ChatsVisible = true
    for index, message in pairs(this.Chats) do
      message:FadeIn()
    end
  end

  function this:FadeOutChats()
    if InputService.VREnabled then return end
    if this.ChatsVisible == false then return end
    this.ChatsVisible = false
    if IsPlayerDropDownEnabled and playerDropDown then
      playerDropDown:Hide()
    end
    for index, message in pairs(this.Chats) do
      local messageGui = message:GetGui()
      local instant = false
      if messageGui and this.ScrollingFrame then
        -- If the chat is not in the visible frame then don't waste cpu cycles fading it out
        if (messageGui.AbsolutePosition.Y > (this.ScrollingFrame.AbsolutePosition + this.ScrollingFrame.AbsoluteWindowSize).Y or
          messageGui.AbsolutePosition.Y + messageGui.AbsoluteSize.Y < this.ScrollingFrame.AbsolutePosition.Y) then
          instant = true
        end
      end
      message:FadeOut(instant)
    end
  end

  local ResizeCount = 0
  function this:OnResize()
    ResizeCount = ResizeCount + 1
    local currentResizeCount = ResizeCount
    local isScrolledDown = this:IsScrolledDown()
    -- Unfortunately there is a race condition so we need this wait here.
    wait()
    if this.ScrollingFrame then
      if currentResizeCount ~= ResizeCount then return end
      local scrollingFrameAbsoluteSize = this.ScrollingFrame.AbsoluteWindowSize
      if scrollingFrameAbsoluteSize ~= nil and scrollingFrameAbsoluteSize.X > 0 and scrollingFrameAbsoluteSize.Y > 0 then
        local ySize = 0

        if this.ScrollingFrame then
          for _, message in pairs(this.Chats) do
            local newHeight = message:OnResize(scrollingFrameAbsoluteSize)
            if newHeight then
              local chatMessageElement = message:GetGui()
              if chatMessageElement then
                local chatMessageElementYSize = chatMessageElement.Size.Y.Offset
                chatMessageElement.Position = UDim2.new(0, 0, 0, ySize)
                ySize = ySize + chatMessageElementYSize
              end
            end
          end
        end
        if this.MessageContainer and this.ScrollingFrame then
          this.MessageContainer.Size = UDim2.new(
            this.MessageContainer.Size.X.Scale,
            this.MessageContainer.Size.X.Offset,
            0,
            ySize)
          this.MessageContainer.Position = UDim2.new(0, 0, 1, -this.MessageContainer.Size.Y.Offset)
          this.ScrollingFrame.CanvasSize = UDim2.new(this.ScrollingFrame.CanvasSize.X.Scale, this.ScrollingFrame.CanvasSize.X.Offset, this.ScrollingFrame.CanvasSize.Y.Scale, ySize)
        end
      end
      this:ScrollToBottom()
    end
  end

  function this:FilterMessage(playerChatType, sendingPlayer, chattedMessage, receivingPlayer)
    if chattedMessage and string.sub(chattedMessage, 1, 1) ~= '/' then
      return true
    end
    return false
  end

  function this:PushMessageIntoQueue(chatMessage, silently)
    table.insert(this.Chats, chatMessage)

    local isScrolledDown = this:IsScrolledDown()

    local chatMessageElement = chatMessage:GetGui()

    chatMessageElement.Parent = this.MessageContainer
    local chatMessageHeight = chatMessage:OnResize() or 10
    local ySize = this.MessageContainer.Size.Y.Offset
    local chatMessageElementYSize = UDim2.new(0, 0, 0, chatMessageHeight)

    if not silently then
      this.MessageCount = this.MessageCount + 1
    end

    chatMessageElement.Position = chatMessageElement.Position + UDim2.new(0, 0, 0, ySize)
    this.MessageContainer.Size = this.MessageContainer.Size + chatMessageElementYSize
    this.ScrollingFrame.CanvasSize = this.ScrollingFrame.CanvasSize + chatMessageElementYSize

    if this.Settings.MaxWindowChatMessages < #this.Chats then
      this:RemoveOldestMessage()
    end
    if isScrolledDown then
      this:ScrollToBottom()
    elseif not silently then
      -- Raise unread message alert!
      this.NewUnreadMessage = true
    end

    if silently then
      if this.ChatsVisible == false then
        chatMessage:FadeOut(true)
      end
    else
      this:FadeInChats()
      lastChatActivity = tick()
      this.MessageCountChanged:fire(this.MessageCount)
    end

    -- NOTE: Sort of hacky, but if we are approaching the max 16 bit size
    -- we need to rebase y back to 0 which can be done with the resize function
    if ySize > (MAX_UDIM_SIZE / 2) then
      self:OnResize()
    end
  end

  function this:AddSystemChatMessage(chattedMessage, silently)
    local chatMessage = CreateSystemChatMessage(this.Settings, chattedMessage)
    this:PushMessageIntoQueue(chatMessage, silently)
  end

  local function checkEnum(enumItems, value)
    for _, enum in pairs(enumItems) do
      if enum.Value == value then
        return enum
      end
    end
    return nil
  end

  -- We only need to copy the top level for the settings table
  local function shallowCopy(tableToCopy)
    local newTable = {}
    for key, value in pairs(tableToCopy) do
      newTable[key] = value
    end
    return newTable
  end

  function this:AddDeveloperSystemChatMessage(informationTable)
    local settings = shallowCopy(this.Settings)

    if informationTable["Text"] and type(informationTable["Text"]) == "string" then
      if typeof(informationTable.Color) == "Color3" then
        settings.DefaultMessageTextColor = informationTable.Color
      end
      if typeof(informationTable.Font) == "EnumItem" and informationTable.Font.EnumType == Enum.Font then
        settings.Font = informationTable.Font
      end
      if typeof(informationTable.FontSize) == "EnumItem" and informationTable.FontSize.EnumType == Enum.FontSize then
        settings.FontSize = informationTable.FontSize
      end
      local chatMessage = CreateSystemChatMessage(settings, informationTable["Text"])
      this:PushMessageIntoQueue(chatMessage, false)
    end
  end

  function this:AddChatMessage(playerChatType, sendingPlayer, chattedMessage, receivingPlayer, silently)
    local fixedChattedMessage = Util.FilterUnprintableCharacters(chattedMessage)
    if this:FilterMessage(playerChatType, sendingPlayer, fixedChattedMessage, receivingPlayer) then
      local chatMessage = CreatePlayerChatMessage(this.Settings, playerChatType, sendingPlayer, fixedChattedMessage, receivingPlayer)
      this:PushMessageIntoQueue(chatMessage, silently)
    end
  end

  function this:RemoveOldestMessage()
    local oldestChat = this.Chats[1]
    if oldestChat then
      return this:RemoveChatMessage(oldestChat)
    end
  end

  function this:RemoveChatMessage(chatMessage)
    if chatMessage then
      for index, message in pairs(this.Chats) do
        if chatMessage == message then
          local guiObj = chatMessage:GetGui()
          if guiObj then
            local ySize = guiObj.Size.Y.Offset
            this.ScrollingFrame.CanvasSize = this.ScrollingFrame.CanvasSize - UDim2.new(0,0,0,ySize)
            -- Clamp the canvasposition
            this:SetCanvasPosition(this.ScrollingFrame.CanvasPosition)
            guiObj.Parent = nil
          end
          message:Destroy()
          return table.remove(this.Chats, index)
        end
      end
    end
  end

  function this:IsScrolledDown()
    if this.ScrollingFrame then
      local yCanvasSize = this.ScrollingFrame.CanvasSize.Y.Offset
      local yContainerSize = this.ScrollingFrame.AbsoluteWindowSize.Y
      local yScrolledPosition = this.ScrollingFrame.CanvasPosition.Y
      -- Check if the messages are at the bottom
      return yCanvasSize < yContainerSize or
      yCanvasSize - yScrolledPosition <= yContainerSize + 5 -- a little wiggle room
    end
    return false
  end

  function this:GetMessageCount()
    return this.MessageCount
  end

  function this:CalculateVisibility()
    return this.WidgetVisible and ((chatCoreGuiEnabled and PlayersService.ClassicChat) or NON_CORESCRIPT_MODE)
  end

  function this:ToggleVisibility(visible)
    if visible ~= self.WidgetVisible then
      self.WidgetVisible = visible
      if this.ChatContainer then
        this.ChatContainer.Visible = self:CalculateVisibility()
      end
    end
    if NON_CORESCRIPT_MODE then
      this.ChatContainer.Visible = true
    end
  end

  function this:CoreGuiChanged(coreGuiType, enabled)
    if coreGuiType == Enum.CoreGuiType.Chat or coreGuiType == Enum.CoreGuiType.All then
      chatCoreGuiEnabled = enabled
      if this.ChatContainer then
        this.ChatContainer.Visible = self:CalculateVisibility()
      end
    end
  end

  local function CreateChatWindow()
    -- This really shouldn't be a button, but it is currently needed for VR.
    local container = Util.Create 'TextButton'
    {
      Name = 'ChatWindowContainer';
      Size = UDim2.new(0.3, 0, 0.25, 0);
      ZIndex = 1;
      BackgroundColor3 = Color3.new(0, 0, 0);
      BackgroundTransparency = 1;
      BorderSizePixel = 0;
      SelectionImageObject = emptySelectionImage;
      Active = false;
      Text = ""
    };

    container.BackgroundColor3 = Color3.new(31/255, 31/255, 31/255);
    local scrollingFrame = Util.Create'ScrollingFrame'
    {
      Name = 'ChatWindow';
      Size = UDim2.new(1, -4 - 10, 1, -20);
      CanvasSize = UDim2.new(1, -4 - 10, 0, 0);
      Position = UDim2.new(0, 10, 0, 10);
      ZIndex = 1;
      BackgroundColor3 = Color3.new(0, 0, 0);
      BackgroundTransparency = 1;
      BottomImage = "rbxasset://textures/ui/scroll-bottom.png";
      MidImage = "rbxasset://textures/ui/scroll-middle.png";
      TopImage = "rbxasset://textures/ui/scroll-top.png";
      ScrollBarThickness = 0;
      BorderSizePixel = 0;
      ScrollingEnabled = false;
      Parent = container;
    };
    local messageContainer = Util.Create'Frame'
    {
      Name = 'MessageContainer';
      Size = UDim2.new(1, -SCROLLBAR_THICKNESS - 1, 0, 0);
      Position = UDim2.new(0, 0, 1, 0);
      ZIndex = 1;
      BackgroundColor3 = Color3.new(0, 0, 0);
      BackgroundTransparency = 1;
      Parent = scrollingFrame
    };

    local function OnChatWindowResize(prop)
      if prop == 'AbsoluteSize' then
        messageContainer.Position = UDim2.new(0, 0, 1, -messageContainer.Size.Y.Offset)
      end
      if prop == 'CanvasPosition' then
        if this.ScrollingFrame then
          if this:IsScrolledDown() then
            this.NewUnreadMessage = false
          end
        end
      end
    end

    container.Changed:connect(function(prop)
        if prop == 'AbsoluteSize' then
          this:OnResize()
        end
      end)

    local function UpdateChatWindowLayout(newSize)
      -- A function to position the chat window in light of various factors
      -- (platform, container window size, presence of performance stats).
      if container == nil then
        return
      end

      -- Account for presence/absence of performance stats buttons.
      local localPlayer = PlayersService.LocalPlayer
      local isPerformanceStatsVisible = (GameSettings.PerformanceStatsVisible and localPlayer ~= nil)
      local yOffset = CHAT_WINDOW_Y_OFFSET
      if isPerformanceStatsVisible then
        yOffset = yOffset + StatsUtils.ButtonHeight
      end
      container.Position = UDim2.new(0, 0, 0, yOffset);

      -- Account for new screen size, if applicable.
      if (newSize == nil) then
        return
      end

      if InputService.VREnabled then
        container.Size = UDim2.new(1,0,1,0)
        -- Phone
      elseif newSize.X <= 640 then
        container.Size = UDim2.new(0.5,0,0.5,0) - container.Position
        -- Tablet
      elseif newSize.X <= 1024 then
        container.Size = UDim2.new(0.4,0,0.3,0) - container.Position
        -- Desktop
      else
        container.Size = UDim2.new(0.3,0,0.25,0) - container.Position
      end
    end

    -- When quick profiler button row visiblity changes, update position of chat window.
    GameSettings.PerformanceStatsVisibleChanged:connect(function()
        if not chatRepositioned then
          UpdateChatWindowLayout(nil)
        end
      end)

    GuiRoot.Changed:connect(function(prop)
        if (prop == "AbsoluteSize" and not chatRepositioned) then
          UpdateChatWindowLayout(GuiRoot.AbsoluteSize)
        end
      end)

    UpdateChatWindowLayout()

    messageContainer.Changed:connect(OnChatWindowResize)
    scrollingFrame.Changed:connect(OnChatWindowResize)

    this.ChatContainer = container
    this.ScrollingFrame = scrollingFrame
    this.MessageContainer = messageContainer
    this.ChatContainer.Parent = GuiRoot


    -- It is important to set this to true in NON_CORESCRIPT_MODE because normally the topbar sets
    -- the chat window to visible
    if NON_CORESCRIPT_MODE then
      this:ToggleVisibility(true)
    end

    --- BACKGROUND FADING CODE ---
    -- This is so we don't accidentally fade out when we are scrolling and mess with the scrollbar.
    local dontFadeOutOnMouseLeave = false

    if Util:IsTouchDevice() then
      local touchCount = 0
      this.InputBeganConn = InputService.InputBegan:connect(function(inputObject)
          if inputObject.UserInputType == Enum.UserInputType.Touch and inputObject.UserInputState == Enum.UserInputState.Begin then
            if PointInChatWindow(Vector2.new(inputObject.Position.X, inputObject.Position.Y)) then
              touchCount = touchCount + 1
              dontFadeOutOnMouseLeave = true
            end
          end
        end)

      this.InputEndedConn = InputService.InputEnded:connect(function(inputObject)
          if inputObject.UserInputType == Enum.UserInputType.Touch and inputObject.UserInputState == Enum.UserInputState.End then
            local endedCount = touchCount
            wait(2)
            if touchCount == endedCount then
              dontFadeOutOnMouseLeave = false
            end
          end
        end)

      spawn(function()
          local now = tick()
          while true do
            wait()
            now = tick()
            if this.BackgroundVisible then
              if not dontFadeOutOnMouseLeave then
                this:FadeOut(0.25)
              end
              -- If background is not visible/in-focus
            elseif this.ChatsVisible and now > lastChatActivity + MESSAGES_FADE_OUT_TIME then
              this:FadeOutChats()
            end
          end
        end)
    else
      this.LastMousePosition = Vector2.new()

      this.MouseEnterFrameConn = this.ChatContainer.MouseEnter:connect(function()
          lastEnterTime = tick()
          if this.BackgroundTweener and not this.BackgroundTweener:IsFinished() and not this.BackgroundVisible then
            this:FadeIn()
          end
        end)

      this.MouseMoveConn = InputService.InputChanged:connect(function(inputObject)
          if inputObject.UserInputType == Enum.UserInputType.MouseMovement then
            lastMoveTime = tick()
            this.LastMousePosition = Vector2.new(inputObject.Position.X, inputObject.Position.Y)
            if this.BackgroundTweener and this.BackgroundTweener:GetPercentComplete() < 0.5 and this.BackgroundVisible then
              if not dontFadeOutOnMouseLeave then
                this:FadeOut()
              end
            end
          end
        end)

      local clickCount = 0
      this.InputBeganConn = InputService.InputBegan:connect(function(inputObject)
          if inputObject.UserInputType == Enum.UserInputType.MouseButton1 and inputObject.UserInputState == Enum.UserInputState.Begin then
            if PointInChatWindow(Vector2.new(inputObject.Position.X, inputObject.Position.Y)) then
              clickCount = clickCount + 1
              dontFadeOutOnMouseLeave = true
            end
          end
        end)

      this.InputEndedConn = InputService.InputEnded:connect(function(inputObject)
          if inputObject.UserInputType == Enum.UserInputType.MouseButton1 and inputObject.UserInputState == Enum.UserInputState.End then
            local nowCount = clickCount
            wait(1.3)
            if nowCount == clickCount then
              dontFadeOutOnMouseLeave = false
            end
          end
        end)

      this.MouseLeaveFrameConn = this.ChatContainer.MouseLeave:connect(function()
          lastLeaveTime = tick()
          if this.BackgroundTweener and not this.BackgroundTweener:IsFinished() and this.BackgroundVisible then
            if not dontFadeOutOnMouseLeave then
              this:FadeOut()
            end
          end
        end)

      spawn(function()
          while true do
            wait()
            local now = tick()
            if this:IsHovering() then
              if now - lastMoveTime > 1.3 and not this.BackgroundVisible then
                this:FadeIn()
              end
            else -- not this:IsHovering()
              if this.BackgroundVisible then
                if not dontFadeOutOnMouseLeave then
                  this:FadeOut(0.25)
                end
                -- If background is not visible/in-focus
              elseif this.ChatsVisible and now > lastChatActivity + MESSAGES_FADE_OUT_TIME then
                this:FadeOutChats()
              end
            end
          end
        end)
    end
    --- END OF BACKGROUND FADING CODE ---
  end

  CreateChatWindow()

  return this
end


local function CreateChat()
  local this = {}

  this.Settings =
  {
    GlobalTextColor = Color3.new(112/255, 110/255, 106/255);
    WhisperTextColor = Color3.new(77/255, 139/255, 255/255);
    TeamTextColor = Color3.new(230/255, 207/255, 0);
    DefaultMessageTextColor = Color3.new(255/255, 255/255, 243/255);
    AdminTextColor = Color3.new(1, 215/255, 0);
    InternTextColor = Color3.new(175/255, 221/255, 1);
    TextStrokeTransparency = 0.75;
    TextStrokeColor = Color3.new(34/255,34/255,34/255);
    Font = Enum.Font.SourceSansBold;
    SmallScreenFontSize = Enum.FontSize.Size14;
    FontSize = Enum.FontSize.Size18;
    MaxWindowChatMessages = 50;
    MaxCharactersInMessage = 140;
  }

  this.CurrentWindowMessageCountChanged = nil
  this.VisibilityStateChanged = Util.Signal()
  this.ChatBarFocusChanged = Util.Signal()
  this.Visible = false

  function this:CoreGuiChanged(coreGuiType, enabled)
    enabled = enabled and (topbarEnabled or InputService.VREnabled)
    if coreGuiType == Enum.CoreGuiType.Chat or coreGuiType == Enum.CoreGuiType.All then
      if enabled then
        pcall(function()
            self.SpecialKeyPressedConn = Util.DisconnectEvent(self.SpecialKeyPressedConn)
            GuiService:AddSpecialKey(Enum.SpecialKey.ChatHotkey)
            self.SpecialKeyPressedConn = GuiService.SpecialKeyPressed:connect(function(key)
                if key == Enum.SpecialKey.ChatHotkey then
                  if self.Visible == false then
                    self:ToggleVisibility()
                  end
                  if self.ChatBarWidget then
                    self.ChatBarWidget:FocusChatBar()
                  end
                end
              end)
          end)
      else
        pcall(function() GuiService:RemoveSpecialKey(Enum.SpecialKey.ChatHotkey) end)
        self.SpecialKeyPressedConn = Util.DisconnectEvent(self.SpecialKeyPressedConn)
      end
      if this.MobileChatButton then
        if enabled == true then
          this.MobileChatButton.Parent = GuiRoot
          -- we need to set it to be visible in-case we missed a lost focus event while chat was turned off.
          this.MobileChatButton.Visible = true
        else
          this.MobileChatButton.Parent = nil
        end
      end
    end
    if this.ChatWindowWidget then
      this.ChatWindowWidget:CoreGuiChanged(coreGuiType, enabled)
    end
    if this.ChatBarWidget then
      this.ChatBarWidget:CoreGuiChanged(coreGuiType, enabled)
    end
  end

  -- This event has 4 callback arguments
  -- Enum.PlayerChatType.{All|Team|Whisper}, chatPlayer, message, targetPlayer
  function this:OnPlayerChatted(playerChatType, sendingPlayer, chattedMessage, receivingPlayer)
    if this.ChatWindowWidget then
      -- Don't add messages from blocked players, don't show message if is a debug command
      local isDebugCommand = false
      pcall(function()
          if not NON_CORESCRIPT_MODE and sendingPlayer == PlayersService.LocalPlayer then
            isDebugCommand = game:GetService("GuiService"):ShowStatsBasedOnInputString(chattedMessage)

            -- allows dev console to be opened on mobile
            -- NOTE: Removed ToggleDevConsole bindable event, so engine no longer handles this
            if string.lower(chattedMessage) == "/console" then
              local devConsoleModule = require(RobloxGui.Modules.DeveloperConsoleModule)
              if devConsoleModule then
                local devConsoleVisible = devConsoleModule:GetVisibility()
                devConsoleModule:SetVisibility(not devConsoleVisible)
              end
            end
          end
        end)
      if not (this:IsPlayerBlocked(sendingPlayer) or this:IsPlayerMuted(sendingPlayer) or isDebugCommand) then
        this.ChatWindowWidget:AddChatMessage(playerChatType, sendingPlayer, chattedMessage, receivingPlayer)
      end
    end
  end

  function this:OnPlayerAdded(newPlayer)
    if newPlayer then
      assert(coroutine.resume(coroutine.create(function() PlayerPermissionsModule.IsPlayerAdminAsync(newPlayer) end)))
    end
    if NON_CORESCRIPT_MODE then
      newPlayer.Chatted:connect(function(msg, recipient)
          this:OnPlayerChatted(Enum.PlayerChatType.All, newPlayer, msg, recipient)
        end)
    else
      this.PlayerChattedConn = Util.DisconnectEvent(this.PlayerChattedConn)
      this.PlayerChattedConn = PlayersService.PlayerChatted:connect(function(...)
          this:OnPlayerChatted(...)
        end)
    end
  end

  function this:IsPlayerBlocked(player)
    if blockingUtility then
      return player and blockingUtility:IsPlayerBlockedByUserId(player.UserId)
    else
      return false
    end
  end

  function this:BlockPlayerAsync(playerToBlock)
    if playerToBlock and Player ~= playerToBlock then
      local blockUserId = playerToBlock.UserId
      local playerToBlockName = playerToBlock.Name
      if blockUserId > 0 then
        if not this:IsPlayerBlocked(playerToBlock) then
          if blockingUtility then
            blockingUtility:BlockPlayerAsync(playerToBlock)
            this.ChatWindowWidget:AddSystemChatMessage(playerToBlockName .. " is now blocked.")
          end
        else
          this.ChatWindowWidget:AddSystemChatMessage(playerToBlockName .. " is already blocked.")
        end
      else
        this.ChatWindowWidget:AddSystemChatMessage("You cannot block guests.")
      end
    else
      this.ChatWindowWidget:AddSystemChatMessage("You cannot block yourself.")
    end
  end

  function this:UnblockPlayerAsync(playerToUnblock)
    if playerToUnblock then
      local unblockUserId = playerToUnblock.UserId
      local playerToUnblockName = playerToUnblock.Name

      if this:IsPlayerBlocked(playerToUnblock) then
        if blockingUtility then
          this.ChatWindowWidget:AddSystemChatMessage(playerToUnblockName .. " is no longer blocked.")
          blockingUtility:UnblockPlayerAsync(playerToUnblock)
        end
      else
        this.ChatWindowWidget:AddSystemChatMessage(playerToUnblockName .. " is not blocked.")
      end
    end
  end

  function this:IsPlayerMuted(player)
    if blockingUtility then
      return player and blockingUtility:IsPlayerMutedByUserId(player.UserId)
    else
      return false
    end
  end

  function this:MutePlayer(playerToMute)
    if playerToMute and playerToMute ~= Player then
      if playerToMute.UserId > 0 then
        if not this:IsPlayerMuted(playerToMute) then
          if blockingUtility then
            blockingUtility:MutePlayer(playerToMute)
            this.ChatWindowWidget:AddSystemChatMessage(playerToMute.Name .. " is now muted.")
          end
        else
          this.ChatWindowWidget:AddSystemChatMessage(playerToMute.Name .. " is already muted.")
        end
      else
        this.ChatWindowWidget:AddSystemChatMessage("You cannot mute guests.")
      end
    else
      this.ChatWindowWidget:AddSystemChatMessage("You cannot mute yourself.")
    end
  end

  function this:UnmutePlayer(playerToUnmute)
    if playerToUnmute then
      if this:IsPlayerMuted(playerToUnmute) then
        if blockingUtility then
          blockingUtility:UnmutePlayer(playerToUnmute)
          this.ChatWindowWidget:AddSystemChatMessage(playerToUnmute.Name .. " is no longer muted.")
        end
      else
        this.ChatWindowWidget:AddSystemChatMessage(playerToUnmute.Name .. " is not muted.")
      end
    end
  end

  function this:CreateTouchDeviceChatButton()
    return Util.Create'ImageButton'
    {
      Name = 'TouchDeviceChatButton';
      Size = UDim2.new(0, 128, 0, 32);
      Position = UDim2.new(0, 88, 0, 0);
      BackgroundTransparency = 1.0;
      Image = 'https://www.roblox.com/asset/?id=97078724';
    };
  end

  function this:PrintWelcome()
    if this.ChatWindowWidget then
      if Util.IsTouchDevice() then
        this.ChatWindowWidget:AddSystemChatMessage("Please press the '...' icon to chat", true)
      end
      this.ChatWindowWidget:AddSystemChatMessage("Please chat '/?' for a list of commands", true)
    end
  end

  local doOnceVRWelcome = false
  function this:PrintVRWelcome()
    if this.ChatWindowWidget and not doOnceVRWelcome then
      if InputService.VREnabled then
        this.ChatWindowWidget:AddSystemChatMessage("Press here to chat", true)
        doOnceVRWelcome = true
      end
    end
  end

  function this:PrintHelp()
    if this.ChatWindowWidget then
      this.ChatWindowWidget:AddSystemChatMessage("Help Menu")
      this.ChatWindowWidget:AddSystemChatMessage("Chat Commands:")
      this.ChatWindowWidget:AddSystemChatMessage("/w [PlayerName] or /whisper [PlayerName] - Whisper Chat")
      this.ChatWindowWidget:AddSystemChatMessage("/t or /team - Team Chat")
      this.ChatWindowWidget:AddSystemChatMessage("/a or /all - All Chat")

      this.ChatWindowWidget:AddSystemChatMessage("/block [PlayerName] - Block communications from Target Player")
      this.ChatWindowWidget:AddSystemChatMessage("/unblock [PlayerName] - Restore communications with Target Player")
      this.ChatWindowWidget:AddSystemChatMessage("/mute [PlayerName] - Mute in-game communications from Target Player")
      this.ChatWindowWidget:AddSystemChatMessage("/unmute [PlayerName] - Restore in-game communications with Target Player")
    end
  end

  local focusCount = 0
  function this:CreateGUI()
    if (FORCE_CHAT_GUI or
      (Player.ChatMode == Enum.ChatMode.TextAndMenu or RunService:IsStudio()) and
      game:GetService("UserInputService"):GetPlatform() ~= Enum.Platform.XBoxOne) then
      if NON_CORESCRIPT_MODE then
        local chatGui = Instance.new("ScreenGui")
        chatGui.Name = "RobloxGui"
        chatGui.Parent = Player:WaitForChild('PlayerGui')
        GuiRoot.Parent = chatGui
      end

      -- NOTE: eventually we will make multiple chat window frames
      this.ChatWindowWidget = CreateChatWindowWidget(this.Settings)
      this.ChatBarWidget = CreateChatBarWidget(this.Settings)
      this.CurrentWindowMessageCountChanged = this.ChatWindowWidget.MessageCountChanged

      this.ChatWindowWidget.FadeInSignal:connect(function()
          this.ChatBarWidget:FadeIn()
        end)
      this.ChatWindowWidget.FadeOutSignal:connect(function()
          this.ChatBarWidget:FadeOut()
        end)

      this.ChatWindowWidget:FadeOut(0)
      this.ChatBarWidget.ChatBarGainedFocusEvent:connect(function()
          focusCount = focusCount + 1
          this.ChatWindowWidget:FadeIn(0.25)
          this.ChatWindowWidget:SetFadeLock(true)
          this.ChatBarFocusChanged:fire(true)
        end)
      this.ChatBarWidget.ChatBarLostFocusEvent:connect(function()
          local focusNow = focusCount
          if Util:IsTouchDevice() then
            delay(2, function()
                if focusNow == focusCount then
                  this.ChatWindowWidget:SetFadeLock(false)
                end
              end)
          else
            this.ChatWindowWidget:SetFadeLock(false)
          end
          this.ChatBarFocusChanged:fire(false)
        end)
      this.ChatBarWidget.ChatBarFloodEvent:connect(function()
          if this.ChatWindowWidget then
            this.ChatWindowWidget:AddSystemChatMessage("Wait before sending another message.")
          end
        end)

      this.ChatBarWidget.ChatErrorEvent:connect(function(msg)
          if msg then
            this.ChatWindowWidget:AddSystemChatMessage(msg)
          end
        end)

      this.ChatBarWidget.ChatCommandEvent:connect(function(success, actionType, capture)
          if actionType == "Help" then
            this:PrintHelp()
          elseif actionType == "Block" then
            local blockPlayerName = capture and tostring(capture) or ""
            local playerToBlock = Util.GetPlayerByName(blockPlayerName)
            if playerToBlock then
              spawn(function() this:BlockPlayerAsync(playerToBlock) end)
            else
              this.ChatWindowWidget:AddSystemChatMessage("Cannot block " .. blockPlayerName .. " because they are not in the game.")
            end
          elseif actionType == "Unblock" then
            local unblockPlayerName = capture and tostring(capture) or ""
            local playerToBlock = Util.GetPlayerByName(unblockPlayerName)
            if playerToBlock then
              spawn(function() this:UnblockPlayerAsync(playerToBlock) end)
            else
              this.ChatWindowWidget:AddSystemChatMessage("Cannot unblock " .. unblockPlayerName .. " because they are not in the game.")
            end
          elseif actionType == "Mute" then
            local mutePlayerName = capture and tostring(capture) or ""
            local playerToMute = Util.GetPlayerByName(mutePlayerName)
            if playerToMute then
              this:MutePlayer(playerToMute)
            else
              this.ChatWindowWidget:AddSystemChatMessage("Cannot mute " .. mutePlayerName .. " because they are not in the game.")
            end
          elseif actionType == "Unmute" then
            local unmutePlayerName = capture and tostring(capture) or ""
            local playerToUnmute = Util.GetPlayerByName(unmutePlayerName)
            if playerToUnmute then
              this:UnmutePlayer(playerToUnmute)
            else
              this.ChatWindowWidget:AddSystemChatMessage("Cannot unmute " .. unmutePlayerName .. " because they are not in the game.")
            end
          elseif actionType == "Whisper" then
            if success == false then
              local playerName = capture and tostring(capture) or "Unknown"
              this.ChatWindowWidget:AddSystemChatMessage("Unable to Send a Whisper to Player: " .. playerName)
            end
          elseif actionType == "Unknown" then
            if success == false then
              local commandText = capture and tostring(capture) or "Unknown"
              this.ChatWindowWidget:AddSystemChatMessage("Invalid Slash Command: " .. commandText)
            end
          end
        end)

      if not NON_CORESCRIPT_MODE then
        local function onVREnabled()
          if InputService.VREnabled then
            self.Settings.TextStrokeTransparency = 1
            self:PrintVRWelcome()
            local Panel3D = require(RobloxGui.Modules.VR.Panel3D)

            local panel = Panel3D.Get(thisModuleName)
            panel:LinkTo("Keyboard")
            panel:SetType(Panel3D.Type.Fixed)
            panel:ResizePixels(300, 125)
            GuiRoot.Parent = panel:GetGUI()

            if this.ChatWindowWidget and this.ChatWindowWidget.ChatContainer then
              this.ChatWindowWidget.ChatContainer.MouseButton1Click:connect(function()
                  if this.ChatBarWidget then
                    if this.ChatBarWidget:WasFocused() then
                      this.ChatBarWidget:RemoveFocus()
                    else
                      self:FocusChatBar()
                    end
                  end
                end)
            end

            function panel:CalculateTransparency()
              return 0
            end

            VRHub.ModuleOpened.Event:connect(function(moduleName)
                local module = VRHub:GetModule(moduleName)
                if moduleName ~= thisModuleName and module.VRIsExclusive then
                  this:SetVisible(false)
                end
              end)
          else
            self.Settings.TextStrokeTransparency = 0.75
            GuiRoot.Parent = RobloxGui
          end
        end
        onVREnabled()
        InputService.Changed:connect(function(prop)
            if prop == 'VREnabled' then
              onVREnabled()
            end
          end)
      end
    end
  end

  local toggleCount = 0
  local function SetVisbility(newVisibility)
    this.Visible = newVisibility
    if this.ChatWindowWidget then
      this.ChatWindowWidget:ToggleVisibility(this.Visible)
      if this.Visible then
        toggleCount = toggleCount + 1
        local thisToggle = toggleCount
        local thisFocusCount = focusCount
        this.ChatWindowWidget:FadeIn()
        this.ChatWindowWidget:SetFadeLock(true)
        delay(5, function()
            if thisToggle == toggleCount and thisFocusCount == focusCount then
              this.ChatWindowWidget:SetFadeLock(false)
            end
          end)
      end
    end
    if this.ChatBarWidget then
      this.ChatBarWidget:ToggleVisibility(this.Visible)
      if this.Visible then
        this.ChatBarWidget:FadeIn()
      end
      if InputService.VREnabled and not this.Visible then
        this.ChatBarWidget:RemoveFocus()
      end
    end
    if IsPlayerDropDownEnabled and playerDropDown then
      if not this.Visible then
        playerDropDown:Hide()
      end
    end
    if InputService.VREnabled then
      local Panel3D = require(RobloxGui.Modules.VR.Panel3D)

      local panel = Panel3D.Get(thisModuleName)
      if this.Visible then
        local topbarPanel = Panel3D.Get("Topbar3D")
        panel.localCF = topbarPanel.localCF * CFrame.Angles(math.rad(-5), 0, 0) * CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(-15), 0, 0)
        panel:SetVisible(true)
        panel:ForceShowUntilLookedAt()

        VRHub:FireModuleOpened(thisModuleName)
      else
        panel:SetVisible(this.Visible)

        VRHub:FireModuleClosed(thisModuleName)
      end
    end
    this.VisibilityStateChanged:fire(this.Visible)
  end

  function this:ToggleVisibility()
    SetVisbility(not self.Visible)
  end

  function this:SetVisible(visible)
    SetVisbility(visible)
  end

  function this:FocusChatBar()
    if self.ChatBarWidget and this.Visible then
      self.ChatBarWidget:FocusChatBar()
    end
  end

  function this:IsFocused(useWasFocused)
    if not self.ChatBarWidget then return false end
    return self.ChatBarWidget:IsFocused() or (useWasFocused and self.ChatBarWidget:WasFocused())
  end

  function this:GetCurrentWindowMessageCount()
    if this.ChatWindowWidget then
      return this.ChatWindowWidget:GetMessageCount()
    end
    return 0
  end

  function this:TopbarEnabledChanged(enabled)
    topbarEnabled = enabled
    -- Update coregui to reflect new topbar status
    self:CoreGuiChanged(Enum.CoreGuiType.Chat, StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat))
  end

  function this:Initialize()
    --[[ Developer Customization API ]]--
    if not NON_CORESCRIPT_MODE then
      StarterGui:RegisterSetCore("ChatMakeSystemMessage", 	function(informationTable)
          if this.ChatWindowWidget then
            this.ChatWindowWidget:AddDeveloperSystemChatMessage(informationTable)
          end
        end)
      local function isUDim2Value(value)
        return typeof(value) == "UDim2" and value or nil
      end

      local function isBubbleChatOn()
        return not PlayersService.ClassicChat and PlayersService.BubbleChat
      end

      StarterGui:RegisterSetCore("ChatWindowPosition", 	function(value)
          if this.ChatWindowWidget and this.ChatBarWidget then
            value = isUDim2Value(value)
            if value ~= nil and not isBubbleChatOn() then
              chatRepositioned = true -- Prevent chat from moving back to the original position on screen resolution change
              this.ChatWindowWidget.ChatContainer.Position = value
              this.ChatBarWidget.ChatBarContainer.Position = value + UDim2.new(0, 0, this.ChatWindowWidget.ChatContainer.Size.Y.Scale, this.ChatWindowWidget.ChatContainer.Size.Y.Offset + 2)
            end
          end
        end)

      StarterGui:RegisterSetCore("ChatWindowSize", 	function(value)
          if this.ChatWindowWidget and this.ChatBarWidget then
            value = isUDim2Value(value)
            if value ~= nil and not isBubbleChatOn() then
              chatRepositioned = true
              this.ChatWindowWidget.ChatContainer.Size = value
              this.ChatBarWidget.ChatBarContainer.Size = UDim2.new(this.ChatWindowWidget.ChatContainer.Size.X.Scale, this.ChatWindowWidget.ChatContainer.Size.X.Offset, this.ChatBarWidget.ChatBarContainer.Size.Y.Scale, this.ChatBarWidget.ChatBarContainer.Size.Y.Offset)
              this.ChatBarWidget.ChatBarContainer.Position = this.ChatWindowWidget.ChatContainer.Position + UDim2.new(0, 0, this.ChatWindowWidget.ChatContainer.Size.Y.Scale, this.ChatWindowWidget.ChatContainer.Size.Y.Offset + 2)
            end
          end
        end)

      StarterGui:RegisterGetCore("ChatWindowPosition", 	function()
          if this.ChatWindowWidget then
            return this.ChatWindowWidget.ChatContainer.Position
          else
            return nil
          end
        end)

      StarterGui:RegisterGetCore("ChatWindowSize", 	function()
          if this.ChatWindowWidget then
            return this.ChatWindowWidget.ChatContainer.Size
          else
            return nil
          end
        end)

      StarterGui:RegisterSetCore("ChatBarDisabled", 	function(value)
          if this.ChatBarWidget then
            if type(value) == "boolean" then
              chatBarDisabled = value
              if value == true then
                this.ChatBarWidget:ToggleVisibility(false)
              end
            end
          end
        end)

      StarterGui:RegisterGetCore("ChatBarDisabled", function() return chatBarDisabled end)
    end

    this:OnPlayerAdded(Player)
    -- Upsettingly, it seems everytime a player is added, you have to redo the connection
    -- NOTE: PlayerAdded only fires on the server, hence ChildAdded is used here
    PlayersService.ChildAdded:connect(function(child)
        if child:IsA('Player') then
          this:OnPlayerAdded(child)
        end
      end)
    this:CreateGUI()


    this:CoreGuiChanged(Enum.CoreGuiType.Chat, StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat))
    this.CoreGuiChangedConn = Util.DisconnectEvent(this.CoreGuiChangedConn)
    pcall(function()
        this.CoreGuiChangedConn = StarterGui.CoreGuiChangedSignal:connect(
          function(coreGuiType,enabled)
            this:CoreGuiChanged(coreGuiType, enabled)
          end)
      end)

    if not NON_CORESCRIPT_MODE then
      this:PrintWelcome()
    end

    --SetVisbility(true)
  end

  return this
end

local moduleApiTable = {}
-- Main Entry Point
do
  moduleApiTable.ModuleName = thisModuleName
  moduleApiTable.KeepVRTopbarOpen = true
  moduleApiTable.VRIsExclusive = true
  moduleApiTable.VRClosesNonExclusive = false
  VRHub:RegisterModule(moduleApiTable)

  VRHub.ModuleOpened.Event:connect(function(moduleName)
      if moduleName ~= thisModuleName then
        local module = VRHub:GetModule(moduleName)
        if module.VRIsExclusive then
          moduleApiTable:SetVisible(false)
        end
      end
    end)

  local ChatInstance = CreateChat()
  ChatInstance:Initialize()

  function moduleApiTable:ToggleVisibility()
    ChatInstance:ToggleVisibility()
  end

  function moduleApiTable:SetVisible(visible)
    ChatInstance:SetVisible(visible)
  end

  function moduleApiTable:FocusChatBar()
    ChatInstance:FocusChatBar()
  end

  function moduleApiTable:GetVisibility()
    return ChatInstance.Visible
  end

  function moduleApiTable:GetMessageCount()
    return ChatInstance:GetCurrentWindowMessageCount()
  end

  function moduleApiTable:TopbarEnabledChanged(...)
    return ChatInstance:TopbarEnabledChanged(...)
  end

  function moduleApiTable:IsFocused(useWasFocused)
    return ChatInstance:IsFocused(useWasFocused)
  end

	function moduleApiTable:ClassicChatEnabled()
		return PlayersService.ClassicChat
	end

	function moduleApiTable:IsBubbleChatOnly()
		return PlayersService.BubbleChat and not PlayersService.ClassicChat
	end

	function moduleApiTable:IsDisabled()
		return false
	end

  moduleApiTable.ChatBarFocusChanged = ChatInstance.ChatBarFocusChanged
  moduleApiTable.VisibilityStateChanged = ChatInstance.VisibilityStateChanged
  moduleApiTable.MessagesChanged = ChatInstance.CurrentWindowMessageCountChanged

end

return moduleApiTable
