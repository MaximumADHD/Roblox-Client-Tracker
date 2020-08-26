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

local UploadableIconWidget = require(Plugin.Src.Components.UploadableIcon.UploadableIconWidget)

local WarningDialog = require(Plugin.Src.Components.Dialog.WarningDialog)
local Dialog = require(Plugin.Src.ContextServices.Dialog)

local DeveloperSubscriptionListItemText = require(script.Parent.DeveloperSubscriptionListItemText)
local Header = require(Plugin.Src.Components.Header)
local HeaderWithButton = require(script.Parent.HeaderWithButton)
local BackButton = require(Plugin.Src.Components.BackButton)

local RoundTextBox = require(Plugin.RoactStudioWidgets.RoundTextBox)

local ContextServices = require(Plugin.Framework.ContextServices)

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
		local localization = self.props.Localization
		local image = FileUtils.PromptForGameIcon(self, localization)

		if image then
			self.onImageChanged(image)
		end
	end

	function self.onDiscontinueClicked()
		if self.props.DeveloperSubscription.IsNew then
			self.props.OnDevSubDiscontinued(self.props.DeveloperSubscription)
			self.onBackButtonActivated()
		else
			local localization = self.props.Localization
			local dialog = self.props.Dialog

			local dialogProps = {
				Title = localization:getText("General", "DevSubsDiscontinueTitle"),
				Header = localization:getText("General", "DevSubsDiscontinueHeader"),
				Description = localization:getText("General", "DevSubsDiscontinueDescription"),
				Buttons = {
					localization:getText("General", "ButtonCancel"),
					localization:getText("General", "DevSubsDiscontinueConfirm"),
				}
			}
			local didDiscontinue = dialog.showDialog(WarningDialog, dialogProps):await()

			if didDiscontinue then
				self.props.OnDevSubDiscontinued(self.props.DeveloperSubscription)
			end
		end
	end
end

function DeveloperSubscriptionDetails:render()
	local developerSubscription = self.props.DeveloperSubscription
	local moderatedDevSub = self.props.ModeratedDevSub
	local devSubErrors = self.props.DevSubErrors
	local theme = self.props.Theme:get("Plugin")
	local localization = self.props.Localization

	local canEdit = developerSubscription.IsNew or developerSubscription.Active

	local nameError = nil
	local descError = nil
	local priceError = nil
	local imageError = nil
	if canEdit then
		if devSubErrors.Name then
			if devSubErrors.Name.Empty then
				nameError = localization:getText("General", "ErrorNameEmpty")
			elseif devSubErrors.Name.Moderated and moderatedDevSub then
				nameError = localization:getText("General", "ErrorDevSubFiltered", {
					filteredText = moderatedDevSub.filteredName,
				})
				if moderatedDevSub.filteredDescription then
					descError = localization:getText("General", "ErrorDevSubFiltered", {
						filteredText = moderatedDevSub.filteredDescription,
					})
				end
			end
		end

		if developerSubscription.IsNew and devSubErrors.Price then
			if devSubErrors.Price.NotANumber then
				priceError = localization:getText("General", "ErrorDevSubInvalidPrice")
			elseif FVariableMaxRobuxPrice and devSubErrors.Price.AboveMaxRobuxAmount then
				priceError = localization:getText("General", "ErrorDevSubMaxPrice", {
					maxRobuxAmount = FVariableMaxRobuxPrice,
				})
			end
		end

		if devSubErrors.Image then
			imageError = localization:getText("General", "ErrorImageRequired")
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
			Title = developerSubscription.IsNew and localization:getText("General", "DevSubsNewHeader") or localization:getText("General", "DevSubsEditHeader"),
			LayoutOrder = 0,

			Active = true,
			ButtonText = developerSubscription.IsNew and localization:getText("General", "DevSubsDeleteAction") or localization:getText("General", "DevSubsDiscontinueAction"),
			OnClicked = self.onDiscontinueClicked,
			Style = theme.cancelButton,
		}) or Roact.createElement(Header, {
			Title = localization:getText("General", "DevSubsDiscontinuedHeader"),
			LayoutOrder = 0,
		}),

		NameFrame = Roact.createElement(TitledFrame, {
			Title = localization:getText("General", "DevSubsName"),
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
			Title = localization:getText("General", "DevSubsDescription"),
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

		Image = canEdit and Roact.createElement(UploadableIconWidget, {
			Title = localization:getText("General", "DevSubsImage"),
			Enabled = true,
			Icon = developerSubscription.Image,
			LayoutOrder = 3,
			TutorialEnabled = false,
			ErrorMessage = imageError,

			AddIcon = self.setImage,
		}) or Roact.createElement(TitledFrame, {
			Title = localization:getText("General", "DevSubsImage"),
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
			Title = localization:getText("General", "DevSubsPrice"),
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
			Title = localization:getText("General", "DevSubsDuration"),
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

ContextServices.mapToProps(DeveloperSubscriptionDetails,{
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
	Dialog = Dialog,
})

return DeveloperSubscriptionDetails