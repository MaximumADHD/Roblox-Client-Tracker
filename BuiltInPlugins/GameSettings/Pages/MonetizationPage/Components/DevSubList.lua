--[[
    A list of DeveloperSubscriptionListItems. Also creates a header to show
    what each column is and a create button for creating additional subscriptions.
    Props:
        table DeveloperSubscriptions = the developer subscriptions to list off
        func OnDeveloperSubscriptionEdited = when a developer subscription gets edited
        func OnDeveloperSubscriptionCreated = when a developer subscriptin is made
        int ListItemHeight = the height in pixels of the list items
]]
local FFlagGameSettingsRemoveFitContent = game:GetFastFlag("GameSettingsRemoveFitContent")

local FFlagRemoveUILibraryGetTextSize = game:GetFastFlag("RemoveUILibraryGetTextSize")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local FrameworkUI = Framework.UI
local Button = FrameworkUI.Button

local UI = Framework.UI
local Pane = UI.Pane

local DevSubListItem = require(script.Parent.DevSubListItem)
local DevSubListHeaderText = require(script.Parent.DevSubListHeaderText)

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local DeepMergeTables = require(Plugin.Src.Util.DeepMergeTables)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local AddChange = require(Plugin.Src.Actions.AddChange)

local GetTextSize = if FFlagRemoveUILibraryGetTextSize then Util.GetTextSize else UILibrary.Util.GetTextSize

local FitToContent
if not FFlagGameSettingsRemoveFitContent then
    local createFitToContent = UILibrary.Component.createFitToContent
    FitToContent = createFitToContent("Frame", "UIListLayout", {
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 10),
    })
end

local DeveloperSubscriptionList = Roact.Component:extend("DeveloperSubscriptionList")

function DeveloperSubscriptionList:render()
    local developerSubscriptions = self.props.DeveloperSubscriptions
    local onDeveloperSubscriptionEdited = self.props.OnDeveloperSubscriptionEdited
    local onDeveloperSubscriptionCreated = self.props.OnDeveloperSubscriptionCreated
    local listItemHeight = self.props.ListItemHeight or 32
    local theme = self.props.Stylizer
    local localization = self.props.Localization
    local layoutOrder = self.props.LayoutOrder

    local buttonText = localization:getText("General", "DevSubsCreateAction")
    local buttonTextExtents = GetTextSize(buttonText, theme.fontStyle.Normal.TextSize, theme.fontStyle.Normal.Font)

    -- start up a table of the elements, put in the header
    local elements = {
        Header = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Title, {
            Size = UDim2.new(1, 0, 0, DEPRECATED_Constants.HEADER_HEIGHT),
            Text = localization:getText("General", "DevSubsListHeader"),
            TextColor3 = Color3.fromRGB(170, 170, 170),
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Center,
            LayoutOrder = 0,
        }), {
            Padding = Roact.createElement("UIPadding", {
                PaddingRight = UDim.new(0, 12)
            }),

            Layout = Roact.createElement("UIListLayout", {
                HorizontalAlignment = Enum.HorizontalAlignment.Right,
                VerticalAlignment = Enum.VerticalAlignment.Bottom,
            }),

            CreateButton = Roact.createElement(Button, {
                Style = "GameSettingsPrimaryButton",
                Text = localization:getText("General", "DevSubsCreateAction"),
                Size = UDim2.new(0, buttonTextExtents.X + theme.createButton.PaddingX,
                0, buttonTextExtents.Y + theme.createButton.PaddingY),
                OnClick = onDeveloperSubscriptionCreated,
            }),
        }),

        ListHeader = Roact.createElement("Frame", {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, listItemHeight),
            LayoutOrder = 1,
        }, {
            Padding = Roact.createElement("UIPadding", {
                PaddingLeft = UDim.new(0, 4),
                PaddingRight = UDim.new(0, 24),
            }),

            Layout = Roact.createElement("UIListLayout", {
                SortOrder = Enum.SortOrder.LayoutOrder,
                FillDirection = Enum.FillDirection.Horizontal,
            }),

            IdText = Roact.createElement(DevSubListHeaderText, {
                Size = UDim2.new(0.25, 0, 1, 0),
                Text = localization:getText("General", "DevSubsPlanID"),
                LayoutOrder = 1,
                Alignment = Enum.TextXAlignment.Left,
            }),

            NameText = Roact.createElement(DevSubListHeaderText, {
                Size = UDim2.new(0.25, 0, 1, 0),
                Text = localization:getText("General", "DevSubsName"),
                LayoutOrder = 2,
                Alignment = Enum.TextXAlignment.Left,
            }),

            SubscribersText = Roact.createElement(DevSubListHeaderText, {
                Size = UDim2.new(0.2, 0, 1, 0),
                Text = localization:getText("General", "DevSubsSubscribers"),
                LayoutOrder = 3,
                Alignment = Enum.TextXAlignment.Left,
            }),

            CreationDateText = Roact.createElement(DevSubListHeaderText, {
                Size = UDim2.new(0.2, 0, 1, 0),
                Text = localization:getText("General", "DevSubsCreationDate"),
                LayoutOrder = 4,
                Alignment = Enum.TextXAlignment.Left,
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

        elements[devSub.Key] = Roact.createElement(DevSubListItem, {
            Name = devSub.Name or "",
            Id = devSub.Id,
            Subscribers = devSub.Subscribers,
            Active = devSub.Active,
            LayoutOrder = index + 1,
            OnEditButtonActivated = onEditButtonActivated,
            Height = listItemHeight,
            HasError = self.props.DevSubsErrors[devSub.Key] ~= nil,
            CreationDate = devSub.CreationDate or "",
        })

        index = index + 1
    end

    -- just a space to provide extra padding to the next element, the button
    elements.Space = Roact.createElement("Frame", {
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 0, 0),
        LayoutOrder = index + 1
    })

    if FFlagGameSettingsRemoveFitContent then
        return Roact.createElement(Pane, {
            Layout = Enum.FillDirection.Vertical,
            LayoutOrder = layoutOrder,
            AutomaticSize = Enum.AutomaticSize.Y,
            Spacing = UDim.new(0, 10),
        }, elements)
    else
        return Roact.createElement(FitToContent, {
            BackgroundTransparency = 1,
            LayoutOrder = layoutOrder,
        }, elements)
    end
end


DeveloperSubscriptionList = withContext({
    Stylizer = ContextServices.Stylizer,
    Localization = ContextServices.Localization,
})(DeveloperSubscriptionList)



return RoactRodux.connect(
    function(state, props)
        local errors = state.Settings.Errors

        local currDevSubs = state.Settings.Current or {}
        currDevSubs = currDevSubs.DeveloperSubscriptions or {}

        local changedDevSubs = state.Settings.Changed or {}
        changedDevSubs = changedDevSubs.DeveloperSubscriptions or {}

        return {
            DeveloperSubscriptions = DeepMergeTables.Merge(currDevSubs, changedDevSubs) or {},
            ModeratedDevSubs = state.DevSubModeration or {},
            DevSubsErrors = errors.DeveloperSubscriptions or {},
        }
    end,
    function(dispatch)
        return {
            OnDeveloperSubscriptionEdited = function(developerSubscription)
                dispatch(AddChange("isEditingSubscription", true))
                dispatch(AddChange("editedSubscriptionKey", developerSubscription.Key))
            end,
        }
    end
)(DeveloperSubscriptionList)
