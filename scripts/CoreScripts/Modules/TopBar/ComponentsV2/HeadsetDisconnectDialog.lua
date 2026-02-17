
-- Services
local ContextActionService = game:GetService("ContextActionService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local VRService = game:GetService("VRService")

-- Modules
local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local Display = require(CorePackages.Workspace.Packages.Display)
local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

-- Components
local Dialog = Foundation.Dialog
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local CONFIRM_ACTION_NAME = "TopBarDialogConfirm"
local DISABLE_MENU_SHORTCUT_ACTION_NAME = "TopBarGamepadDisableMenuShortcut"
local HEADSET_DISCONNECTED_KEY = "HeadsetDisconnectedDialog"

type HeadsetDisconnectDialogProps = {}

function HeadsetDisconnectDialog(props: HeadsetDisconnectDialogProps) 
    local showDisconnectDialog, setShowDisconnectDialog = React.useState(false)

	local localizedStrings = useLocalization({
		titleText = "InGame.ConnectionError.Heading.VRDisconnected",
		bodyText = "InGame.ConnectionError.Message.RestartApp",
		buttonText = "InGame.ConnectionError.Action.Restart",
	})

	local localHumanoidStore = SignalsReact.useSignalState(CoreGuiCommon.Stores.GetLocalHumanoidStore)
	local viewportSize = SignalsReact.useSignalState(function(scope) 
		return Display.GetDisplayStore(scope).getViewportSize(scope)
	end)

    React.useEffect(function() 
        local VRAvailableConn = VRService:GetPropertyChangedSignal("VRDeviceAvailable"):Connect(function(isAvailable) 
            if showDisconnectDialog ~= isAvailable then
                setShowDisconnectDialog(not isAvailable)
            end
        end)
        
        return function() 
            VRAvailableConn:Disconnect()
        end
    end, {})

    local restartApp = React.useCallback(function() 
		local notificationTypes = GuiService:GetNotificationTypeList()

        if game:GetEngineFeature("EnableLuaControlsRestartApp") then
            GuiService:BroadcastNotification("", notificationTypes.RESTART_APP)
        else
            GuiService:BroadcastNotification("", notificationTypes.NATIVE_EXIT)
        end
    end, {})

    React.useEffect(function() 
        if showDisconnectDialog then 
			GuiService:SetMenuIsOpen(true, HEADSET_DISCONNECTED_KEY)
            -- Disable Gamepad Quick Menu and System Menu when headset disconnected
            ContextActionService:BindCoreAction(
                DISABLE_MENU_SHORTCUT_ACTION_NAME,
                function()
                    return Enum.ContextActionResult.Sink
                end,
                false,
                Enum.KeyCode.ButtonStart,
                Enum.KeyCode.Escape
            )
            -- Bind Enter / Gamepad ButtonA to confirm restart
            ContextActionService:BindCoreAction(
                CONFIRM_ACTION_NAME,
                function(actionName, userInputState, input)
                    if userInputState ~= Enum.UserInputState.Begin then
                        return Enum.ContextActionResult.Pass
                    end

                    restartApp()
                    return Enum.ContextActionResult.Sink
                end,
                false,
                Enum.KeyCode.Return,
                Enum.KeyCode.ButtonA
            )
        else
			GuiService:SetMenuIsOpen(false, HEADSET_DISCONNECTED_KEY)
            ContextActionService:UnbindCoreAction(DISABLE_MENU_SHORTCUT_ACTION_NAME)
            ContextActionService:UnbindCoreAction(CONFIRM_ACTION_NAME)
        end

        return function()
			GuiService:SetMenuIsOpen(false, HEADSET_DISCONNECTED_KEY)
            ContextActionService:UnbindCoreAction(DISABLE_MENU_SHORTCUT_ACTION_NAME)
            ContextActionService:UnbindCoreAction(CONFIRM_ACTION_NAME)
        end
    end, { showDisconnectDialog })

    
    return if showDisconnectDialog then 
        React.createElement(Dialog.Root, {
            size = Foundation.Enums.DialogSize.Small,
            hasBackdrop = true,
            disablePortal = false,
        }, {
            DialogTitle = React.createElement(Dialog.Title, {
                text = localizedStrings.titleText,
            }),
            DialogContent = React.createElement(Dialog.Content, nil, {
                DialogText = React.createElement(Dialog.Text, {
                    Text = localizedStrings.bodyText,
                }),
            }),
            DialogActions = React.createElement(Dialog.Actions, {
                actions = {
                    {
                        text = localizedStrings.buttonText,
                        variant = Foundation.Enums.ButtonVariant.Emphasis,
                        onActivated = restartApp,
                    } :: any,
                },
            }),
	    }) 
    else nil 
end

return HeadsetDisconnectDialog
