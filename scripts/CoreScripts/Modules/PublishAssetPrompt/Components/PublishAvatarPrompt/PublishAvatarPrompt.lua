--[[
	The prompt UI opened for Avatar body part outfit publishing.
]]
local AssetService = game:GetService("AssetService")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local AvatarPartGrid = require(script.Parent.AvatarParts.AvatarPartGrid)
local UIBlox = require(CorePackages.UIBlox)
local withStyle = UIBlox.Style.withStyle
local mutedError = require(CorePackages.Workspace.Packages.Loggers).mutedError

local Components = script.Parent.Parent
local BasePublishPrompt = require(Components.BasePublishPrompt)
local ObjectViewport = require(Components.Common.ObjectViewport)
local NameTextBox = require(Components.Common.NameTextBox)
local PublishInfoList = require(Components.Common.PublishInfoList)
local PurchasePrompt = require(RobloxGui.Modules.PurchasePrompt)

local Actions = script.Parent.Parent.Parent.Actions
local SetPromptVisibility = require(Actions.SetPromptVisibility)

local PADDING = UDim.new(0, 20)
local CAMERA_FOV = 30
local DELAYED_INPUT_ANIM_SEC = 3
local LABEL_HEIGHT = 15
local DESC_TEXTBOX_HEIGHT = 104
local DESC_TEXTBOX_MAXLENGTH = 1000

local PublishAvatarPrompt = Roact.PureComponent:extend("PublishAvatarPrompt")

PublishAvatarPrompt.validateProps = t.strictInterface({
	screenSize = t.Vector2,
	serializedModel = t.optional(t.string),
	humanoidModel = t.optional(t.instanceOf("Model")),

	-- Mapped state
	guid = t.any,
	scopes = t.any,

	-- Dispatch props
	SetPromptVisibility = t.callback,
})

function PublishAvatarPrompt:init()
	local LocalPlayer = Players.LocalPlayer
	-- LocalPlayer should always be available
	assert(LocalPlayer, "LocalPlayer must not be nil")

	self:setState({
		showingPreviewView = false,
		-- UGC body creation does not localize similar text, so we don't localize here
		name = LocalPlayer.Name .. "'s Body",
		isNameValid = true,
		description = "",
		isDescValid = true,
		showTopScrim = false,
	})
	self.openPreviewView = function()
		self:setState({
			showingPreviewView = true,
		})
	end
	self.closePreviewView = function()
		self:setState({
			showingPreviewView = false,
		})
	end

	-- Prompt can submit as long as name and description are valid
	self.canSubmit = function(): boolean
		return self.state.isNameValid and self.state.isDescValid and self.props.humanoidModel ~= nil
	end

	self.onSubmit = function()
		local avatarPublishMetadata = {}
		avatarPublishMetadata.name = self.state.name
		avatarPublishMetadata.description = self.state.description

		if PurchasePrompt.initiateAvatarCreationFeePurchase then
			self:setState({
				showTopScrim = true,
			})
			PurchasePrompt.initiateAvatarCreationFeePurchase(
				avatarPublishMetadata,
				self.props.guid,
				self.props.serializedModel,
				self.props.priceInRobux
			)
		else
			mutedError("PurchasePrompt.initiateAvatarCreationFeePurchase is not available")
		end
	end

	self.onNameUpdated = function(newName, isNameValid)
		self:setState({
			name = newName,
			isNameValid = isNameValid,
		})
	end

	self.onDescriptionUpdated = function(newDesc, isDescValid)
		self:setState({
			description = newDesc,
			isDescValid = isDescValid,
		})
	end

	self.onPurchasePromptClosed = function(promptTable)
		local hasCompletedPurchase = promptTable.hasCompletedPurchase

		if hasCompletedPurchase then
			-- Avatar creation fee purchase was successful
			self.props.SetPromptVisibility(false)
		else
			-- Avatar creation fee purchase was cancelled
			self:setState({
				showTopScrim = false,
			})
		end
	end
end

function PublishAvatarPrompt:didMount()
	local purchasePromptClosedEvent = PurchasePrompt.purchasePromptClosedEvent
	if purchasePromptClosedEvent then
		self.purchasePromptClosedConnection = purchasePromptClosedEvent:Connect(self.onPurchasePromptClosed)
	else
		mutedError("PurchasePrompt.purchasePromptClosedEvent is not available")
	end
end

function PublishAvatarPrompt:willUnmount()
	if self.purchasePromptClosedConnection then
		self.purchasePromptClosedConnection:Disconnect()
	else
		mutedError("purchasePromptClosedConnection was not established")
	end
end

function PublishAvatarPrompt:renderPromptBody()
	local isLoading = self.props.humanoidModel == nil
	return withStyle(function(style)
		local font = style.Font
		local baseSize: number = font.BaseSize
		local relativeSize: number = font.CaptionHeader.RelativeSize
		local textSize: number = baseSize * relativeSize
		local theme = style.Theme

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
				model = self.props.humanoidModel,
				isLoading = isLoading,
				useFullBodyCameraSettings = true,
				fieldOfView = CAMERA_FOV,
				LayoutOrder = 1,
			}),
			Description = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, LABEL_HEIGHT + DESC_TEXTBOX_HEIGHT),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
				}),
				DescriptionLabel = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, LABEL_HEIGHT),
					Font = font.CaptionHeader.Font,
					Text = RobloxTranslator:FormatByKey("CoreScripts.PublishAvatarPrompt.Description"),
					TextSize = textSize,
					TextColor3 = theme.TextDefault.Color,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					LayoutOrder = 1,
				}),
				DescriptionInput = Roact.createElement(NameTextBox, {
					Size = UDim2.new(1, 0, 0, DESC_TEXTBOX_HEIGHT),
					maxLength = DESC_TEXTBOX_MAXLENGTH,
					onNameUpdated = self.onDescriptionUpdated,
					defaultName = RobloxTranslator:FormatByKey("CoreScripts.PublishAvatarPrompt.DescriptionTitle"),
					centerText = false,
					LayoutOrder = 2,
				}),
			}),
			InfoList = Roact.createElement(PublishInfoList, {
				typeName = RobloxTranslator:FormatByKey("Feature.Catalog.Label.Body"),
				LayoutOrder = 3,
			}),
			AvatarPartGrid = if not isLoading
				then Roact.createElement(AvatarPartGrid, {
					humanoidModel = self.props.humanoidModel,
					name = self.state.name,
					LayoutOrder = 4,
					screenSize = self.props.screenSize,
				})
				else nil,
		})
	end)
end

function PublishAvatarPrompt:render()
	-- Players should always be available
	assert(Players, "Players must not be nil")
	return Roact.createElement(BasePublishPrompt, {
		promptBody = self:renderPromptBody(),
		screenSize = self.props.screenSize,
		showingPreviewView = self.state.showingPreviewView,
		closePreviewView = self.closePreviewView,
		asset = self.props.humanoidModel,
		nameLabel = RobloxTranslator:FormatByKey("CoreScripts.PublishAvatarPrompt.BodyName"),
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
	local serializedModel = state.promptRequest.promptInfo.serializedModel
	local humanoidModel = if serializedModel then AssetService:DeserializeInstance(serializedModel) else nil
	return {
		serializedModel = serializedModel,
		humanoidModel = humanoidModel,
		guid = state.promptRequest.promptInfo.guid,
		scopes = state.promptRequest.promptInfo.scopes,
		priceInRobux = state.promptRequest.promptInfo.priceInRobux,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetPromptVisibility = function(promptVisible)
			dispatch(SetPromptVisibility(promptVisible))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PublishAvatarPrompt)
