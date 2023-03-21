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

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local UIBlox = require(CorePackages.UIBlox)
local withStyle = UIBlox.Style.withStyle
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local AssetNameTextBox = require(script.Parent.AssetNameTextBox)
local AssetDescriptionTextBox = require(script.Parent.AssetDescriptionTextBox)
local ObjectViewport = require(script.Parent.ObjectViewport)

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
	model = t.instanceOf("Model"), -- All things we want to publish can be wrapped in a Model
	assetType = t.enum(Enum.AssetType),
})

function PublishAssetPromptSingleStep:init()
	self.closePrompt = function() end

	self.confirmAndUpload = function()
		self.closePrompt()
	end

	self.onAssetNameUpdated = function(newName)
		self.assetName = newName
	end

	self.onAssetDescriptionUpdated = function(newDescription)
		self.assetDescription = newDescription
	end
end

function PublishAssetPromptSingleStep:renderMiddle(localized)
	return withStyle(function(style)
		local font = style.Font
		local theme = style.Theme

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 150),

			[Roact.Ref] = self.middleContentRef,
		}, {
			UISizeConstraint = Roact.createElement("UISizeConstraint", {
				MinSize = Vector2.new(MINIMUM_MIDDLE_SIZE_PIXELS, MINIMUM_MIDDLE_SIZE_PIXELS),
			}),
			TopSection = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, -DISCLAIMER_HEIGHT_PIXELS),
				BackgroundTransparency = 1,
			}, {
				-- Parent frame so that ObjectViewport can use UIAspectRatioConstraint
				-- to size the Viewport to be the largest possible square.
				ViewportParent = Roact.createElement("Frame", {
					Size = UDim2.new(VIEWPORT_WIDTH_PERCENT, 0, 1, 0),
					BackgroundTransparency = 1,
				}, {
					ObjectViewport = Roact.createElement(ObjectViewport, {
						model = self.props.model,
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
						BackgroundTransparency = 1,
						onAssetNameUpdated = self.onAssetNameUpdated,
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
						BackgroundTransparency = 1,
						onAssetDescriptionUpdated = self.onAssetDescriptionUpdated,
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
		screenSize = Vector2.new(400, 400), -- TODO nkyger: use actual screen size
		defaultChildRef = self.props.defaultChildRef,
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

PublishAssetPromptSingleStep = RoactRodux.connect(function(state, props)
	return {
		screenSize = state.ScreenSize,
	}
end, function(dispatch)
	return {
		submitAsset = function()
			-- TODO: publish asset
		end,
	}
end)(PublishAssetPromptSingleStep)

return PublishAssetPromptSingleStep
