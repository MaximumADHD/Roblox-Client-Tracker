--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ContactList = RobloxGui.Modules.ContactList
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local BlockPlayer = require(RobloxGui.Modules.PlayerList.Thunks.BlockPlayer)
local ConfigureFriendMenu = require(ContactList.Components.common.ConfigureFriendMenu)
local FriendAction = require(ContactList.Enums.FriendAction)

local dependencies = require(ContactList.dependencies)
local UnfriendTargetUserId = dependencies.NetworkingFriends.UnfriendTargetUserId
local UIBlox = dependencies.UIBlox

local useSelector = dependencies.Hooks.useSelector
local useDispatch = dependencies.Hooks.useDispatch

local CloseCFM = require(ContactList.Actions.CloseCFM)

local useStyle = UIBlox.Core.Style.useStyle
local withStyle = UIBlox.Style.withStyle
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local localPlayer = Players.LocalPlayer
local localUserId: number = localPlayer and localPlayer.UserId or 0
local CALL_DIALOG_DISPLAY_ORDER = 8

local CANCEL_TEXT_KEY = "Feature.SettingsHub.Action.Cancel"
local BLOCK_TEXT_KEY = "Feature.SettingsHub.Action.Block"
local BLOCK_TITLE_KEY = "Feature.SettingsHub.Heading.BlockUser"
local UNFRIEND_TEXT_KEY = "FriendPlayerPrompt.Label.Unfriend"
local BODY_KEY = "Feature.SettingsHub.Message.BlockConfirmation"

local function PlayerMenuContainer()
	local style = useStyle()
	local theme = style.Theme

	local dispatch = useDispatch()

	local isOpen = useSelector(function(state)
		return state.PlayerMenu.isOpen
	end)

	local friend = useSelector(function(state)
		return state.PlayerMenu.friend
	end)

	local dialogType, setDialogType = React.useState(FriendAction.NoAction.rawValue())
	local containerSize, setContainerSize = React.useState(Vector2.new(0, 0))
	local title, setTitle = React.useState("")
	local buttonName, setButtonName = React.useState("")

	local confirmDelete = React.useCallback(function()
		if dialogType == FriendAction.Block.rawValue() then
			dispatch(BlockPlayer({
				UserId = friend.userId,
			}))
		elseif dialogType == FriendAction.Unfriend.rawValue() then
			local request = UnfriendTargetUserId.API({
				currentUserId = localUserId,
				targetUserId = friend.userId,
			})
			dispatch(request)
		end
	end, { dialogType, friend.userId })

	React.useEffect(function()
		if dialogType == FriendAction.Block.rawValue() then
			setTitle(RobloxTranslator:FormatByKey(BLOCK_TITLE_KEY, {
				DisplayName = friend.combinedName,
			}))
			setButtonName(RobloxTranslator:FormatByKey(BLOCK_TEXT_KEY))
		elseif dialogType == FriendAction.Unfriend.rawValue() then
			setTitle("Unfriend " .. friend.combinedName) -- TODO: Unfriend {DisplayName} localization needed
			setButtonName(RobloxTranslator:FormatByKey(UNFRIEND_TEXT_KEY))
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
				bodyText = RobloxTranslator:FormatByKey(BODY_KEY, {
					["DISPLAY_NAME"] = friend.combinedName,
					["RBX_NAME"] = friend.userName,
				}),
				buttonStackInfo = {
					buttons = {
						{
							buttonType = ButtonType.Secondary,
							props = {
								text = RobloxTranslator:FormatByKey(CANCEL_TEXT_KEY),
								onActivated = function()
									dispatch(CloseCFM())
									setDialogType(FriendAction.NoAction.rawValue())
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
									setDialogType(FriendAction.NoAction.rawValue())
								end,
							},
						},
					},
				},
				screenSize = containerSize,
			})
		end)
	end, { title, buttonName, friend.combinedName, friend.userName })

	return React.createElement(Roact.Portal, {
		target = CoreGui :: Instance,
	}, {
		PlayerMenuScreen = React.createElement("ScreenGui", {
			Enabled = isOpen,
			IgnoreGuiInset = true,
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
					setDialogType(FriendAction.NoAction.rawValue())
				end,
			}),
			PlayerMenu = if dialogType == FriendAction.NoAction.rawValue() then cfMenu else confirmationMenu,
		}),
	})
end

return PlayerMenuContainer
