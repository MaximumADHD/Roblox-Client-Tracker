--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)
local Cryo = require(CorePackages.Packages.Cryo)
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol)
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local ContactList = RobloxGui.Modules.ContactList
local OpenOrUpdateDialog = require(ContactList.Actions.OpenOrUpdateDialog)
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox

local dependencyArray = dependencies.Hooks.dependencyArray
local useSelector = dependencies.Hooks.useSelector
local useDispatch = dependencies.Hooks.useDispatch

local ButtonType = UIBlox.App.Button.Enum.ButtonType
local IconSize = UIBlox.App.Constant.IconSize
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local LoadingSpinner = UIBlox.App.Loading.LoadingSpinner
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

	local callerId = useSelector(function(state)
		return state.Dialog.callerId
	end)

	local calleeId = useSelector(function(state)
		return state.Dialog.calleeId
	end)

	local callerCombinedName = ""
	local calleeCombinedName = ""
	local hasCallParticipantInfo = callerId ~= 0 and calleeId ~= 0
	local namesFetch = UserProfiles.Hooks.useUserProfilesFetch({
		userIds = if hasCallParticipantInfo then { tostring(callerId), tostring(calleeId) } else {},
		query = UserProfiles.Queries.userProfilesCombinedNameByUserIds,
	})

	-- The name should be cached since it must have been loaded for the call to
	-- be placed.
	if hasCallParticipantInfo and namesFetch.data then
		callerCombinedName = UserProfiles.Selectors.getCombinedNameFromId(namesFetch.data, tostring(callerId))
		calleeCombinedName = UserProfiles.Selectors.getCombinedNameFromId(namesFetch.data, tostring(calleeId))
	end

	local formattedBodyText = React.useMemo(function()
		return bodyText
			:gsub("{callerCombinedName}", callerCombinedName)
			:gsub("{calleeCombinedName}", calleeCombinedName)
	end, dependencyArray(bodyText, callerCombinedName, calleeCombinedName))

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
				-- TODO(IRIS-864): Localization.
				local callerId = params.callInfo.callerId
				local calleeId = params.callInfo.calleeId

				if params.errorType == ErrorType.CallerIsInAnotherCall.rawValue() then
					dispatch(OpenOrUpdateDialog("Couldn't make call", "You're already on a call.", callerId, calleeId))
				elseif params.errorType == ErrorType.CalleeIsInAnotherCall.rawValue() then
					dispatch(
						OpenOrUpdateDialog(
							"Friend is busy",
							"{calleeCombinedName} is currently busy and can't receive your call right now. Please try again later.",
							callerId,
							calleeId
						)
					)
				else
					dispatch(
						OpenOrUpdateDialog(
							"Oh no!",
							"Something went wrong. Please try again later.",
							callerId,
							calleeId
						)
					)
				end
			end
		end)

		return function()
			callMessageConn:Disconnect()
		end
	end, { props.callProtocol })

	local renderLoading = React.useCallback(function()
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 48),
			BackgroundTransparency = 1,
		}, {
			Spinner = Roact.createElement(LoadingSpinner, {
				anchorPoint = Vector2.new(0.5, 0.5),
				position = UDim2.fromScale(0.5, 0.5),
				size = UDim2.fromOffset(IconSize.Large, IconSize.Large),
			}),
		})
	end, {})

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
				bodyText = if not hasCallParticipantInfo
						or (callerCombinedName ~= "" and calleeCombinedName ~= "")
					then formattedBodyText
					else nil,
				middleContent = if hasCallParticipantInfo
						and (callerCombinedName == "" or calleeCombinedName == "")
					then renderLoading
					else nil,
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
