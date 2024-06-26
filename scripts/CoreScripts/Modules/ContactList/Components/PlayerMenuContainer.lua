--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)
local GetFFlagIrisUseLocalizationProvider =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIrisUseLocalizationProvider
local GetFFlagIrisBlockUnfriendMenuFix =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIrisBlockUnfriendMenuFix
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ContactList = RobloxGui.Modules.ContactList
local BlockPlayer = require(RobloxGui.Modules.PlayerList.Thunks.BlockPlayer)

local dependencies = require(ContactList.dependencies)
local UnfriendTargetUserId = dependencies.NetworkingFriends.UnfriendTargetUserId
local UIBlox = dependencies.UIBlox

local useSelector = dependencies.Hooks.useSelector
local useDispatch = dependencies.Hooks.useDispatch

local useLocalization
local RobloxTranslator
if GetFFlagIrisUseLocalizationProvider() then
	useLocalization = dependencies.Hooks.useLocalization
else
	RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
end

local CloseCFM = require(ContactList.Actions.CloseCFM)
local useAnalytics = require(ContactList.Analytics.useAnalytics)
local EventNamesEnum = require(ContactList.Analytics.EventNamesEnum)
local ConfigureFriendMenu = require(ContactList.Components.ContactListCommon.ConfigureFriendMenu)
local FriendAction = require(ContactList.Enums.FriendAction)
local UpdateLastFriend = require(ContactList.Actions.UpdateLastFriend)

local useStyle = UIBlox.Core.Style.useStyle
local withStyle = UIBlox.Style.withStyle
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local localPlayer = Players.LocalPlayer
local localUserId: number = localPlayer and localPlayer.UserId or 0
local CALL_DIALOG_DISPLAY_ORDER = 8

local CANCEL_TEXT_KEY = "Feature.Friends.Label.Cancel"
local BLOCK_TEXT_KEY = "Feature.Friends.Action.Block"
local BLOCK_TITLE_KEY = "Feature.Call.Label.Block"
local UNFRIEND_TEXT_KEY = "Feature.Friends.Action.Unfriend"
local UNFRIEND_TITLE_KEY = "Feature.Call.Label.Unfriend"
local BODY_KEY = "Feature.SettingsHub.Message.BlockConfirmation"

local function PlayerMenuContainer()
	local analytics = useAnalytics()
	local style = useStyle()
	local theme = style.Theme

	local dispatch = useDispatch()

	local isOpen = useSelector(function(state)
		return state.PlayerMenu.isOpen
	end)

	local friend = useSelector(function(state)
		return state.PlayerMenu.friend
	end)

	local localized
	if GetFFlagIrisUseLocalizationProvider() then
		localized = useLocalization({
			blockTitle = { BLOCK_TITLE_KEY, combinedName = friend.combinedName },
			blockAction = BLOCK_TEXT_KEY,
			unfriendTitle = { UNFRIEND_TITLE_KEY, combinedName = friend.combinedName },
			unfriendAction = UNFRIEND_TEXT_KEY,
			cancelAction = CANCEL_TEXT_KEY,
			confirmationDescription = { BODY_KEY, DISPLAY_NAME = friend.combinedName, RBX_NAME = friend.userName },
		})
	end

	local dialogType, setDialogType = React.useState(FriendAction.NoAction)
	local containerSize, setContainerSize = React.useState(Vector2.new(0, 0))
	local title, setTitle = React.useState("")
	local buttonName, setButtonName = React.useState("")

	local confirmDelete = React.useCallback(function()
		if dialogType == FriendAction.Block then
			dispatch(BlockPlayer({
				UserId = friend.userId,
			}))
			dispatch(UpdateLastFriend(friend.userId))
		elseif dialogType == FriendAction.Unfriend then
			local request = UnfriendTargetUserId.API({
				currentUserId = localUserId,
				targetUserId = friend.userId,
			})
			dispatch(request)
				:andThen(function(res)
					analytics.fireEvent(EventNamesEnum.PhoneBookPlayerMenuUnfriendFinished, {
						eventTimestampMs = os.time() * 1000,
						friendUserId = friend.userId,
						success = true,
					})
					dispatch(UpdateLastFriend(friend.userId))
				end)
				:catch(function(err)
					analytics.fireEvent(EventNamesEnum.PhoneBookPlayerMenuUnfriendFinished, {
						eventTimestampMs = os.time() * 1000,
						friendUserId = friend.userId,
						success = false,
					})
				end)
		end
	end, { dialogType, friend.userId })

	React.useEffect(function()
		if GetFFlagIrisUseLocalizationProvider() then
			if dialogType == FriendAction.Block then
				setTitle(localized.blockTitle)
				setButtonName(localized.blockAction)
			elseif dialogType == FriendAction.Unfriend then
				setTitle(localized.unfriendTitle)
				setButtonName(localized.unfriendAction)
			end
		else
			if dialogType == FriendAction.Block then
				setTitle(RobloxTranslator:FormatByKey(BLOCK_TITLE_KEY, {
					combinedName = friend.combinedName,
				}))
				setButtonName(RobloxTranslator:FormatByKey(BLOCK_TEXT_KEY))
			elseif dialogType == FriendAction.Unfriend then
				setTitle(RobloxTranslator:FormatByKey(UNFRIEND_TITLE_KEY, {
					combinedName = friend.combinedName,
				}))
				setButtonName(RobloxTranslator:FormatByKey(UNFRIEND_TEXT_KEY))
			end
		end
	end, { dialogType, friend.combinedName })

	local initiateConfirmation = React.useCallback(function(alertType)
		setDialogType(alertType)
	end, {})

	local cfMenu = React.useMemo(function()
		return React.createElement(ConfigureFriendMenu, {
			initiateConfirmation = initiateConfirmation,
		})
	end, {})

	local confirmationMenu = React.useMemo(function()
		return withStyle(function(style)
			return Roact.createElement(InteractiveAlert, {
				title = title,
				bodyText = if GetFFlagIrisUseLocalizationProvider()
					then localized.confirmationDescription
					else RobloxTranslator:FormatByKey(BODY_KEY, {
						["DISPLAY_NAME"] = friend.combinedName,
						["RBX_NAME"] = friend.userName,
					}),
				buttonStackInfo = {
					buttons = {
						{
							buttonType = ButtonType.Secondary,
							props = {
								text = if GetFFlagIrisUseLocalizationProvider()
									then localized.cancelAction
									else RobloxTranslator:FormatByKey(CANCEL_TEXT_KEY),
								onActivated = function()
									dispatch(CloseCFM())
									setDialogType(FriendAction.NoAction)
								end,
							},
						},
						{
							buttonType = ButtonType.Alert,
							props = {
								text = buttonName,
								onActivated = function()
									confirmDelete()
									dispatch(CloseCFM())
									setDialogType(FriendAction.NoAction)
								end,
							},
						},
					},
				},
				screenSize = containerSize,
			})
		end)
	end, { title, buttonName, dialogType, friend.combinedName, friend.userName })

	return React.createElement(Roact.Portal, {
		target = CoreGui :: Instance,
	}, {
		PlayerMenuScreen = React.createElement("ScreenGui", {
			Enabled = isOpen,
			IgnoreGuiInset = true,
			ZIndexBehavior = if GetFFlagIrisBlockUnfriendMenuFix() then Enum.ZIndexBehavior.Sibling else nil,
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
				[React.Event.Activated] = function()
					dispatch(CloseCFM())
					setDialogType(FriendAction.NoAction)
				end,
			}),
			PlayerMenu = if dialogType == FriendAction.NoAction then cfMenu else confirmationMenu,
		}),
	})
end

return PlayerMenuContainer
