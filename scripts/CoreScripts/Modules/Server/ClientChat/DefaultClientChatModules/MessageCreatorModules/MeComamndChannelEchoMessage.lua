--	// FileName: MeCommandChannelEchoMessage.lua
--	// Written by: TheGamer101
--	// Description: Create a message label for a me command message echoed into another channel.

local MESSAGE_TYPE = "MeCommandChannelEchoMessage"

local clientChatModules = script.Parent.Parent
local ChatSettings = require(clientChatModules:WaitForChild("ChatSettings"))
local util = require(script.Parent:WaitForChild("Util"))

function CreateMeCommandChannelEchoMessageLabel(messageData)
  local message = messageData.Message
  local echoChannel = messageData.OriginalChannel
	local extraData = messageData.ExtraData or {}
	local useFont = extraData.Font or Enum.Font.SourceSansBold
	local useFontSize = extraData.FontSize or ChatSettings.ChatWindowTextSize
  local useChatColor = Color3.new(1, 1, 1)

  local tempMessage = messageData.FromSpeaker .. " " .. string.sub(message, 5)
	if not messageData.IsFiltered then
		local numNeededUnderscore = util:GetNumberOfUnderscores(tempMessage, useFont, useFontSize)
		tempMessage = string.rep("_", numNeededUnderscore)
	end

  local formatChannelName = string.format("{%s}", echoChannel)
  local numNeededSpaces2 = util:GetNumberOfSpaces(formatChannelName, useFont, useFontSize) + 1
  local modifiedMessage = string.rep(" ", numNeededSpaces2) .. message

  local BaseFrame, BaseMessage = util:CreateBaseMessage(modifiedMessage, useFont, useFontSize, useChatColor)
  local ChannelButton = util:AddChannelButtonToBaseMessage(BaseMessage, formatChannelName, BaseMessage.TextColor3)

	local function UpdateTextFunction(newMessageObject)
		BaseMessage.Text = string.rep(" ", numNeededSpaces2) .. newMessageObject.FromSpeaker .. " " .. string.sub(newMessageObject.Message, 5)
	end

  local function GetHeightFunction()
		return util:GetMessageHeight(BaseMessage, BaseFrame)
	end

  local AnimParams = {}
  AnimParams.Text_TargetTransparency = 0
  AnimParams.Text_CurrentTransparency = 0
  AnimParams.Text_NormalizedExptValue = 0
  AnimParams.TextStroke_TargetTransparency = 0.75
  AnimParams.TextStroke_CurrentTransparency = 0.75
  AnimParams.TextStroke_NormalizedExptValue = 1

  local function FadeInFunction(duration, CurveUtil)
    AnimParams.Text_TargetTransparency = 0
    AnimParams.TextStroke_TargetTransparency = 0.75
    AnimParams.Text_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
    AnimParams.TextStroke_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
  end

  local function FadeOutFunction(duration, CurveUtil)
    AnimParams.Text_TargetTransparency = 1
    AnimParams.TextStroke_TargetTransparency = 1
    AnimParams.Text_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
    AnimParams.TextStroke_NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
  end

  local function AnimGuiObjects()
    BaseMessage.TextTransparency = AnimParams.Text_CurrentTransparency
    BaseMessage.TextStrokeTransparency = AnimParams.TextStroke_CurrentTransparency
  end

  local function UpdateAnimFunction(dtScale, CurveUtil)
    AnimParams.Text_CurrentTransparency = CurveUtil:Expt(
				AnimParams.Text_CurrentTransparency,
				AnimParams.Text_TargetTransparency,
				AnimParams.Text_NormalizedExptValue,
				dtScale
		)
		AnimParams.TextStroke_CurrentTransparency = CurveUtil:Expt(
				AnimParams.TextStroke_CurrentTransparency,
				AnimParams.TextStroke_TargetTransparency,
				AnimParams.TextStroke_NormalizedExptValue,
				dtScale
		)

    AnimGuiObjects()
  end

  return {
    [util.KEY_BASE_FRAME] = BaseFrame,
    [util.KEY_UPDATE_TEXT_FUNC] = UpdateTextFunction,
    [util.KEY_GET_HEIGHT] = GetHeightFunction,
    [util.KEY_FADE_IN] = FadeInFunction,
    [util.KEY_FADE_OUT] = FadeOutFunction,
    [util.KEY_UPDATE_ANIMATION] = UpdateAnimFunction
  }
end

return {
  [util.KEY_MESSAGE_TYPE] = MESSAGE_TYPE,
  [util.KEY_CREATOR_FUNCTION] = CreateMeCommandChannelEchoMessageLabel
}
