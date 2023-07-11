--[[
	This component displays an on-screen prompt when AssetService:openPublishResultModal is called,
	so that a player sees the result of their publish attempt
]]
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local UIBlox = require(CorePackages.UIBlox)
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local Images = UIBlox.App.ImageSet.Images
local XBOX_A_ICON = Images["icons/controls/keys/xboxA"]

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local InputType = require(CorePackages.Workspace.Packages.InputType)
local getInputGroup = require(CorePackages.Workspace.Packages.InputType).getInputGroup

local Components = script.Parent
local PublishAssetPromptFolder = Components.Parent
local CloseResultModal = require(PublishAssetPromptFolder.Thunks.CloseResultModal)

local PublishAssetPrompt = script.Parent.Parent
local GetFFlagValidateDescription = require(PublishAssetPrompt.GetFFlagValidateDescription)

local ResultModal = Roact.PureComponent:extend("ResultModal")

ResultModal.validateProps = t.strictInterface({
	screenSize = t.Vector2,
	--state
	resultModalType = t.enum(Enum.PromptPublishAssetResult),
	--dispatch
	closeResultModal = t.callback,
})

local function isGamepadInput(inputType)
	local inputGroup = getInputGroup(inputType)
	return inputGroup == InputType.InputTypeConstants.Gamepad
end

function ResultModal:init()
	self:setState({
		isGamepad = isGamepadInput(UserInputService:GetLastInputType()),
	})
end

function ResultModal:getLocalizedStringForResultPrompt(resultType)
	if resultType == Enum.PromptPublishAssetResult.Success then
		return RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.PublishSuccessMessage")
	elseif resultType == Enum.PromptPublishAssetResult.UploadFailed then
		return RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.PublishFailed")
	elseif resultType == Enum.PromptPublishAssetResult.NoUserInput then
		return RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.NoUserInput")
	end

	--"Result string not defined for resultType: "
	return RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.UndefinedError", {
		RESULT_TYPE = tostring(resultType),
	})
end

function ResultModal:getLocalizedTitleForResultPrompt(resultType)
	if resultType == Enum.PromptPublishAssetResult.Success then
		return RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.PublishSuccessTitle")
	else
		return RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.PublishFailedTitle")
	end
end

function ResultModal:render()
	return Roact.createElement(InteractiveAlert, {
		title = self:getLocalizedTitleForResultPrompt(self.props.resultModalType),
		bodyText = self:getLocalizedStringForResultPrompt(self.props.resultModalType),
		screenSize = self.props.screenSize,
		buttonStackInfo = {
			buttons = {
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = self.props.closeResultModal,
						text = if GetFFlagValidateDescription()
							then RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.ResultModalOk")
							else RobloxTranslator:FormatByKey("InGame.CommonUI.Button.Ok"),
						inputIcon = self.state.isGamepad and XBOX_A_ICON or nil,
					},
				},
			},
		},
	})
end

local function mapStateToProps(state)
	return {
		resultModalType = state.promptRequest.resultModalType,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closeResultModal = function()
			return dispatch(CloseResultModal)
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ResultModal)
