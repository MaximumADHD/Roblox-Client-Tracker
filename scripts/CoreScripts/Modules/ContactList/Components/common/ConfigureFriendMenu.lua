local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local GetFFlagIrisEnumerateCleanupEnabled =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIrisEnumerateCleanupEnabled

local BaseMenu = UIBlox.App.Menu.BaseMenu
local Images = UIBlox.App.ImageSet.Images
local useStyle = UIBlox.Core.Style.useStyle

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ContactList = RobloxGui.Modules.ContactList
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local dependencies = require(ContactList.dependencies)
local useSelector = dependencies.Hooks.useSelector

local useAnalytics = require(ContactList.Analytics.useAnalytics)
local EventNamesEnum = require(ContactList.Analytics.EventNamesEnum)
local FriendAction = require(ContactList.Enums.FriendAction)

local function ConfigureFriendMenu(props)
	local analytics = useAnalytics()
	local style = useStyle()
	local theme = style.Theme

	local combinedName = useSelector(function(state)
		if state.PlayerMenu.friend then
			return state.PlayerMenu.friend.combinedName
		else
			return ""
		end
	end)

	local friendUserId = useSelector(function(state)
		if state.PlayerMenu.friend then
			return state.PlayerMenu.friend.userId
		else
			return nil
		end
	end)

	return Roact.createElement(BaseMenu, {
		buttonProps = {
			{
				icon = Images["icons/actions/block"],
				text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.Block") .. " " .. combinedName,
				onActivated = function()
					analytics.fireEvent(EventNamesEnum.PhoneBookPlayerMenuBlockClicked, {
						eventTimestampMs = os.time() * 1000,
						friendUserId = friendUserId,
					})
					props.initiateConfirmation(
						if GetFFlagIrisEnumerateCleanupEnabled()
							then FriendAction.Block
							else (FriendAction.Block :: any).rawValue()
					)
				end,
			},
			{
				icon = Images["icons/actions/friends/friendRemove"],
				text = RobloxTranslator:FormatByKey("FriendPlayerPrompt.Label.Unfriend") .. " " .. combinedName,
				onActivated = function()
					analytics.fireEvent(EventNamesEnum.PhoneBookPlayerMenuUnfriendClicked, {
						eventTimestampMs = os.time() * 1000,
						friendUserId = friendUserId,
					})
					props.initiateConfirmation(
						if GetFFlagIrisEnumerateCleanupEnabled()
							then FriendAction.Unfriend
							else (FriendAction.Unfriend :: any).rawValue()
					)
				end,
			},
		},
		background = theme.BackgroundUIDefault,
		width = UDim.new(0, 352),
		position = UDim2.new(0.5, 0, 0.5, 0),
		anchorPoint = Vector2.new(0.5, 0.5),
	})
end

return ConfigureFriendMenu
