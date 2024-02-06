--[[
	This component displays an on-screen prompt when AssetService:openPublishResultModal is called,
	so that a player sees the result of their publish attempt
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local UIBlox = require(CorePackages.UIBlox)
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local Overlay = UIBlox.App.Dialog.Overlay
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local Images = UIBlox.App.ImageSet.Images
local XBOX_A_ICON = Images["icons/controls/keys/xboxA"]
local RoactUtils = require(CorePackages.Workspace.Packages.RoactUtils)
local useIsGamepad = RoactUtils.Hooks.useIsGamepad
local useDispatch = RoactUtils.Hooks.RoactRodux.useDispatch

local React = require(CorePackages.Packages.React)

local Components = script.Parent
local PublishAssetPromptFolder = Components.Parent
local CloseOpenPrompt = require(PublishAssetPromptFolder.Actions.CloseOpenPrompt)

type Props = {
	screenSize: Vector2,
	closePrompt: (any) -> any,
}

local ValidationErrorModal = function(props: Props)
	local isGamepad = useIsGamepad()
	-- TODO: AVBURST-12954 state.promptRequest.promptInfo.errorMessage will be used instead of placeholder message
	local dispatch = useDispatch()
	local closePrompt = function()
		dispatch(CloseOpenPrompt())
	end
	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		ZIndex = 3,
	}, {
		Overlay = React.createElement(Overlay, {
			showGradient = false,
			ZIndex = 3,
		}),
		InteractiveAlert = React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			ZIndex = 4,
		}, {
			InteractiveAlert = React.createElement(InteractiveAlert, {
				-- TODO: AVBURST-12954 placeholder before localization
				title = "Something Went Wrong",
				-- TODO: AVBURST-12954 placeholder before localization
				bodyText = "Your creation could not be created due to an error. A report has been sent to the developer of this experience.",
				screenSize = props.screenSize,
				buttonStackInfo = {
					buttons = {
						{
							buttonType = ButtonType.PrimarySystem,
							props = {
								onActivated = closePrompt,
								text = RobloxTranslator:FormatByKey("InGame.CommonUI.Button.Ok"),
								inputIcon = isGamepad and XBOX_A_ICON or nil,
							},
						},
					},
				},
			}),
		}),
	})
end

return ValidationErrorModal
