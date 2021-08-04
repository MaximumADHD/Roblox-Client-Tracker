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
local FFlagGameSettingsWithContext = game:GetFastFlag("GameSettingsWithContext")

local StudioService = game:GetService("StudioService")

local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local FileUtils = require(Plugin.Src.Util.FileUtils)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local DeepMergeTables = require(Plugin.Src.Util.DeepMergeTables)
local Cryo = require(Plugin.Cryo)
local RoactRodux = require(Plugin.RoactRodux)
local Roact = require(Plugin.Roact)
local UILibrary = require(Plugin.UILibrary)

local UploadableIconWidget = require(Plugin.Src.Components.UploadableIcon.UploadableIconWidget)

local WarningDialog = require(Plugin.Src.Components.Dialog.WarningDialog)
local Dialog = require(Plugin.Src.ContextServices.Dialog)
local DevSubListItemText = require(script.Parent.DevSubListItemText)
local Dropdown = require(Plugin.Src.Components.Dropdown)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddDevSubKeyChange = require(Page.Thunks.AddDevSubKeyChange)
local DevSubModeration = require(Page.Thunks.DevSubModeration)

local RoundTextButton = UILibrary.Component.RoundTextButton
local GetTextSize = UILibrary.Util.GetTextSize
local TitledFrame = UILibrary.Component.TitledFrame
local createFitToContent = UILibrary.Component.createFitToContent

local RoundTextBox = require(Plugin.RoactStudioWidgets.RoundTextBox)

local Framework = Plugin.Framework
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local FrameworkUI = require(Framework.UI)
local HoverArea = FrameworkUI.HoverArea
local Separator = FrameworkUI.Separator

local FrameworkUtil = require(Framework.Util)
local FitFrameOnAxis = FrameworkUtil.FitFrame.FitFrameOnAxis
local LayoutOrderIterator = FrameworkUtil.LayoutOrderIterator

local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, DEPRECATED_Constants.ELEMENT_PADDING),
})

local PRICE_ICON_PADDING = 8

local DeveloperSubscriptionDetails = Roact.Component:extend("DeveloperSubscriptionDetails")

local FVariableMaxRobuxPrice = game:DefineFastInt("DeveloperSubscriptionsMaxRobuxPrice", 2000)

function DeveloperSubscriptionDetails:init()
	self.state = {
		isNameDirty = false,
	}

	function self.CheckName()
		if not self.state.isNameDirty then
			return
		end

		self.props.ModerateDevSub(self.props.DeveloperSubscription)
	end

	function self.onKeyChanged(key, value)
		local devSub = self.props.DeveloperSubscription
		self.props.SetDevSubKey(devSub.Key, key, value)
		devSub[key] = value
		self.props.OnDeveloperSubscriptionChanged(devSub)
	end

	function self.onNameChanged(name)
		self.onKeyChanged("Name", name)

		if not self.state.isNameDirty then
			self:setState{isNameDirty = true}
		end
	end

	function self.onNameFocusChanged(focused, pressedEnter)
		if not focused then
			self.CheckName()
		end
	end

	function self.onPriceChanged(price)
		self.onKeyChanged("Price", price)
	end

	function self.onImageChanged(image)
		self.onKeyChanged("Image", image)
	end

	function self.onPrepaidChanged(prepaid)
		self.onKeyChanged("Prepaid", prepaid)
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

	function self.onDeleteClicked()
		if self.props.DeveloperSubscription.IsNew then
			self.props.OnDevSubDeleted(self.props.DeveloperSubscription)
			self.onBackButtonActivated()
		else
			local localization = self.props.Localization
			local dialog = self.props.Dialog

			local dialogProps = {
				Title = localization:getText("General", "DevSubsDeleteTitle"),
				Header = localization:getText("General", "DevSubsDeleteHeader"),
				Description = localization:getText("General", "DevSubsDeleteDescription"),
				Buttons = {
					localization:getText("General", "ButtonCancel"),
					localization:getText("General", "DevSubsDeleteConfirm"),
				}
			}
			local didDelete = dialog.showDialog(WarningDialog, dialogProps):await()

			if didDelete then
				self.props.OnDevSubDeleted(self.props.DeveloperSubscription)
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
	local isNew = developerSubscription.IsNew
	local layoutIndex = LayoutOrderIterator.new()

	local nameError = nil
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

	local prepaidEntries = {
		{
			Id = 6,
			Title = localization:getText("General", "DevSubsDuration6Months"),
		},  {
			Id = 12,
			Title = localization:getText("General", "DevSubsDuration12Months"),
		},
	}

	local idTextSize = GetTextSize(developerSubscription.Id, theme.fontStyle.Normal.TextSize, theme.fontStyle.Normal.Font)
	local priceIconSize = theme.fontStyle.Normal.TextSize

	return Roact.createElement(FitToContent, {
		BackgroundTransparency = 1,
	}, {
		HeaderFrame = Roact.createElement(FitFrameOnAxis, {
			LayoutOrder = layoutIndex:getNextOrder(),
			BackgroundTransparency = 1,
			axis = FitFrameOnAxis.Axis.Vertical,
			minimumSize = UDim2.new(1, 0, 0, 0),
			contentPadding = UDim.new(0, theme.settingsPage.headerPadding),
		}, {
			BackButton = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, theme.backButton.size, 0, theme.backButton.size),
				LayoutOrder = 0,
				Image = theme.backButton.image,
				BackgroundTransparency = 1,
				[Roact.Event.Activated] = function()
					self.onBackButtonActivated()
				end,
			}, {
				Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
			}),

			Roact.createElement(Separator, {
				LayoutOrder = 1,
			}),

			Header = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Title, {
				Size = UDim2.new(1, 0, 0, DEPRECATED_Constants.HEADER_HEIGHT),
				Text = developerSubscription.IsNew and localization:getText("General", "DevSubsNewHeader") or localization:getText("General", "DevSubsEditHeader"),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				LayoutOrder = 2,
			}), {
				Padding = Roact.createElement("UIPadding", {
					PaddingRight = UDim.new(0, 12)
				}),

				Layout = Roact.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					VerticalAlignment = Enum.VerticalAlignment.Bottom,
				}),

				Button = Roact.createElement(RoundTextButton, Cryo.Dictionary.join(theme.fontStyle.Normal, {
					Active = true,
					Name = localization:getText("General", "DevSubsDeleteAction"),
					OnClicked = self.onDeleteClicked,
					Style = theme.cancelButton,
				})),
			}),
		}),

		IdFrame = not isNew and Roact.createElement(TitledFrame, {
			Title = localization:getText("General", "DevSubsId"),
			LayoutOrder = layoutIndex:getNextOrder(),
			MaxHeight = 42,
			TextSize = theme.fontStyle.Normal.TextSize,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Top,
			}),

			Text = Roact.createElement(DevSubListItemText, {
				Text = developerSubscription.Id,
				Size = UDim2.new(0, idTextSize.X, 0.5, 0),
				Alignment = Enum.TextXAlignment.Left,
				LayoutOrder = 1,
			}),

			Button = Roact.createElement("ImageButton", {
				BackgroundTransparency = 1,
				Image = theme.copyButton.image,
				ImageColor3 = theme.copyButton.imageColor,
				Size = UDim2.new(0, 16, 0, 16),
				SizeConstraint = Enum.SizeConstraint.RelativeYY,
				LayoutOrder = 2,
				[Roact.Event.Activated] = function()
					StudioService:CopyToClipboard(developerSubscription.Id)
				end,
			}),
		}),

		NameFrame = Roact.createElement(TitledFrame, {
			Title = localization:getText("General", "DevSubsName"),
			LayoutOrder = layoutIndex:getNextOrder(),
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

		Image = canEdit and Roact.createElement(UploadableIconWidget, {
			Title = localization:getText("General", "DevSubsImage"),
			Enabled = true,
			Icon = developerSubscription.Image,
			LayoutOrder = layoutIndex:getNextOrder(),
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
			LayoutOrder = layoutIndex:getNextOrder(),
			MaxHeight = 64,
			TextSize = theme.fontStyle.Normal.TextSize,
		}, {
			Icon = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, priceIconSize, 0, priceIconSize),
				Image = theme.robuxFeeBase.icon.image,
				ImageColor3 = Color3.fromRGB(25, 25, 25),

				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(0, -PRICE_ICON_PADDING, 0, 0.5 * DEPRECATED_Constants.ROUND_TEXT_BOX_DEFAULT_HEIGHT),
			}),

			NumberBoxFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -(priceIconSize + PRICE_ICON_PADDING), 0, DEPRECATED_Constants.ROUND_TEXT_BOX_DEFAULT_HEIGHT),
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

		PrepaidFrame = Roact.createElement(TitledFrame, {
			Title = localization:getText("General", "DevSubsDuration"),
			LayoutOrder = layoutIndex:getNextOrder(),
			MaxHeight = 42,
			TextSize = theme.fontStyle.Normal.TextSize,
		}, {
			Selector = Roact.createElement(Dropdown, {
				Entries = prepaidEntries,
				Enabled = developerSubscription.Prepaid ~= nil,
				Current = developerSubscription.Prepaid,
				CurrentChanged = self.onPrepaidChanged,
			}),
		}),

		EarningFrame = not isNew and Roact.createElement(TitledFrame, {
			Title = localization:getText("General", "DevSubsPendingEarning"),
			LayoutOrder = layoutIndex:getNextOrder(),
			MaxHeight = 42,
			TextSize = theme.fontStyle.Normal.TextSize,
		}, {
			Text = Roact.createElement(DevSubListItemText, {
				Text = tostring(developerSubscription.PendingEarning),
				Size = UDim2.new(1, 0, 0.5, 0),
				Alignment = Enum.TextXAlignment.Left,
			}),
		}),
	})
end

if FFlagGameSettingsWithContext then
	DeveloperSubscriptionDetails = withContext({
		Theme = ContextServices.Theme,
		Localization = ContextServices.Localization,
		Dialog = Dialog,
	})(DeveloperSubscriptionDetails)
else
	ContextServices.mapToProps(DeveloperSubscriptionDetails,{
		Theme = ContextServices.Theme,
		Localization = ContextServices.Localization,
		Dialog = Dialog,
	})
end


local settingFromState = require(Plugin.Src.Networking.settingFromState)
return RoactRodux.connect(
	function(state, props)
		local errors = state.Settings.Errors

		local currDevSubs = state.Settings.Current or {}
		currDevSubs = currDevSubs.DeveloperSubscriptions or {}

		local changedDevSubs = state.Settings.Changed or {}
		changedDevSubs = changedDevSubs.DeveloperSubscriptions or {}

		local getValue = function(propName)
            return settingFromState(state.Settings, propName)
		end

		local allDevSubs = DeepMergeTables.Merge(currDevSubs, changedDevSubs) or {}
		local editedSubscriptionKey = getValue("editedSubscriptionKey")
		local devSubsErrors = errors.DeveloperSubscriptions or {}

		return {
			DeveloperSubscription = allDevSubs[editedSubscriptionKey],
			ModeratedDevSubs = state.DevSubModeration or {},
			DevSubErrors = devSubsErrors[editedSubscriptionKey] or {},
		}
	end,
	function(dispatch)
		return {
			OnEditFinished = function()
				-- do stuff with the edited subscription?
				dispatch(AddChange("isEditingSubscription", false))
				dispatch(AddChange("editedSubscriptionKey", nil))
			end,

			OnDevSubDeleted = function(devSub)
				if not devSub.IsNew then
					dispatch(AddDevSubKeyChange(devSub.Key, "Active", false))
				end
			end,

			ModerateDevSub = function(devSub)
				dispatch(DevSubModeration(devSub))
			end,
		}
	end
)(DeveloperSubscriptionDetails)