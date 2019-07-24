--[[
	This component is created by the DeveloperSubscriptionWidget and displays
	the details for a specific developer subscription. It allows those details
	to be edited, and applies the changes live. Has a back button which allows
	the user to return to the list view.

	Props:
		table DeveloperSubscription = the developer subscription to display and edit
		func OnDeveloperSubscriptionChanged = function to call when this page changes
			the developer subscription it's currently editing, passes the edited version
		func OnEditFinished = function to call when this page wants to return to the
			list view, when the back button gets clicked
]]

local Plugin = script.Parent.Parent.Parent.Parent
local FileUtils = require(Plugin.Src.Util.FileUtils)
local Constants = require(Plugin.Src.Util.Constants)
local Cryo = require(Plugin.Cryo)
local Roact = require(Plugin.Roact)

local RoundNumberBox = require(Plugin.Src.Components.RoundNumberBox)
local GameIconWidget = require(Plugin.Src.Components.GameIcon.GameIconWidget)

local showDialog = require(Plugin.Src.Consumers.showDialog)
local WarningDialog = require(Plugin.Src.Components.Dialog.WarningDialog)

local DeveloperSubscriptionsFolder = Plugin.Src.Components.DeveloperSubscriptions
local DeveloperSubscriptionListItemText = require(DeveloperSubscriptionsFolder.DeveloperSubscriptionListItemText)
local HeaderWithButton = require(Plugin.Src.Components.HeaderWithButton)
local BackButton = require(Plugin.Src.Components.BackButton)

local withLocalization = require(Plugin.Src.Consumers.withLocalization)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local getLocalizedContent = require(Plugin.Src.Consumers.getLocalizedContent)

local TitledFrame = require(Plugin.UILibrary.Components.TitledFrame)
local RoundTextBox = require(Plugin.UILibrary.Components.RoundTextBox)
local RoundTextButton = require(Plugin.UILibrary.Components.RoundTextButton)

local createFitToContent
if settings():GetFFlag("StudioGameSettingsUseUILibraryComponents") then
	createFitToContent = require(Plugin.UILibrary.Components.createFitToContent)
else
	createFitToContent = require(Plugin.Src.Components.createFitToContent)
end
local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, Constants.ELEMENT_PADDING),
})

local PRICE_ICON_IMAGE = "rbxasset://textures/ui/RobuxIcon.png"
local PRICE_ICON_SIZE = 20
local PRICE_ICON_PADDING = 8

local DeveloperSubscriptionDetails = Roact.Component:extend("DeveloperSubscriptionDetails")

function DeveloperSubscriptionDetails:init()
	function self.onKeyChanged(key, value)
		local newDeveloperSubscription = Cryo.Dictionary.join(self.props.DeveloperSubscription, {
			[key] = value,
		})
		self.props.OnDeveloperSubscriptionChanged(newDeveloperSubscription)
	end

	function self.onNameChanged(name)
		self.onKeyChanged("Name", name)
	end

	function self.onDescriptionChanged(description)
		self.onKeyChanged("Description", description)
	end

	function self.onPriceChanged(price)
		self.onKeyChanged("Price", price)
	end

	function self.onImageChanged(image)
		self.onKeyChanged("Image", image)
	end

	function self.onBackButtonActivated()
		self.props.OnEditFinished(false)
	end

	function self.setImage()
		local image = FileUtils.PromptForGameIcon(self)

		if image then
			self.onImageChanged(image)
		end
	end

	function self.onDiscontinueClicked()
		local localized = getLocalizedContent(self)

		local dialogProps = {
			Title = localized.DevSubs.DiscontinueTitle,
			Header = localized.DevSubs.DiscontinueHeader,
			Description = localized.DevSubs.DiscontinueDescription,
			Buttons = {
				localized.DevSubs.DiscontinueCancel,
				localized.DevSubs.DiscontinueConfirm,
			}
		}
		local didDiscontinue = showDialog(self, WarningDialog, dialogProps):await()

		if didDiscontinue then
			-- TODO(dnurkkala): discontinue stuff
		else
			-- TODO(dnurkkala): don't... discontinue stuff... I guess?
		end
	end
end

function DeveloperSubscriptionDetails:renderConsolidated(theme, localized)
	local props = self.props

	local developerSubscription = props.DeveloperSubscription

	return Roact.createElement(FitToContent, {
		BackgroundTransparency = 1,
	}, {
		BackButton = Roact.createElement(BackButton, {
			OnActivated = self.onBackButtonActivated,
			LayoutOrder = -1,
		}),

		Header = Roact.createElement(HeaderWithButton, {
			Title = localized.DevSubs.EditHeader,
			LayoutOrder = 0,

			Active = true,
			ButtonText = localized.DevSubs.DiscontinueAction,
			OnClicked = self.onDiscontinueClicked,
			Style = theme.cancelButton,
		}),

		NameFrame = Roact.createElement(TitledFrame, Cryo.Dictionary.join(theme.fontStyle.Normal, {
			Title = localized.DevSubs.Name,
			LayoutOrder = 1,
			MaxHeight = 64,
		}), {
			Roact.createElement(RoundTextBox, Cryo.Dictionary.join(theme.fontStyle.Normal, {
				Active = true,
				MaxLength = 32,
				Multiline = false,
				Text = developerSubscription.Name,

				SetText = self.onNameChanged,
			}))
		}),

		DescriptionFrame = Roact.createElement(TitledFrame, Cryo.Dictionary.join(theme.fontStyle.Normal, {
			Title = localized.DevSubs.Description,
			LayoutOrder = 2,
			MaxHeight = 160,
		}), {
			Roact.createElement(RoundTextBox, Cryo.Dictionary.join(theme.fontStyle.Normal, {
				Active = true,
				Height = 128,
				MaxLength = 256,
				Multiline = true,
				Text = developerSubscription.Description or "",

				SetText = self.onDescriptionChanged,
			}))
		}),

		ImageWidget = Roact.createElement(GameIconWidget, {
			Title = localized.DevSubs.Image,
			Enabled = developerSubscription.Image ~= nil,
			Icon = developerSubscription.Image,
			LayoutOrder = 3,
			TutorialEnabled = false,

			AddIcon = self.setImage,
		}),

		PriceFrame = Roact.createElement(TitledFrame, Cryo.Dictionary.join(theme.fontStyle.Normal, {
			Title = localized.DevSubs.Price,
			LayoutOrder = 4,
			MaxHeight = Constants.ROUND_TEXT_BOX_DEFAULT_HEIGHT,
		}), {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, PRICE_ICON_PADDING)
			}),

			Icon = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, PRICE_ICON_SIZE, 0, PRICE_ICON_SIZE),
				Image = PRICE_ICON_IMAGE,
			}),

			NumberBoxFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -(PRICE_ICON_SIZE + PRICE_ICON_PADDING), 0, Constants.ROUND_TEXT_BOX_DEFAULT_HEIGHT),
			}, {
				NumberBox = Roact.createElement(RoundNumberBox, {
					Active = true,
					Number = developerSubscription.Price,

					SetNumber = self.onPriceChanged,
				})
			}),
		}),

		DurationFrame = Roact.createElement(TitledFrame, Cryo.Dictionary.join(theme.fontStyle.Normal, {
			Title = localized.DevSubs.Duration,
			LayoutOrder = 5,
			MaxHeight = 42,
		}), {
			Text = Roact.createElement(DeveloperSubscriptionListItemText, {
				Text = "1 Month",
				Size = UDim2.new(1, 0, 1, 0),
				Alignment = Enum.TextXAlignment.Left,
			}),
		}),
	})
end

function DeveloperSubscriptionDetails:render()
	return withTheme(function(theme)
		return withLocalization(function(localized)
			return self:renderConsolidated(theme, localized)
		end)
	end)
end

return DeveloperSubscriptionDetails