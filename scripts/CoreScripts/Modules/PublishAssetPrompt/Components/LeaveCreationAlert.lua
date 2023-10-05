--[[
    Prompt that appears when trying to exit the Publish Prompts to confirm if the user would like to leave
    If user clicks Yes, will close the alert and prompt. Clicking No will only close the alert.
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local UIBlox = require(CorePackages.UIBlox)
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local React = require(CorePackages.Packages.React)

type Props = {
	screenSize: Vector2,
	closePrompt: () -> (),
	cancelClosePrompt: () -> (),
}

local function LeaveCreationAlert(props: Props)
	return React.createElement(InteractiveAlert, {
		-- TODO: AVBURST-12954 placeholder title until localized
		title = "Leave Creation?",
		bodyText = RobloxTranslator:FormatByKey("CoreScripts.PublishCommon.UnsavedWarning"),
		buttonStackInfo = {
			buttons = {
				{
					props = {
						onActivated = props.closePrompt,
						text = RobloxTranslator:FormatByKey("CoreScripts.PublishCommon.Leave"),
					},
					isDefaultChild = false,
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = props.cancelClosePrompt,
						text = RobloxTranslator:FormatByKey("CoreScripts.PublishCommon.Stay"),
					},
					isDefaultChild = true,
				},
			},
		},
		position = UDim2.fromScale(0.5, 0.5),
		screenSize = props.screenSize,
	})
end

return LeaveCreationAlert
