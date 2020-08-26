--[[
	A list of DeveloperSubscriptionListItems. Also creates a header to show
	what each column is and a create button for creating additional subscriptions.

	Props:
		table DeveloperSubscriptions = the developer subscriptions to list off
		func OnDeveloperSubscriptionEdited = when a developer subscription gets edited
		func OnDeveloperSubscriptionCreated = when a developer subscriptin is made
		int ListItemHeight = the height in pixels of the list items
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local UILibrary = require(Plugin.UILibrary)

local DeveloperSubscriptionListItem = require(script.Parent.DeveloperSubscriptionListItem)
local DeveloperSubscriptionListHeaderText = require(script.Parent.DeveloperSubscriptionListHeaderText)
local HeaderWithButton = require(script.Parent.HeaderWithButton)

local ContextServices = require(Plugin.Framework.ContextServices)

local createFitToContent = UILibrary.Component.createFitToContent
local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 10),
})

local DeveloperSubscriptionList = Roact.Component:extend("DeveloperSubscriptionList")

function DeveloperSubscriptionList:render()
	local developerSubscriptions = self.props.DeveloperSubscriptions
	local onDeveloperSubscriptionEdited = self.props.OnDeveloperSubscriptionEdited
	local onDeveloperSubscriptionCreated = self.props.OnDeveloperSubscriptionCreated
	local listItemHeight = self.props.ListItemHeight or 32
	local theme = self.props.Theme:get("Plugin")
	local localization = self.props.Localization

	-- start up a table of the elements, put in the header
	local elements = {
		Header = Roact.createElement(HeaderWithButton, {
			Title = localization:getText("General", "DevSubsListHeader"),
			LayoutOrder = 0,

			Active = true,
			ButtonText = localization:getText("General", "DevSubsCreateAction"),
			OnClicked = onDeveloperSubscriptionCreated,
			Style = theme.cancelButton,
		}),

		ListHeader = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, listItemHeight),
			LayoutOrder = 1,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 4),
				PaddingRight = UDim.new(0, 4),
			}),

			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
			}),

			IdText = Roact.createElement(DeveloperSubscriptionListHeaderText, {
				Size = UDim2.new(0.16, 0, 1, 0),
				Text = localization:getText("General", "DevSubsId"),
				LayoutOrder = 1,
				Alignment = Enum.TextXAlignment.Left,
			}),

			NameText = Roact.createElement(DeveloperSubscriptionListHeaderText, {
				Size = UDim2.new(0.44, 0, 1, 0),
				Text = localization:getText("General", "DevSubsName"),
				LayoutOrder = 2,
				Alignment = Enum.TextXAlignment.Center,
			}),

			SubscribersText = Roact.createElement(DeveloperSubscriptionListHeaderText, {
				Size = UDim2.new(0.2, 0, 1, 0),
				Text = localization:getText("General", "DevSubsSubscribers"),
				LayoutOrder = 3,
				Alignment = Enum.TextXAlignment.Center,
			}),

			ActiveText = Roact.createElement(DeveloperSubscriptionListHeaderText, {
				Size = UDim2.new(0.1, 0, 1, 0),
				Text = localization:getText("General", "DevSubsActive"),
				LayoutOrder = 4,
				Alignment = Enum.TextXAlignment.Center,
			}),
		})
	}

	local devSubsList = {}
	for _,v in pairs(developerSubscriptions) do
		table.insert(devSubsList, v)
	end

	table.sort(devSubsList, function(a, b)
		if a.Active ~= b.Active then
			if a.Active then
				return true
			end
			if b.Active then
				return false
			end
		end

		return a.Key:upper() < b.Key:upper()
	end)

	-- create all the list items
	local index = 1
	for _, devSub in ipairs(devSubsList) do
		local function onEditButtonActivated()
			onDeveloperSubscriptionEdited(devSub)
		end

		elements[devSub.Key] = Roact.createElement(DeveloperSubscriptionListItem, {
			Name = devSub.Name or "",
			Id = devSub.Id,
			Subscribers = devSub.Subscribers,
			Active = devSub.Active,
			LayoutOrder = index + 1,
			OnEditButtonActivated = onEditButtonActivated,
			Height = listItemHeight,
			HasError = self.props.DevSubsErrors[devSub.Key] ~= nil
		})

		index = index + 1
	end

	-- just a space to provide extra padding to the next element, the button
	elements.Space = Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 0),
		LayoutOrder = index + 1
	})

	return Roact.createElement(FitToContent, {
		BackgroundTransparency = 1,
	}, elements)
end

ContextServices.mapToProps(DeveloperSubscriptionList,{
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
})

return DeveloperSubscriptionList