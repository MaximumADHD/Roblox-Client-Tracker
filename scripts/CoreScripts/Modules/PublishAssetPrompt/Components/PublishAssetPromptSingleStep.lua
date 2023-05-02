--[[
	A single-step interactive alert for publishing assets from experience.
	This prompt appears when AssetService:PromptPublishAssetAsync is called.
	The appearance of this prompt changes based on what type of asset you're uploading (clothing item, emote, model, etc).
	At a minimum, this prompt includes:
		- Some visual depiction of the asset you're uploading (ViewportFrame/Icon and/or DataModel hierarchy view).
		- Editable text fields for entering an asset Name and Description.
		- A disclaimer text like "I agree that this experience will upload this ___ on my behalf".
		- Cancel and Submit buttons.
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local ExperienceAuthService = game:GetService("ExperienceAuthService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local UIBlox = require(CorePackages.UIBlox)
local withStyle = UIBlox.Style.withStyle
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)

local AssetNameTextBox = require(script.Parent.AssetNameTextBox)
local AssetDescriptionTextBox = require(script.Parent.AssetDescriptionTextBox)
local ObjectViewport = require(script.Parent.ObjectViewport)
local CloseOpenPrompt = require(script.Parent.Parent.Actions.CloseOpenPrompt)

local INPUT_FIELDS_WIDTH_PERCENT = 0.6
local VIEWPORT_WIDTH_PERCENT = 1 - INPUT_FIELDS_WIDTH_PERCENT
local DISCLAIMER_HEIGHT_PIXELS = 30
local MINIMUM_MIDDLE_SIZE_PIXELS = 200
local LABEL_HEIGHT = 15
local LABEL_TEXT_SIZE = 12
local DISCLAIMER_TEXT_SIZE = 12

local NAME_TEXT = "name"
local DESCRIPTION_TEXT = "description"
local INVALID_NAME_TEXT = "invalidName"
local INVALID_DESCRIPTION_TEXT = "invalidDescription"
local TITLE_TEXT = "title"
local DISCLAIMER_TEXT = "disclaimer"
local CANCEL_TEXT = "cancel"
local SUBMIT_TEXT = "submit"

local LayeredAssetTypes = {
	[Enum.AssetType.TShirtAccessory] = true,
	[Enum.AssetType.ShirtAccessory] = true,
	[Enum.AssetType.PantsAccessory] = true,
	[Enum.AssetType.JacketAccessory] = true,
	[Enum.AssetType.SweaterAccessory] = true,
	[Enum.AssetType.ShortsAccessory] = true,
	[Enum.AssetType.LeftShoeAccessory] = true,
	[Enum.AssetType.RightShoeAccessory] = true,
	[Enum.AssetType.DressSkirtAccessory] = true,
	[Enum.AssetType.HairAccessory] = true,
}

local PublishAssetPromptSingleStep = Roact.PureComponent:extend("PublishAssetPromptSingleStep")

PublishAssetPromptSingleStep.validateProps = t.strictInterface({
	screenSize = t.Vector2,

	-- Mapped state
	assetInstance = t.Instance, -- The type of this parameter will change depending on what asset type we're publishing.
	assetType = t.enum(Enum.AssetType),
	guid = t.any,
	scopes = t.any,

	-- Mapped dispatch functions
	closePrompt = t.callback,
})

function PublishAssetPromptSingleStep:init()
	self.closePrompt = function()
		self.props.closePrompt()
	end

	self.confirmAndUpload = function()
		local metadata = {}
		metadata["assetName"] = self.assetName
		metadata["assetDescription"] = self.assetDescription

		-- We should never get to this point if this engine feature is off (see ConnectAssetServiceEvents.lua), but just in case:
		if game:GetEngineFeature("ExperienceAuthReflectionFixes") then
			ExperienceAuthService:ScopeCheckUIComplete(
				self.props.guid,
				self.props.scopes,
				Enum.ScopeCheckResult.ConsentAccepted,
				metadata
			)
			self.closePrompt()
		end
	end

	self.onAssetNameUpdated = function(newName, isNameInvalid)
		if not isNameInvalid then
			self.assetName = newName
		end
	end

	self.onAssetDescriptionUpdated = function(newDescription)
		self.assetDescription = newDescription
	end

	self.nameTextBoxRef = Roact.createRef()
	self.descriptionTextBoxRef = Roact.createRef()
end

function PublishAssetPromptSingleStep:renderMiddle(localized)
	return withStyle(function(style)
		local font = style.Font
		local theme = style.Theme

		return Roact.createElement(RoactGamepad.Focusable.Frame, {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 150),
			defaultChild = self.nameTextBoxRef,
			[Roact.Ref] = self.middleContentRef,
		}, {
			UISizeConstraint = Roact.createElement("UISizeConstraint", {
				MinSize = Vector2.new(MINIMUM_MIDDLE_SIZE_PIXELS, MINIMUM_MIDDLE_SIZE_PIXELS),
			}),
			TopSection = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, -DISCLAIMER_HEIGHT_PIXELS),
				BackgroundTransparency = 1,
			}, {
				-- Create a parent frame so that ObjectViewport can use UIAspectRatioConstraint
				-- to resize the Viewport to be the largest possible square.
				ViewportParent = Roact.createElement("Frame", {
					Size = UDim2.new(VIEWPORT_WIDTH_PERCENT, 0, 1, 0),
					BackgroundTransparency = 1,
				}, {
					ObjectViewport = Roact.createElement(ObjectViewport, {
						model = self.props.assetInstance,
					}),
				}),

				NameDescriptionFields = Roact.createElement("Frame", {
					Size = UDim2.new(INPUT_FIELDS_WIDTH_PERCENT, -10, 1, 0),
					AnchorPoint = Vector2.new(1, 0),
					Position = UDim2.fromScale(1, 0),
					BackgroundTransparency = 1,
				}, {
					NameLabel = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 0, LABEL_HEIGHT),
						Font = font.Body.Font,
						Text = localized[NAME_TEXT],
						TextSize = LABEL_TEXT_SIZE,
						TextColor3 = theme.TextDefault.Color,
						BackgroundTransparency = 1,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
					NameInput = Roact.createElement(AssetNameTextBox, {
						Size = UDim2.new(1, 0, 0, 30),
						Position = UDim2.new(0, 0, 0, LABEL_HEIGHT),
						onAssetNameUpdated = self.onAssetNameUpdated,
						nameTextBoxRef = self.nameTextBoxRef,
						NextSelectionDown = self.descriptionTextBoxRef,
					}),

					DescriptionLabel = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 0, LABEL_HEIGHT),
						Position = UDim2.new(0, 0, 0, 60),
						Font = font.Body.Font,
						TextSize = LABEL_TEXT_SIZE,
						Text = localized[DESCRIPTION_TEXT],
						TextColor3 = theme.TextDefault.Color,
						BackgroundTransparency = 1,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
					DescriptionInput = Roact.createElement(AssetDescriptionTextBox, {
						Size = UDim2.new(1, 0, 0, 80),
						Position = UDim2.new(0, 0, 0, 60 + LABEL_HEIGHT),
						onAssetDescriptionUpdated = self.onAssetDescriptionUpdated,
						descriptionTextBoxRef = self.descriptionTextBoxRef,
						NextSelectionUp = self.nameTextBoxRef,
					}),
				}),
			}),
			Disclaimer = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, DISCLAIMER_HEIGHT_PIXELS),
				Text = localized[DISCLAIMER_TEXT],
				Font = font.Body.Font,
				TextSize = DISCLAIMER_TEXT_SIZE,
				TextColor3 = theme.TextEmphasis.Color,
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.fromScale(0, 1),
				TextWrapped = true,
			}),
		})
	end)
end

function PublishAssetPromptSingleStep:renderAlertLocalized(localized)
	return Roact.createElement(InteractiveAlert, {
		title = localized[TITLE_TEXT],
		buttonStackInfo = {
			buttons = {
				{
					props = {
						onActivated = self.closePrompt,
						text = localized[CANCEL_TEXT],
					},
					isDefaultChild = true,
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = self.confirmAndUpload,
						text = localized[SUBMIT_TEXT],
					},
					isDefaultChild = false,
				},
			},
		},
		middleContent = function()
			return self:renderMiddle(localized)
		end,
		screenSize = self.props.screenSize,
		defaultChildRef = self.props.defaultChildRef,
		isMiddleContentFocusable = true,
	})
end

local function IsLayeredClothingType(assetType)
	if LayeredAssetTypes[assetType] == true then
		return true
	end

	return false
end

local function GetLocalizedStringsForAssetType(assetType)
	local strings = {}
	strings[NAME_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.Name")
	strings[DESCRIPTION_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.Description")
	strings[INVALID_NAME_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.InvalidName")
	strings[INVALID_DESCRIPTION_TEXT] =
		RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.InvalidDescription")
	strings[CANCEL_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.Cancel")
	strings[SUBMIT_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.Submit")

	local isLayeredClothingAssetType = IsLayeredClothingType(assetType)

	if isLayeredClothingAssetType then
		strings[TITLE_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.TitleTextClothing")
		strings[DISCLAIMER_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.DisclaimerAvatar")
	elseif assetType == Enum.AssetType.EmoteAnimation then
		strings[TITLE_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.TitleTextEmote")
		strings[DISCLAIMER_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.DisclaimerEmote")
	elseif assetType == Enum.AssetType.Model then
		strings[TITLE_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.TitleTextModel")
		strings[DISCLAIMER_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.DisclaimerModel")
	elseif assetType == Enum.AssetType.Package then
		strings[TITLE_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.TitleTextPackage")
		strings[DISCLAIMER_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.DisclaimerModel")
	end

	return strings
end

function PublishAssetPromptSingleStep:render()
	local localized = GetLocalizedStringsForAssetType(self.props.assetType)
	return self:renderAlertLocalized(localized)
end

local function mapStateToProps(state)
	return {
		assetInstance = state.promptRequest.promptInfo.assetInstance,
		assetType = state.promptRequest.promptInfo.assetType,
		guid = state.promptRequest.promptInfo.guid,
		scopes = state.promptRequest.promptInfo.scopes,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closePrompt = function()
			return dispatch(CloseOpenPrompt())
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PublishAssetPromptSingleStep)
