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
local Roact = require(Plugin.Roact)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)
local Constants = require(Plugin.Src.Util.Constants)
local numberWithCommas = require(Plugin.Src.Util.numberWithCommas)

local StudioService = game:GetService("StudioService")

local DeveloperSubscriptionListItemText = require(script.Parent.DeveloperSubscriptionListItemText)

local COPY_ICON_IMAGE = "rbxassetid://3008317565"
local COPY_ICON_SIZE = 20
local COPY_ICON_PADDING = 4

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
		Image = Constants.ROUNDED_BACKGROUND_IMAGE,
		ImageTransparency = 0,
		ImageColor3 = theme.textBox.background,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Constants.ROUNDED_FRAME_SLICE,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 4),
			PaddingRight = UDim.new(0, 4),
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
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, COPY_ICON_PADDING),
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),

			Text = Roact.createElement(DeveloperSubscriptionListItemText, {
				Size = UDim2.new(1, -(COPY_ICON_SIZE + COPY_ICON_PADDING), 1, 0),
				Text = (id > 0) and id or localized.DevSubs.Unsaved,
				LayoutOrder = 1,
				Alignment = Enum.TextXAlignment.Left,
			}),

			Icon = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, COPY_ICON_SIZE, 0, COPY_ICON_SIZE),
				Image = COPY_ICON_IMAGE,
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Visible = (id > 0),

				[Roact.Event.Activated] = function()
					StudioService:CopyToClipboard(id)
				end,
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
				PaddingTop = UDim.new(0, 4),
				PaddingBottom = UDim.new(0, 4),
			}),

			Button = Roact.createElement("ImageButton", {
				BackgroundTransparency = 1,
				Image = "rbxassetid://2998597458",
				Size = UDim2.new(1, 0, 1, 0),
				SizeConstraint = Enum.SizeConstraint.RelativeYY,

				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),

				[Roact.Event.Activated] = onEditButtonActivated,
			})
		})
	})
end

return function(props)
	return withTheme(function(theme)
		return withLocalization(function(localized)
			return render(props, theme, localized)
		end)
	end)
end