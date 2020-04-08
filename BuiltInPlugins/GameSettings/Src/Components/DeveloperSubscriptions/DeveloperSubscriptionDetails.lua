--[[
	This component is created by the DeveloperSubscriptionWidget and displays
	the details for a specific developer subscription. It allows those details
	to be edited, and applies the changes live. Has a back button which allows
	the user to return to the list view.

	Props:
		table DeveloperSubscription = the developer subscription to display and edit
		func OnDeveloperSubscriptionValueChanged = function to call when this page changes
			a certain value of the developer subscription it's currently editing
		func OnEditFinished = function to call when this page wants to return to the
			list view, when the back button gets clicked
]]

local Plugin = script.Parent.Parent.Parent.Parent
local FileUtils = require(Plugin.Src.Util.FileUtils)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local Cryo = require(Plugin.Cryo)
local Roact = require(Plugin.Roact)
local UILibrary = require(Plugin.UILibrary)

local GameIconWidget = require(Plugin.Src.Components.GameIcon.GameIconWidget)

local showDialog = require(Plugin.Src.Consumers.showDialog)
local WarningDialog = require(Plugin.Src.Components.Dialog.WarningDialog)

local DeveloperSubscriptionsFolder = Plugin.Src.Components.DeveloperSubscriptions
local DeveloperSubscriptionListItemText = require(DeveloperSubscriptionsFolder.DeveloperSubscriptionListItemText)
local Header = require(Plugin.Src.Components.Header)
local HeaderWithButton = require(Plugin.Src.Components.HeaderWithButton)
local BackButton = require(Plugin.Src.Components.BackButton)

local withLocalization = require(Plugin.Src.Consumers.withLocalization)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local getLocalizedContent = require(Plugin.Src.Consumers.getLocalizedContent)

local RoundTextBox = require(Plugin.RoactStudioWidgets.RoundTextBox)

local TitledFrame = UILibrary.Component.TitledFrame

local createFitToContent = UILibrary.Component.createFitToContent

local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, DEPRECATED_Constants.ELEMENT_PADDING),
})

local PRICE_ICON_IMAGE = "rbxasset://textures/ui/RobuxIcon.png"
local PRICE_ICON_SIZE = 20
local PRICE_ICON_PADDING = 8

local DeveloperSubscriptionDetails = Roact.Component:extend("DeveloperSubscriptionDetails")

local FVariableMaxRobuxPrice = game:DefineFastInt("DeveloperSubscriptionsMaxRobuxPrice", 2000)

function DeveloperSubscriptionDetails:init()
	self.state = {
		isNameDirty = false,
		isDescDirty = false,
	}

	function self.CheckNameDesc()
		if not self.state.isNameDirty and not self.state.isDescDirty then
			return
		end

		self.props.ModerateDevSub(self.props.DeveloperSubscription)
	end

	function self.onKeyChanged(key, value)
		self.props.OnDeveloperSubscriptionValueChanged(self.props.DeveloperSubscription.Key, key, value)
	end

	function self.onNameChanged(name)
		self.onKeyChanged("Name", name)

		if not self.state.isNameDirty then
			self:setState{isNameDirty = true}
		end
	end

	function self.onNameFocusChanged(focused, pressedEnter)
		if not focused then
			self.CheckNameDesc()
		end
	end

	function self.onDescriptionChanged(description)
		self.onKeyChanged("Description", description)

		if not self.state.isDescDirty then
			self:setState{isDescDirty = true}
		end
	end

	function self.onDescFocusChanged(focused, pressedEnter)
		if not focused then
			self.CheckNameDesc()
		end
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
		if self.props.DeveloperSubscription.IsNew then
			self.props.OnDevSubDiscontinued(self.props.DeveloperSubscription)
            self.onBackButtonActivated()
        else
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
				self.props.OnDevSubDiscontinued(self.props.DeveloperSubscription)
			end
        end
	end
end

function DeveloperSubscriptionDetails:renderConsolidated(theme, localized)
	local developerSubscription = self.props.DeveloperSubscription
	local moderatedDevSub = self.props.ModeratedDevSub
	local devSubErrors = self.props.DevSubErrors

	local canEdit = developerSubscription.IsNew or developerSubscription.Active
	
	local nameError = nil
	local descError = nil
	local priceError = nil
	local imageError = nil
	if canEdit then
		if devSubErrors.Name then
			if devSubErrors.Name.Empty then
				nameError = localized.Errors.ErrorNameEmpty
			elseif devSubErrors.Name.Moderated and moderatedDevSub then
				nameError = localized.Errors.ErrorDevSubFiltered({
					filteredText = moderatedDevSub.filteredName,
				})
				if moderatedDevSub.filteredDescription then
					descError = localized.Errors.ErrorDevSubFiltered({
						filteredText = moderatedDevSub.filteredDescription,
					})
				end
			end
		end

		if developerSubscription.IsNew and devSubErrors.Price then
			if devSubErrors.Price.NotANumber then
				priceError = localized.Errors.ErrorDevSubInvalidPrice
			elseif FVariableMaxRobuxPrice and devSubErrors.Price.AboveMaxRobuxAmount then
				priceError = localized.Errors.ErrorDevSubMaxPrice({
					maxRobuxAmount = FVariableMaxRobuxPrice,
				})
			end
		end

		if devSubErrors.Image then
			imageError = localized.Errors.ErrorImageRequired
		end
	end

	return Roact.createElement(FitToContent, {
		BackgroundTransparency = 1,
	}, {
		BackButton = Roact.createElement(BackButton, {
			OnActivated = self.onBackButtonActivated,
			LayoutOrder = -1,
		}),

		Header = canEdit and Roact.createElement(HeaderWithButton, {
			Title = developerSubscription.IsNew and localized.DevSubs.NewHeader or localized.DevSubs.EditHeader,
			LayoutOrder = 0,

			Active = true,
			ButtonText = developerSubscription.IsNew and localized.DevSubs.DeleteAction or localized.DevSubs.DiscontinueAction,
			OnClicked = self.onDiscontinueClicked,
			Style = theme.cancelButton,
		}) or Roact.createElement(Header, {
			Title = localized.DevSubs.DiscontinuedHeader,
			LayoutOrder = 0,
		}),

		NameFrame = Roact.createElement(TitledFrame, {
			Title = localized.DevSubs.Name,
			LayoutOrder = 1,
			MaxHeight = 64,
			TextSize = theme.fontStyle.Normal.TextSize,
		}, {
			Roact.createElement(RoundTextBox, Cryo.Dictionary.join(theme.fontStyle.Normal, {
				Active = true,
				Enabled = canEdit,
				ShowTextWhenDisabled = true,
				MaxLength = 32,
				Multiline = false,
				Text = developerSubscription.Name or "",
				ErrorMessage = nameError,
				SetText = self.onNameChanged,
				FocusChanged = self.onNameFocusChanged,
			})),
		}),

		DescriptionFrame = Roact.createElement(TitledFrame, {
			Title = localized.DevSubs.Description,
			LayoutOrder = 2,
			MaxHeight = 160,
			TextSize = theme.fontStyle.Normal.TextSize,
		}, {
			Roact.createElement(RoundTextBox, Cryo.Dictionary.join(theme.fontStyle.Normal, {
				Active = true,
				Enabled = canEdit,
				ShowTextWhenDisabled = true,
				Height = 128,
				MaxLength = 256,
				Multiline = true,
				Text = developerSubscription.Description or "",
				ErrorMessage = descError,
				SetText = self.onDescriptionChanged,
				FocusChanged = self.onDescFocusChanged,
			})),
		}),

		Image = canEdit and Roact.createElement(GameIconWidget, {
			Title = localized.DevSubs.Image,
			Enabled = true,
			Icon = developerSubscription.Image,
			LayoutOrder = 3,
			TutorialEnabled = false,
			ErrorMessage = imageError,

			AddIcon = self.setImage,
		}) or Roact.createElement(TitledFrame, {
			Title = localized.DevSubs.Image,
			MaxHeight = 150,
			LayoutOrder = 3,
			TextSize = theme.fontStyle.Normal.TextSize,
		}, {
			Image = Roact.createElement("ImageLabel", {
				Image = developerSubscription.Image,
				Size = UDim2.new(0, 150, 0, 150),
			}),
		}),

		PriceFrame = Roact.createElement(TitledFrame, {
			Title = localized.DevSubs.Price,
			LayoutOrder = 4,
			MaxHeight = DEPRECATED_Constants.ROUND_TEXT_BOX_DEFAULT_HEIGHT,
			TextSize = theme.fontStyle.Normal.TextSize,
		}, {
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
				Size = UDim2.new(1, -(PRICE_ICON_SIZE + PRICE_ICON_PADDING), 0, DEPRECATED_Constants.ROUND_TEXT_BOX_DEFAULT_HEIGHT),
			}, {
				NumberBox = Roact.createElement(RoundTextBox, {
					Enabled = developerSubscription.IsNew,
					ShowTextWhenDisabled = true,
					ShowToolTip = false,
					MaxLength = 50000,
					Text = tostring(developerSubscription.Price),
					ErrorMessage = priceError,
					SetText = self.onPriceChanged,
				})
			}),
		}),

		DurationFrame = Roact.createElement(TitledFrame, {
			Title = localized.DevSubs.Duration,
			LayoutOrder = 5,
			MaxHeight = 42,
			TextSize = theme.fontStyle.Normal.TextSize,
		}, {
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