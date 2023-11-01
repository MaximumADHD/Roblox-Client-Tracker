--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)
local Cryo = require(CorePackages.Packages.Cryo)
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local ContactList = RobloxGui.Modules.ContactList
local OpenOrUpdateDialog = require(ContactList.Actions.OpenOrUpdateDialog)
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox

local useSelector = dependencies.Hooks.useSelector
local useDispatch = dependencies.Hooks.useDispatch

local ButtonType = UIBlox.App.Button.Enum.ButtonType
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local useStyle = UIBlox.Core.Style.useStyle

local ErrorType = require(ContactList.Enums.ErrorType)

local CloseDialog = require(ContactList.Actions.CloseDialog)

local CALL_DIALOG_DISPLAY_ORDER = 8

export type Props = {
	callProtocol: CallProtocol.CallProtocolModule | nil,
}

local defaultProps = {
	callProtocol = CallProtocol.CallProtocol.default,
}

local function CallDialogContainer(passedProps: Props)
	local props = Cryo.Dictionary.join(defaultProps, passedProps)

	local style = useStyle()
	local theme = style.Theme

	local dispatch = useDispatch()

	local containerSize, setContainerSize = React.useState(Vector2.new(0, 0))

	local title = useSelector(function(state)
		return state.Dialog.title
	end, function(newTitle, prevTitle)
		return newTitle == prevTitle
	end)

	local bodyText = useSelector(function(state)
		return state.Dialog.bodyText
	end, function(newBodyText, prevBodyText)
		return newBodyText == prevBodyText
	end)

	local dismissCallback = useSelector(function(state)
		return state.Dialog.dismissCallback
	end, function(newDismissCallback, prevDismissCallback)
		return newDismissCallback == prevDismissCallback
	end)

	local isOpen = useSelector(function(state)
		return state.Dialog.isOpen
	end, function(newIsOpen, prevIsOpen)
		return newIsOpen == prevIsOpen
	end)

	React.useEffect(function()
		local callMessageConn = props.callProtocol:listenToHandleCallMessage(function(params)
			if params.messageType == CallProtocol.Enums.MessageType.CallError.rawValue() then
				if params.errorType == ErrorType.CallerIsInAnotherCall.rawValue() then
					dispatch(
						OpenOrUpdateDialog(
							RobloxTranslator:FormatByKey("Feature.Call.Error.Title.CouldntMakeCall"),
							RobloxTranslator:FormatByKey("Feature.Call.Error.Description.AlreadyInCall")
						)
					)
				elseif params.errorType == ErrorType.CalleeIsInAnotherCall.rawValue() then
					local calleeDisplayName = params.callInfo.calleeDisplayName
					dispatch(
						OpenOrUpdateDialog(
							RobloxTranslator:FormatByKey("Feature.Call.Error.Title.FriendBusy"),
							RobloxTranslator:FormatByKey(
								"Feature.Call.Error.Description.FriendBusy",
								{ calleeCombinedName = calleeDisplayName }
							)
						)
					)
				else
					dispatch(
						OpenOrUpdateDialog(
							RobloxTranslator:FormatByKey("Feature.Call.Error.Label.OhNo"),
							RobloxTranslator:FormatByKey("Feature.Call.Error.Description.Generic")
						)
					)
				end
			end
		end)

		return function()
			callMessageConn:Disconnect()
		end
	end, { props.callProtocol })

	return React.createElement(Roact.Portal, {
		target = CoreGui :: Instance,
	}, {
		CallDialogScreen = React.createElement("ScreenGui", {
			Enabled = isOpen,
			IgnoreGuiInset = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			AutoLocalize = false,
			DisplayOrder = CALL_DIALOG_DISPLAY_ORDER,

			[React.Change.AbsoluteSize] = function(rbx)
				setContainerSize(rbx.AbsoluteSize)
			end,
		}, {
			Overlay = React.createElement("TextButton", {
				AutoButtonColor = false,
				BackgroundColor3 = theme.Overlay.Color,
				BackgroundTransparency = theme.Overlay.Transparency,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				Text = "",
			}),
			CallDialog = React.createElement(InteractiveAlert, {
				screenSize = containerSize,
				title = title,
				bodyText = bodyText,
				buttonStackInfo = {
					buttons = {
						{
							buttonType = ButtonType.PrimarySystem,
							props = {
								text = RobloxTranslator:FormatByKey("InGame.CommonUI.Button.Ok"),
								onActivated = function()
									if dismissCallback then
										dismissCallback()
									end
									dispatch(CloseDialog())
								end,
							},
						},
					},
				},
			}),
		}),
	})
end

return CallDialogContainer
