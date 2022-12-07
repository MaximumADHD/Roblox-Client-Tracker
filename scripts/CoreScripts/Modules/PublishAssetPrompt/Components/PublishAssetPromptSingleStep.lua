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

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)

local UIBlox = require(CorePackages.UIBlox)
local withStyle = UIBlox.Style.withStyle
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType

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
end

function PublishAssetPromptSingleStep:renderMiddle(localized)
	return withStyle(function(styles)
		return Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
		}) -- TODO: add child components to fill in middle section
	end)
end

function PublishAssetPromptSingleStep:renderAlertLocalized(localized)
	return Roact.createElement(InteractiveAlert, {
		title = localized.titleText,
		bodyText = localized.messageText,
		buttonStackInfo = {
			buttons = {
				{
					props = {
						onActivated = self.closePrompt,
						text = localized.cancelButtonText,
					},
					isDefaultChild = true,
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = self.confirmAndUpload,
						text = localized.submitButtonText,
					},
					isDefaultChild = false,
				},
			},
		},
		middleContent = function()
			return self:renderMiddle(localized)
		end,
		screenSize = Vector2.new(300, 300),
		defaultChildRef = self.props.defaultChildRef,
	})
end

function PublishAssetPromptSingleStep:render()
	local localized = {
		-- TODO: localize using different strings based on AssetType
		-- EG: titleText = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.TitleTextClothing"),
		titleText = "Submit Clothing",
		disclaimerText = "I agree that this experience will submit my avatar item to moderation and upload to My Creations.",
		nameText = "Name",
		descriptionText = "Description",
		submitButtonText = "Submit",
		cancelButtonText = "Cancel",
	}

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
