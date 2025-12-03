--[[
	The prompt UI opened for avatar asset publishing
]]
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local React = require(CorePackages.Packages.React)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local mutedError = require(CorePackages.Workspace.Packages.Loggers).mutedError

local Components = script.Parent.Parent
local BasePublishPrompt = require(Components.BasePublishPrompt)
local ObjectViewport = require(Components.Common.ObjectViewport)
local LabeledTextBox = require(Components.Common.LabeledTextBox)
local PublishInfoList = require(Components.Common.PublishInfoList)
local PurchasePrompt = require(CorePackages.Workspace.Packages.PurchasePrompt)
local Analytics = PurchasePrompt.PublishAssetAnalytics

local PublishAssetPrompt = Components.Parent

local Actions = PublishAssetPrompt.Actions
local SetPromptVisibility = require(Actions.SetPromptVisibility)

local RoactUtils = require(CorePackages.Workspace.Packages.RoactUtils)
local useDispatch = RoactUtils.Hooks.RoactRodux.useDispatch
local useSelector = RoactUtils.Hooks.RoactRodux.useSelector

local Constants = require(PublishAssetPrompt.Constants)

local FFlagFixAssetIECPromptNaming = game:DefineFastFlag("FixAssetIECPromptNaming2", false)

local PADDING = UDim.new(0, 20)
local CAMERA_FOV = 30
local DELAYED_INPUT_ANIM_SEC = 3
local DESC_TEXTBOX_HEIGHT = 104
local DESC_TEXTBOX_MAXLENGTH = 1000

local DESC_LABEL_KEY = "CoreScripts.PublishAssetPrompt.Description"
local DESC_INVALID_KEY = "CoreScripts.PublishAssetPrompt.InvalidDescription"

type Props = {
	screenSize: Vector2,
}

local function PublishAvatarAssetPrompt(props: Props)
	local LocalPlayer = Players.LocalPlayer
	assert(LocalPlayer, "LocalPlayer must not be nil")

	-- rodux state
	local promptInfo = useSelector(function(state)
		return state.promptRequest.promptInfo
	end)

	local dispatch = useDispatch()

	local defaultText
	if FFlagFixAssetIECPromptNaming then
		-- UGC creation does not localize similar text, so we don't localize here
		local defaultAvatarAssetTypeName = Constants.AvatarAssetTypeDefaultName[promptInfo.accessoryType]
		defaultText = LocalPlayer.Name .. "'s " .. defaultAvatarAssetTypeName
	else
		local accessoryTypeString = promptInfo.accessoryType.Name
		defaultText = LocalPlayer.Name .. "'s " .. accessoryTypeString
	end

	-- state
	local showingPreviewView, setShowingPreviewView = React.useState(false)
	local name, setName = React.useState(defaultText)
	local isNameValid, setIsNameValid = React.useState(true)
	local description, setDescription = React.useState(defaultText)
	local isDescValid, setIsDescValid = React.useState(true)
	local showTopScrim, setShowTopScrim = React.useState(false)
	local purchasePromptReady, setPurchasePromptReady = React.useState(true)

	-- refs
	local sentNameFieldTouchedRef = React.useRef(false)
	local sentDescriptionFieldTouchedRef = React.useRef(false)
	local windowStateChangedConnection = React.useRef(nil)
	local promptStateSetToNoneConnection = React.useRef(nil)

	-- callbacks
	local openPreviewView = React.useCallback(function()
		Analytics.sendButtonClicked(Analytics.Section.BuyCreationPage, Analytics.Element.Expand)
		setShowingPreviewView(true)
	end, {})

	local closePreviewView = React.useCallback(function()
		setShowingPreviewView(false)
	end, {})

	local canSubmit = React.useCallback(function()
		return isNameValid and isDescValid and promptInfo.accessoryInstance ~= nil and purchasePromptReady
	end, { isNameValid, isDescValid, promptInfo.accessoryInstance, purchasePromptReady })

	local onSubmit = React.useCallback(function()
		Analytics.sendButtonClicked(Analytics.Section.BuyCreationPage, Analytics.Element.Buy)

		local accessoryPublishMetadata = {
			name = name,
			description = description,
		}

		if PurchasePrompt.initiateAvatarCreationFeePurchase then
			PurchasePrompt.initiateAvatarCreationFeePurchase(
				accessoryPublishMetadata,
				promptInfo.guid,
				promptInfo.accessoryInstance,
				promptInfo.priceInRobux
			)
		else
			mutedError("PurchasePrompt.initiateAvatarCreationFeePurchase is not available")
		end
	end, { name, description, promptInfo.guid, promptInfo.accessoryInstance, promptInfo.priceInRobux } :: { any })

	local onNameUpdated = React.useCallback(function(newName, newIsValid)
		setName(newName)
		setIsNameValid(newIsValid)

		if not sentNameFieldTouchedRef.current then
			sentNameFieldTouchedRef.current = true
			Analytics.sendFieldTouched(Analytics.Section.BuyCreationPage, Analytics.Element.Name)
		end
	end, {})

	local onDescriptionUpdated = React.useCallback(function(newDesc, newIsValid)
		setDescription(newDesc)
		setIsDescValid(newIsValid)

		if not sentDescriptionFieldTouchedRef.current then
			sentDescriptionFieldTouchedRef.current = true
			Analytics.sendFieldTouched(Analytics.Section.BuyCreationPage, Analytics.Element.Description)
		end
	end, {})

	local onWindowStateChanged = function(promptTable)
		local hasCompletedPurchase = promptTable.hasCompletedPurchase
		local isShown = promptTable.isShown

		if hasCompletedPurchase and not isShown then
			dispatch(SetPromptVisibility(false))
		else
			setShowTopScrim(isShown)
			if isShown then
				setPurchasePromptReady(false)
			end
		end
	end

	local onPromptStateSetToNone = function()
		setPurchasePromptReady(true)
	end

	-- subscriptions and analytics page load
	React.useEffect(function()
		local windowStateChangedEvent = PurchasePrompt.windowStateChangedEvent
		local promptStateSetToNoneEvent = PurchasePrompt.promptStateSetToNoneEvent

		if windowStateChangedEvent and promptStateSetToNoneEvent then
			windowStateChangedConnection.current = windowStateChangedEvent:Connect(onWindowStateChanged)
			promptStateSetToNoneConnection.current = promptStateSetToNoneEvent:Connect(onPromptStateSetToNone)
		else
			mutedError(
				"PurchasePrompt.windowStateChangedEvent or PurchasePrompt.promptStateSetToNoneEvent is not available"
			)
		end
		Analytics.sendPageLoad(Analytics.Section.BuyCreationPage)

		return function()
			if windowStateChangedConnection.current then
				windowStateChangedConnection.current:Disconnect()
				windowStateChangedConnection.current = nil
			else
				mutedError("windowStateChangedConnection was not established")
			end
			if promptStateSetToNoneConnection.current then
				promptStateSetToNoneConnection.current:Disconnect()
				promptStateSetToNoneConnection.current = nil
			else
				mutedError("promptStateSetToNoneConnection was not established")
			end
		end
	end, {})

	local typeName = promptInfo.accessoryType.Name
	if FFlagFixAssetIECPromptNaming then
		local categoryLocalized = RobloxTranslator:FormatByKey("Feature.Avatar.Label.Accessory")
		local avatarAssetTypeLocalized =
			RobloxTranslator:FormatByKey(Constants.AvatarAssetTypeLocalized[promptInfo.accessoryType])
		typeName = categoryLocalized .. " | " .. avatarAssetTypeLocalized
	end

	local renderPromptBody = React.useCallback(function()
		local isLoading = promptInfo.accessoryInstance == nil
		return React.createElement(React.Fragment, nil, {
			UIListLayout = React.createElement("UIListLayout", {
				Padding = PADDING,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
			}),
			UIPadding = React.createElement("UIPadding", {
				PaddingBottom = PADDING,
				PaddingTop = PADDING,
			}),
			EmbeddedPreview = React.createElement(ObjectViewport, {
				openPreviewView = openPreviewView,
				model = promptInfo.accessoryInstance,
				isLoading = isLoading,
				useFullBodyCameraSettings = true,
				fieldOfView = CAMERA_FOV,
				LayoutOrder = 1,
			}),
			DescriptionInput = React.createElement(LabeledTextBox, {
				LayoutOrder = 2,
				labelText = RobloxTranslator:FormatByKey(DESC_LABEL_KEY),
				centerText = false,
				defaultText = description,
				maxLength = DESC_TEXTBOX_MAXLENGTH,
				onTextUpdated = onDescriptionUpdated,
				textBoxHeight = DESC_TEXTBOX_HEIGHT,
				invalidInputText = RobloxTranslator:FormatByKey(DESC_INVALID_KEY),
			}),
			InfoList = React.createElement(PublishInfoList, {
				typeName = typeName,
				LayoutOrder = 3,
			}),
		})
	end, { promptInfo.accessoryInstance, promptInfo.accessoryType, description } :: { any })

	return React.createElement(BasePublishPrompt, {
		promptBody = renderPromptBody(),
		screenSize = props.screenSize,
		showingPreviewView = showingPreviewView,
		closePreviewView = closePreviewView,
		asset = promptInfo.accessoryInstance,
		nameLabel = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.Name"),
		defaultName = name,
		titleText = RobloxTranslator:FormatByKey("CoreScripts.PublishAvatarPrompt.BuyCreation"),
		onNameUpdated = onNameUpdated,
		canSubmit = canSubmit,
		onSubmit = onSubmit,
		delayInputSeconds = DELAYED_INPUT_ANIM_SEC,
		priceInRobux = promptInfo.priceInRobux,
		showTopScrim = showTopScrim,
	})
end

return PublishAvatarAssetPrompt
