--!strict
local CorePackages = game:GetService("CorePackages")
local AppStorageService = game:GetService("AppStorageService")
local HttpService = game:GetService("HttpService")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local GamepadNavigationDialog = require(script.Parent.GamepadNavigationDialog)

local GamepadNavigationDialogShowCounter = React.PureComponent:extend("GamepadNavigationDialogShowCounter")
export type Props = {
	isGamepadNavigationDialogEnabled: boolean,
	isGamepadNavigationDialogOpen: boolean,
	appStorageKey: string,
	maxShownCount: number,
	selectButtonDismissesGamepadNavigationDialog: boolean,
	SetGamepadNavigationDialogOpen: (boolean) -> (),
}

local function shouldShowBasedOnCountInAppStorage(key, maxShown)
	local valueString = AppStorageService:GetItem(key)
	local userIdString = AppStorageService:GetItem("UserId")
	local jsonOkay, userIdToCount = pcall(function()
		return HttpService:JSONDecode(valueString)
	end)
	if not jsonOkay or type(userIdToCount) ~= "table" then
		userIdToCount = {}
	end
	local count = userIdToCount[userIdString]
	if type(count) ~= "number" then
		count = 0
	end
	userIdToCount[userIdString] = count + 1
	return count < maxShown, HttpService:JSONEncode(userIdToCount)
end

type TextButtonProps = {
	selectButtonDismissesGamepadNavigationDialog: boolean,
	onDismissed: () -> (),
	onCleanup: () -> (),
}

local function GamepadNavigationDialogTextButton(props: TextButtonProps): React.ReactElement?
	React.useEffect(function()
		return props.onCleanup
	end, {})

	return React.createElement("TextButton", {
		Text = "",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		[React.Event.Activated] = props.onDismissed,
	}, {
		GamepadNavigationDialog = React.createElement(GamepadNavigationDialog, {
			selectButtonDismissesGamepadNavigationDialog = props.selectButtonDismissesGamepadNavigationDialog,
			onDismissed = props.onDismissed,
		}),
	})
end

local function GamepadNavigationDialogShowCounter(props: Props): React.ReactElement?
	if not (props.isGamepadNavigationDialogEnabled and props.isGamepadNavigationDialogOpen) then
		return nil
	end

	local shouldShow, newAppStorageValue = shouldShowBasedOnCountInAppStorage(props.appStorageKey, props.maxShownCount)
	if not shouldShow then
		return nil
	end

	return React.createElement(GamepadNavigationDialogTextButton, {
		selectButtonDismissesGamepadNavigationDialog = props.selectButtonDismissesGamepadNavigationDialog,
		onDismissed = function()
			props.SetGamepadNavigationDialogOpen(false)
		end,
		onCleanup = function()
			AppStorageService:SetItem(props.appStorageKey, newAppStorageValue)
			AppStorageService:Flush()
		end,
	})
end

return GamepadNavigationDialogShowCounter
