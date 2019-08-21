--[[
    Displays a list of scripts you have checked out. Drafts are loaded from the
    Rodux store
--]]

local Plugin = script.Parent.Parent.Parent

local getDraftsService = require(Plugin.Src.ContextServices.DraftsService).getDraftService

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local getPlugin = require(Plugin.Src.ContextServices.StudioPlugin).getPlugin
local withTheme = require(Plugin.Src.ContextServices.Theming).withTheme
local withLocalization = UILibrary.Localizing.withLocalization

local DraftDiscardDialog = require(Plugin.Src.Components.DraftDiscardDialog)
local SandboxListItem = require(Plugin.Src.Components.SandboxListItem)
local ListItemView = require(Plugin.Src.Components.ListItemView)

local DraftStateChangedAction = require(Plugin.Src.Actions.DraftStateChangedAction)
local DraftState = require(Plugin.Src.Symbols.DraftState)
local CommitState = require(Plugin.Src.Symbols.CommitState)

local ITEM_HEIGHT = 32

local SandboxListView = Roact.Component:extend("SandboxListView")

function SandboxListView:init()
    local draftsService = getDraftsService(self)
    self:setState({
        draftsPendingDiscard = nil,
    })

    self.openScripts = function(selection)
        local plugin = getPlugin(self)
        for _,draft in pairs(selection) do
            plugin:OpenScript(draft)
        end
    end

    self.diffChanges = function(selection)
        draftsService:ShowDiffsAgainstServer(selection)
    end

    self.commitChanges = function(selection)
        self.props.DraftsCommitted(selection)
        draftsService:CommitEdits(selection)
    end

    self.updateSource = function(selection)
         draftsService:UpdateToLatestVersion(selection)
    end

    self.promptDiscardEdits = function(selection)
        self:setState({
            draftsPendingDiscard = selection,
        })
    end

    self.discardPromptClosed = function(confirmed)
        if confirmed then
            draftsService:DiscardEdits(self.state.draftsPendingDiscard)
        end

        self:setState({
            draftsPendingDiscard = Roact.None,
        })
    end

    self.getIndicatorEnabled = function(draft)
        local draftState = self.props.Drafts[draft]

        return draftState[DraftState.Committed] == CommitState.Committed
            or draftState[DraftState.Deleted]
            or draftState[DraftState.Outdated]
    end

    self.makeMenuActions = function(localization, selectedDrafts)
        local canUpdateSelection = false
        for _,draft in ipairs(selectedDrafts) do
            local draftState = self.props.Drafts[draft]
            if not draftState[DraftState.Outdated] then
                canUpdateSelection = false
                break
            end
        end

        local contextMenuItems = {
            {
				Text = localization:getText("ContextMenu", "OpenScript"),
				ItemSelected = function()
					self.openScripts(selectedDrafts)
				end,
			},
			{
				Text = localization:getText("ContextMenu", "ShowDiff"),
				ItemSelected = function()
					self.diffChanges(selectedDrafts)
				end,
			},
        }

        if canUpdateSelection then
            table.insert(contextMenuItems, {
                Text = localization:getText("ContextMenu", "Update"),
                ItemSelected = function()
                    self.updateSource(selectedDrafts)
                end,
            })
        else
            table.insert(contextMenuItems, {
				Text = localization:getText("ContextMenu", "Commit"),
				ItemSelected = function()
					self.commitChanges(selectedDrafts)
				end,
            })
        end

        table.insert(contextMenuItems, {
            Text = localization:getText("ContextMenu", "Revert"),
            ItemSelected = function()
                self.promptDiscardEdits(selectedDrafts)
            end,
        })

		return contextMenuItems
	end
end

function SandboxListView:render()
    local drafts = self.props.Drafts
    local pendingDiscards = self.state.draftsPendingDiscard

    local showDiscardDialog = pendingDiscards ~= nil
    local noDrafts = next(drafts) == nil

    local draftStatusSidebarEnabled = false
    local sortedDraftList = {}
    for draft,_ in pairs(drafts) do
        table.insert(sortedDraftList, draft)

        if not draftStatusSidebarEnabled then
            draftStatusSidebarEnabled = self.getIndicatorEnabled(draft)
        end
    end
    table.sort(sortedDraftList, function(a, b)
        return a.Name:lower() < b.Name:lower()
    end)

    return withTheme(function(theme)
        return withLocalization(function(localization)
            return Roact.createElement("Frame", {
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 1, 0),
            }, {
                ListItemView = (not noDrafts) and Roact.createElement(ListItemView, {
                    ButtonStyle = "tableItemButton",
                    Items = sortedDraftList,
                    ItemHeight = ITEM_HEIGHT,

                    MakeMenuActions = self.makeMenuActions,

                    RenderItem = function(draft, buttonTheme, hovered)
                        return Roact.createElement(SandboxListItem, {
                            Draft = draft,
                            PrimaryTextColor = buttonTheme.textColor,
                            StatusTextColor = buttonTheme.dimmedTextColor,
                            Font = buttonTheme.font,
                            TextSize = buttonTheme.textSize,

                            IndicatorMargin = draftStatusSidebarEnabled and ITEM_HEIGHT or 0,
                        })
                    end,
                }),

                EmptyLabel = noDrafts and Roact.createElement("TextLabel", {
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, -16, 1, -16),
                    Position = UDim2.new(0.5, 0, 0.5, 0),
                    AnchorPoint = Vector2.new(0.5, 0.5),

                    Text = localization:getText("Main", "NoDrafts"),
                    TextColor3 = theme.Labels.MainText,
                    TextSize = 22,
                    Font = theme.Labels.MainFont,

                    TextXAlignment = Enum.TextXAlignment.Left,
                    TextYAlignment = Enum.TextYAlignment.Top,
                }),

                DiscardDialog = showDiscardDialog and Roact.createElement(DraftDiscardDialog, {
                    Drafts = pendingDiscards,

                    ChoiceSelected = self.discardPromptClosed,
                }),
            })
        end)
    end)
end

local function mapStateToProps(state, props)
    local sandboxDrafts = state.SandboxDrafts

	return {
		Drafts = sandboxDrafts,
	}
end

local function dispatchChanges(dispatch)
    return {
        DraftsCommitted = function(drafts)
            for _,draft in ipairs(drafts) do
                dispatch(DraftStateChangedAction(draft, DraftState.Committed, CommitState.Committing))
            end
        end,
    }
end

return RoactRodux.connect(mapStateToProps, dispatchChanges)(SandboxListView)