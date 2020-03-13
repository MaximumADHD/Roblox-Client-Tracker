--[[
    The draft list item displayed in the DraftListView.

    Props:
    Text - text displayed in the item
    TextColor3 - text color of text in the item
    TextSize - size of text in the item
    Font - font of the text in the item
--]]

local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local withLocalization = UILibrary.Localizing.withLocalization
local withTheme = require(Plugin.Src.ContextServices.Theming).withTheme

local DraftStatusIndicator = require(Plugin.Src.Components.DraftStatusIndicator)
local Tooltip = UILibrary.Component.Tooltip

local DraftState = require(Plugin.Src.Symbols.DraftState)
local CommitState = require(Plugin.Src.Symbols.CommitState)
local AutosaveState = require(Plugin.Src.Symbols.AutosaveState)

local DraftListItem = Roact.PureComponent:extend("DraftListItem")

local HORIZONTAL_PADDING = 8

function DraftListItem:init()
    self:setState({
        draftName = nil,
    })

    self.nameUpdated = function()
        local draft = self.props.Draft
        self:setState({
            draftName = draft.Name
        })
    end

    self.getDraftIndicator = function(theme, localization)
        local draftState = self.props.Drafts[self.props.Draft]
        local indicatorText
        local indicatorIcon

        if draftState[DraftState.Committed] == CommitState.Committed then
            indicatorText = localization:getText("Tooltip", "DraftCommitted")
            indicatorIcon = theme.Icons.DraftState.Committed
        elseif draftState[DraftState.Deleted] then
            indicatorText = localization:getText("Tooltip", "ScriptDeleted")
            indicatorIcon = theme.Icons.DraftState.Deleted
        elseif draftState[DraftState.Outdated] then
            indicatorText = localization:getText("Tooltip", "DraftOutdated")
            indicatorIcon = theme.Icons.DraftState.Outdated
        end

        if indicatorIcon then
            return Roact.createElement(DraftStatusIndicator, {
                Tooltip = indicatorText,
                Icon = indicatorIcon,
            })
        end
    end

    self.getStatusText = function(localization)
        local draftState = self.props.Drafts[self.props.Draft]

        if draftState[DraftState.Committed] == CommitState.Committed then
            return ""
        elseif draftState[DraftState.Committed] == CommitState.Committing then
            return localization:getText("StatusText", "Committing")
        elseif draftState[DraftState.Autosaved] == AutosaveState.Saved then
            return localization:getText("StatusText", "Uncommitted")
        elseif draftState[DraftState.Autosaved] == AutosaveState.Saving then
            return localization:getText("StatusText", "Saving")
        end

        return ""
    end

    self.getLabelText = function(localization)
        local draft = self.props.Draft
        local draftName = self.state.draftName
        local draftState = self.props.Drafts[draft]

        if draftState[DraftState.Committed] == CommitState.Committed then
            return localization:getText("DraftItem", "CommittedLabel", draftName)
        else
            return ".../"..draftName
        end
    end

    self.nameChangedConnection = self.props.Draft:GetPropertyChangedSignal("Name"):Connect(self.nameUpdated)
    self.nameUpdated()
end

function DraftListItem:didUpdate(previousProps)
    assert(previousProps.Draft == self.props.Draft,
        "The Draft property of DraftListItem should never be changed. These should be keyed by the draft")
end

function DraftListItem:willUnmount()
    self.nameChangedConnection:Disconnect()
end

function DraftListItem:render()
    local drafts = self.props.Drafts
    local draft = self.props.Draft
    local primaryTextColor = self.props.PrimaryTextColor
    local statusTextColor = self.props.StatusTextColor
    local textSize = self.props.TextSize
    local font = self.props.Font

    local draftState = drafts[draft]
    if not draftState then return nil end
    local indicatorMargin = self.props.IndicatorMargin
    local indicatorEnabled = indicatorMargin > 0

    return withTheme(function(theme)
        return withLocalization(function(localization)
            local indicator = self.getDraftIndicator(theme, localization)
            local text = self.getLabelText(localization)
            local statusText = self.getStatusText(localization)
            local statusWidth = TextService:GetTextSize(statusText, textSize, font, Vector2.new(math.huge, math.huge)).X
            statusWidth = statusWidth > 0 and statusWidth + HORIZONTAL_PADDING or 0

            return Roact.createElement("Frame", {
                Size = UDim2.new(1, 0, 1, 0),
                BackgroundTransparency = 1,
            }, {
                Indicator = indicatorEnabled and Roact.createElement("Frame", {
                    Size = UDim2.new(0, indicatorMargin, 1, 0),
                    BackgroundTransparency = 1,
                }, {
                    Indicator = indicator,
                }),

                Status = Roact.createElement("TextLabel", {
                    BackgroundTransparency = 1,
                    Size = UDim2.new(0, statusWidth, 1, 0),
                    AnchorPoint = Vector2.new(1, 0),
                    Position = UDim2.new(1, 0, 0, 0),
                    Text = statusText,
                    TextColor3 = statusTextColor,
                    TextXAlignment = Enum.TextXAlignment.Right,
                    Font = font,
                    TextSize = textSize,
                }),

                ScriptName = Roact.createElement("TextLabel", {
                    Size = UDim2.new(1, -(indicatorMargin+statusWidth), 1, 0),
                    Position = UDim2.new(0, indicatorMargin, 0, 0),
                    BackgroundTransparency = 1,

                    TextTruncate = Enum.TextTruncate.AtEnd,
                    Text = text,
                    TextXAlignment = Enum.TextXAlignment.Left,

                    TextColor3 = primaryTextColor,
                    Font = font,
                    TextSize = textSize,
                }, {
                    Tooltip = Roact.createElement(Tooltip, {
                        Text = draft:GetFullName(),
                        Enabled = true,
                    })
                }),

                UIPadding = Roact.createElement("UIPadding", {
                    PaddingLeft = UDim.new(0, indicatorEnabled and 0 or HORIZONTAL_PADDING),
                    PaddingRight = UDim.new(0, 12 + HORIZONTAL_PADDING),
                })
            })
        end)
    end)
end

local function mapStateToProps(state, props)
    local drafts = state.Drafts

	return {
		Drafts = drafts,
	}
end

return RoactRodux.connect(mapStateToProps)(DraftListItem)