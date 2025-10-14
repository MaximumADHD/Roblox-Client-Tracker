local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local Foundation = require(CorePackages.Packages.Foundation)
local ButtonVariant = Foundation.Enums.ButtonVariant
local FillBehavior = Foundation.Enums.FillBehavior
local Button = Foundation.Button

local Localization = require(CorePackages.Workspace.Packages.Localization)
local useLocalization = Localization.Hooks.useLocalization

local PeopleService = require(CorePackages.Workspace.Packages.PeopleService)

type AddConnectionButtonProps = {
	userId: number,
	layoutOrder: number?,
}

local function AddConnectionButton(props: AddConnectionButtonProps): React.ReactNode
	local localized = useLocalization({
		isFriend = "CommonUI.Features.Label.Connection",
		addPerson = "CommonUI.Features.Label.Add",
		requestSent = "CommonUI.Features.Label.Sent",
	})

	local PeopleServiceConstants = React.useMemo(function()
		return PeopleService.getService("Constants")
	end, {})

	local PeopleAnalyticsManager = React.useMemo(function()
		return PeopleService.getService("PeopleAnalyticsManager")
	end, {})

	local FriendStatusStore = React.useMemo(function()
		return PeopleService.getService("FriendStatusStore")
	end, {})

	local player = React.useMemo(function()
		return if props.userId then Players:GetPlayerByUserId(props.userId) else nil
	end, { props.userId })

	local friendButtonText = SignalsReact.useSignalState(FriendStatusStore.getFriendButtonText(props.userId, localized))
	local isDisabled = SignalsReact.useSignalState(FriendStatusStore.getIsFriendButtonDisabled(props.userId))

	return React.createElement(Button, {
		text = friendButtonText,
		variant = if isDisabled then ButtonVariant.Subtle else ButtonVariant.Emphasis,
		fillBehavior = FillBehavior.Fill,
		isDisabled = isDisabled,
		LayoutOrder = props.layoutOrder,
		onActivated = function()
			PeopleAnalyticsManager:trackRequestFriendship(PeopleServiceConstants.ANALYTICS.ENTRY_POINT.PLAYER_PROFILE)
			FriendStatusStore.sendFriendRequest(player)
		end,
	})
end

return React.memo(AddConnectionButton)
