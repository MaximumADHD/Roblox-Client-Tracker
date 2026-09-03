--[[
	The prompt UI opened for makeup look publishing (multiple makeup assets).
]]
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local mutedError = require(CorePackages.Workspace.Packages.Loggers).mutedError

local Components = script.Parent.Parent
local BasePublishPrompt = require(Components.BasePublishPrompt)
local ObjectViewport = require(Components.Common.ObjectViewport)
local LabeledTextBox = require(Components.Common.LabeledTextBox)
local PublishInfoList = require(Components.Common.PublishInfoList)
local MakeupPartGrid = require(Components.Common.MakeupPartGrid)
local MakeupPreviewUtils = require(script.Parent.Parent.Parent.MakeupPreviewUtils)
local GetFFlagUploadMakeupSupport = require(script.Parent.Parent.Parent.Flags.GetFFlagUploadMakeupSupport)
local PurchasePrompt = require(CorePackages.Workspace.Packages.PurchasePrompt)
local Analytics = PurchasePrompt.PublishAssetAnalytics

local Actions = script.Parent.Parent.Parent.Actions
local SetPromptVisibility = require(Actions.SetPromptVisibility)

local PADDING = UDim.new(0, 20)
local CAMERA_FOV = 30
local DELAYED_INPUT_ANIM_SEC = 3
local DESC_TEXTBOX_HEIGHT = 104
local DESC_TEXTBOX_MAXLENGTH = 1000

local DESC_LABEL_KEY = "CoreScripts.PublishAssetPrompt.Description"
local DESC_INVALID_KEY = "CoreScripts.PublishAssetPrompt.InvalidDescription"

local PublishMakeupLookPrompt = Roact.PureComponent:extend("PublishMakeupLookPrompt")

PublishMakeupLookPrompt.validateProps = t.strictInterface({
	screenSize = t.Vector2,
	accessoryInstance = t.optional(t.union(t.instanceIsA("Folder"), t.instanceIsA("Decal"))),
	makeupEntries = t.optional(t.table),
	guid = t.any,
	scopes = t.any,
	priceInRobux = t.optional(t.number),
	SetPromptVisibility = t.callback,
})

function PublishMakeupLookPrompt:init()
	local LocalPlayer = Players.LocalPlayer
	assert(LocalPlayer, "LocalPlayer must not be nil")

	self:setState({
		showingPreviewView = false,
		name = LocalPlayer.Name .. "'s Makeup",
		isNameValid = true,
		description = LocalPlayer.Name .. "'s Makeup",
		isDescValid = true,
		showTopScrim = false,
		purchasePromptReady = true,
		previewModel = nil,
	})

	self.openPreviewView = function()
		Analytics.sendButtonClicked(Analytics.Section.BuyCreationPage, Analytics.Element.Expand)
		self:setState({ showingPreviewView = true })
	end

	self.closePreviewView = function()
		self:setState({ showingPreviewView = false })
	end

	self.canSubmit = function(): boolean
		return self.state.isNameValid
			and self.state.isDescValid
			and self.props.accessoryInstance ~= nil
			and self.state.purchasePromptReady
	end

	self.onSubmit = function()
		Analytics.sendButtonClicked(Analytics.Section.BuyCreationPage, Analytics.Element.Buy)

		local publishMetadata = {
			name = self.state.name,
			description = self.state.description,
		}

		if PurchasePrompt.initiateAvatarCreationFeePurchase then
			PurchasePrompt.initiateAvatarCreationFeePurchase(
				publishMetadata,
				self.props.guid,
				self.state.previewModel,
				self.props.priceInRobux
			)
		else
			mutedError("PurchasePrompt.initiateAvatarCreationFeePurchase is not available")
		end
	end

	self.onNameUpdated = function(newName, isNameValid)
		self:setState({ name = newName, isNameValid = isNameValid })
		if not self.sentNameFieldTouched then
			self.sentNameFieldTouched = true
			Analytics.sendFieldTouched(Analytics.Section.BuyCreationPage, Analytics.Element.Name)
		end
	end

	self.onDescriptionUpdated = function(newDesc, isDescValid)
		self:setState({ description = newDesc, isDescValid = isDescValid })
		if not self.sentDescriptionFieldTouched then
			self.sentDescriptionFieldTouched = true
			Analytics.sendFieldTouched(Analytics.Section.BuyCreationPage, Analytics.Element.Description)
		end
	end

	self.onWindowStateChanged = function(promptTable)
		local hasCompletedPurchase = promptTable.hasCompletedPurchase
		local isShown = promptTable.isShown

		if hasCompletedPurchase and not isShown then
			self.props.SetPromptVisibility(false)
		else
			self:setState({ showTopScrim = isShown })
			if isShown then
				self:setState({ purchasePromptReady = false })
			end
		end
	end

	self.onPromptStateSetToNone = function()
		self:setState({ purchasePromptReady = true })
	end
end

function PublishMakeupLookPrompt:updatePreviewModel()
	local accessoryInstance = self.props.accessoryInstance
	if not accessoryInstance or not accessoryInstance:IsA("Folder") then
		return
	end

	local makeupEntries = self.props.makeupEntries

	task.spawn(function()
		local compositedDecal = MakeupPreviewUtils.compositeMakeupFolder(accessoryInstance)
		local accessories = MakeupPreviewUtils.getFolderAccessories(accessoryInstance, makeupEntries)
		if (not compositedDecal and #accessories == 0) or not self.isMounted then
			return
		end

		local headModel =
			MakeupPreviewUtils.createMakeupHeadPreview(compositedDecal, Enum.AvatarAssetType.FaceMakeup, accessories)
		if headModel and self.isMounted then
			local oldModel = self.state.previewModel
			self:setState({ previewModel = headModel }, function()
				if oldModel then
					oldModel:Destroy()
				end
			end)
		end
	end)
end

function PublishMakeupLookPrompt:didMount()
	self.isMounted = true
	self:updatePreviewModel()
	self.sentNameFieldTouched = false
	self.sentDescriptionFieldTouched = false

	local windowStateChangedEvent = PurchasePrompt.windowStateChangedEvent
	local promptStateSetToNoneEvent = PurchasePrompt.promptStateSetToNoneEvent

	if windowStateChangedEvent and promptStateSetToNoneEvent then
		self.windowStateChangedConnection = windowStateChangedEvent:Connect(self.onWindowStateChanged)
		self.promptStateSetToNoneConnection = promptStateSetToNoneEvent:Connect(self.onPromptStateSetToNone)
	else
		mutedError(
			"PurchasePrompt.windowStateChangedEvent or PurchasePrompt.promptStateSetToNoneEvent is not available"
		)
	end

	Analytics.sendPageLoad(Analytics.Section.BuyCreationPage)
end

function PublishMakeupLookPrompt:didUpdate(prevProps)
	if prevProps.accessoryInstance ~= self.props.accessoryInstance then
		self:updatePreviewModel()
	end
end

function PublishMakeupLookPrompt:willUnmount()
	self.isMounted = false

	if self.state.previewModel then
		self.state.previewModel:Destroy()
	end

	if self.windowStateChangedConnection then
		self.windowStateChangedConnection:Disconnect()
	else
		mutedError("windowStateChangedConnection was not established")
	end

	if self.promptStateSetToNoneConnection then
		self.promptStateSetToNoneConnection:Disconnect()
	else
		mutedError("promptStateSetToNoneConnection was not established")
	end
end

function PublishMakeupLookPrompt:renderPromptBody()
	local previewModel = self.state.previewModel
	local isLoading = previewModel == nil
	return Roact.createFragment({
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = PADDING,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		}),
		UIPadding = Roact.createElement("UIPadding", {
			PaddingBottom = PADDING,
			PaddingTop = PADDING,
		}),
		EmbeddedPreview = Roact.createElement(ObjectViewport, {
			openPreviewView = self.openPreviewView,
			model = previewModel,
			isLoading = isLoading,
			useFullBodyCameraSettings = false,
			fieldOfView = CAMERA_FOV,
			LayoutOrder = 1,
			isMakeupPreview = GetFFlagUploadMakeupSupport(),
		}),
		DescriptionInput = Roact.createElement(LabeledTextBox, {
			LayoutOrder = 2,
			labelText = RobloxTranslator:FormatByKey(DESC_LABEL_KEY),
			centerText = false,
			defaultText = self.state.description,
			maxLength = DESC_TEXTBOX_MAXLENGTH,
			onTextUpdated = self.onDescriptionUpdated,
			textBoxHeight = DESC_TEXTBOX_HEIGHT,
			invalidInputText = RobloxTranslator:FormatByKey(DESC_INVALID_KEY),
		}),
		InfoList = Roact.createElement(PublishInfoList, {
			typeName = RobloxTranslator:FormatByKey("Feature.Catalog.Label.Makeup"),
			LayoutOrder = 3,
		}),
		MakeupGrid = Roact.createElement(MakeupPartGrid, {
			makeupFolder = self.props.accessoryInstance,
			makeupEntries = self.props.makeupEntries,
			name = self.state.name,
			LayoutOrder = 4,
			screenSize = self.props.screenSize,
		}),
	})
end

function PublishMakeupLookPrompt:render()
	return Roact.createElement(BasePublishPrompt, {
		promptBody = self:renderPromptBody(),
		screenSize = self.props.screenSize,
		showingPreviewView = self.state.showingPreviewView,
		closePreviewView = self.closePreviewView,
		isMakeupPreview = GetFFlagUploadMakeupSupport(),
		asset = self.state.previewModel,
		nameLabel = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.Name"),
		defaultName = self.state.name,
		titleText = RobloxTranslator:FormatByKey("CoreScripts.PublishAvatarPrompt.BuyCreation"),
		onNameUpdated = self.onNameUpdated,
		canSubmit = self.canSubmit,
		onSubmit = self.onSubmit,
		delayInputSeconds = DELAYED_INPUT_ANIM_SEC,
		priceInRobux = self.props.priceInRobux,
		showTopScrim = self.state.showTopScrim,
	})
end

local function mapStateToProps(state)
	return {
		accessoryInstance = state.promptRequest.promptInfo.accessoryInstance,
		guid = state.promptRequest.promptInfo.guid,
		scopes = state.promptRequest.promptInfo.scopes,
		priceInRobux = state.promptRequest.promptInfo.priceInRobux,
		makeupEntries = state.promptRequest.promptInfo.makeupEntries,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetPromptVisibility = function(promptVisible)
			dispatch(SetPromptVisibility(promptVisible))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PublishMakeupLookPrompt)
