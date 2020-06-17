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

local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local numberWithCommas = require(Page.Util.numberWithCommas)

local DeveloperSubscriptionListItemText = require(script.Parent.DeveloperSubscriptionListItemText)

local function render(props, theme, localized)
	local height = props.Height
	local layoutOrder = props.LayoutOrder

	local name = props.Name
	local subscribers = props.Subscribers
	local active = props.Active
	local id = props.Id

	local onEditButtonActivated = props.OnEditButtonActivated

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

			IdFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0.16, 0, 1, 0),
				LayoutOrder = 1,
			}, {
				Text = Roact.createElement(DeveloperSubscriptionListItemText, {
					Size = UDim2.new(1, 0, 1, 0),
					Text = (id > 0) and id or localized.DevSubs.Unsaved,
					LayoutOrder = 2,
					Alignment = Enum.TextXAlignment.Left,
				}),
			}),

			NameText = Roact.createElement(DeveloperSubscriptionListItemText, {
				Size = UDim2.new(0.44, 0, 1, 0),
				Text = name,
				LayoutOrder = 2,
				Alignment = Enum.TextXAlignment.Center,
			}),

			SubscribersText = Roact.createElement(DeveloperSubscriptionListItemText, {
				Size = UDim2.new(0.2, 0, 1, 0),
				Text = numberWithCommas(subscribers),
				LayoutOrder = 3,
				Alignment = Enum.TextXAlignment.Center,
			}),

			ActiveText = Roact.createElement(DeveloperSubscriptionListItemText, {
				Size = UDim2.new(0.1, 0, 1, 0),
				Text = active and localized.DevSubs.IsActive or localized.DevSubs.IsNotActive,
				LayoutOrder = 4,
				Alignment = Enum.TextXAlignment.Center,
			}),

			EditFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0.1, 0, 1, 0),
				LayoutOrder = 5,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingRight = UDim.new(0, 12),
				}),

				Button = Roact.createElement("ImageButton", {
					BackgroundTransparency = 1,
					Image = theme.editButton.image,
					ImageColor3 = theme.editButton.imageColor,
					Size = UDim2.new(0, 16, 0, 16),
					SizeConstraint = Enum.SizeConstraint.RelativeYY,

					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.new(1, 0, 0.5, 0),

					[Roact.Event.Activated] = onEditButtonActivated,
				})
			})
		}),
		ErrorIcon = props.HasError and Roact.createElement("ImageButton", {
			BackgroundTransparency = 1,
			Image = DEPRECATED_Constants.ERROR_IMAGE,
			Size = UDim2.new(0, 16, 0, 16),
			Position =  UDim2.new(1, -16, 0, 16),
			AnchorPoint = Vector2.new(0.5, 0.5),
		}),
	})
end

return function(props)
	return withTheme(function(theme)
		return withLocalization(function(localized)
			return render(props, theme, localized)
		end)
	end)
end