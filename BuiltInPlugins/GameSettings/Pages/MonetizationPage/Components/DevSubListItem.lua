--[[
	An item on the list of Developer Subscriptions, displaying an overview
	of details for a given subscription. Includes a button for copying
	the id of a subscription and for editing one.
	Props:
		int Height = how tall is this list item in pixels?
		int LayoutOrder = display order in the list
		string Name = the name of the sub
		int Subscribers = the number of people subscribing to the sub
		bool Active = whether or not this subscription is active
			(accepting recurring payments)
		int Id = the identification number for this subscription
		func OnEditButtonActivated = what to call when the edit
			button gets pressed
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Page = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local numberWithCommas = require(Page.Util.numberWithCommas)

local DevSubListItemText = require(script.Parent.DevSubListItemText)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local FrameworkUtil = Framework.Util
local FitTextLabel = FrameworkUtil.FitFrame.FitTextLabel
local LayoutOrderIterator = FrameworkUtil.LayoutOrderIterator
local UI = Framework.UI
local HoverArea = UI.HoverArea

local DeveloperSubscriptionListItem = Roact.Component:extend("DeveloperSubscriptionListItem")

function DeveloperSubscriptionListItem:render()
	local height = self.props.Height
	local layoutOrder = self.props.LayoutOrder

	local name = self.props.Name
	local subscribers = self.props.Subscribers
	local id = self.props.Id
	local date = self.props.CreationDate

	local onEditButtonActivated = self.props.OnEditButtonActivated

	local theme = self.props.Stylizer
	local localization = self.props.Localization

	local layoutIndex = LayoutOrderIterator.new()

	return Roact.createElement("ImageLabel", {
		Size = UDim2.new(1, 0, 0, height),
		LayoutOrder = layoutOrder,

		BackgroundTransparency = 1,
		Image = DEPRECATED_Constants.ROUNDED_BACKGROUND_IMAGE,
		ImageTransparency = 0,
		ImageColor3 = theme.table.item.background,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = DEPRECATED_Constants.ROUNDED_FRAME_SLICE,
	},
	{
		DetailsFrame = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 4),
				PaddingRight = UDim.new(0, 24),
			}),

			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
			}),

			IdText = Roact.createElement(DevSubListItemText, {
				Size = UDim2.new(0.25, 0, 1, 0),
				Text = id ~= -1 and id or localization:getText("Monetization", "UnsavedDevProduct"),
				LayoutOrder = layoutIndex:getNextOrder(),
				Alignment = Enum.TextXAlignment.Left,
			}),

			NameText = Roact.createElement(DevSubListItemText, {
				Size = UDim2.new(0.25, 0, 1, 0),
				Text = name,
				LayoutOrder = layoutIndex:getNextOrder(),
				Alignment = Enum.TextXAlignment.Left,
			}),

			SubscribersText = Roact.createElement(DevSubListItemText, {
				Size = UDim2.new(0.2, 0, 1, 0),
				Text = numberWithCommas(subscribers),
				LayoutOrder = layoutIndex:getNextOrder(),
				Alignment = Enum.TextXAlignment.Left,
			}),

			CreationDateText = Roact.createElement(DevSubListItemText, {
				Size = UDim2.new(0.2, 0, 1, 0),
				Text = date:sub(0, 10),
				LayoutOrder = layoutIndex:getNextOrder(),
				Alignment = Enum.TextXAlignment.Left,
			}),

			EditFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0.1, 0, 1, 0),
				LayoutOrder = layoutIndex:getNextOrder(),
			}, {
				Button = Roact.createElement("ImageButton", {
					BackgroundTransparency = 1,
					Size = UDim2.new(0, theme.table.menu.buttonSize, 0, theme.table.menu.buttonSize),

					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.new(1, 0, 0.5, 0),

					[Roact.Event.Activated] = onEditButtonActivated,
				}, {
					Dots = Roact.createElement(FitTextLabel,  Cryo.Dictionary.join(theme.fontStyle.Normal, {
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),

						Text = "...",
						Font = Enum.Font.SourceSansBold,

						BackgroundTransparency = 1,

						width = theme.table.menu.buttonSize,
					})),

					Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
				}),
			})
		}),
		ErrorIcon = self.props.HasError and Roact.createElement("ImageButton", {
			BackgroundTransparency = 1,
			Image = DEPRECATED_Constants.ERROR_IMAGE,
			Size = UDim2.new(0, 16, 0, 16),
			Position =  UDim2.new(1, -16, 0, 16),
			AnchorPoint = Vector2.new(0.5, 0.5),
		}),
	})
end

DeveloperSubscriptionListItem = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(DeveloperSubscriptionListItem)

return DeveloperSubscriptionListItem
