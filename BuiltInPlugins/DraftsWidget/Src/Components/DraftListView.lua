--[[
    Displays a list of scripts you have checked out. Drafts are loaded from the
    Rodux store
--]]
game:DefineFastFlag("DraftWidgetResponsiveCommitButton", false)

local RunService = game:GetService("RunService")

local Plugin = script.Parent.Parent.Parent

local getDraftsService = require(Plugin.Src.ContextServices.DraftsService).getDraftService

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local getPlugin = require(Plugin.Src.ContextServices.StudioPlugin).getPlugin
local withTheme = require(Plugin.Src.ContextServices.Theming).withTheme
local withLocalization = UILibrary.Localizing.withLocalization

local DraftDiscardDialog = require(Plugin.Src.Components.DraftDiscardDialog)
local DraftListItem = require(Plugin.Src.Components.DraftListItem)
local GetTextSize = UILibrary.Util.GetTextSize
local ListItemView = require(Plugin.Src.Components.ListItemView)
local RoundTextButton = UILibrary.Component.RoundTextButton

local DraftStateChangedAction = require(Plugin.Src.Actions.DraftStateChangedAction)
local DraftState = require(Plugin.Src.Symbols.DraftState)
local CommitState = require(Plugin.Src.Symbols.CommitState)

local ITEM_HEIGHT = 32
local TOOLBAR_HEIGHT = 28
local PADDING = 4

local DraftListView = Roact.Component:extend("DraftListView")

function DraftListView:init()
    local draftsService = getDraftsService(self)
    self:setState({
        draftsPendingDiscard = nil,
        -- may be inaccurate if there are no drafts remaining
        draftsHasActiveSelection = false,
    })

    self.GetCurrentSelection = Instance.new("BindableFunction")

    self.commitSelectedScripts = function()
        local drafts = self.props.Drafts
        local noDrafts = next(drafts) == nil
        if noDrafts then return end

        local selectedScripts = self.GetCurrentSelection:Invoke()
        if #selectedScripts == 0 then return end
        self.commitChanges(selectedScripts)
    end

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

    self.restoreScripts = function(selection)
		draftsService:RestoreScripts(selection)
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

    self.getCommitButtonEnabled =  function()
        local drafts = self.props.Drafts
        local hasDrafts = next(drafts) ~= nil
        return RunService:IsEdit() and self.state.draftsHasActiveSelection and hasDrafts
    end

    self.onDoubleClicked = function(draft)
        self.openScripts({draft})
    end

    -- Note: Does not get invoked when there are no drafts left since ListItemView will not get rendered
    self.onSelectionChanged = function(selection)
        if selection and next(selection) == nil then
            self:setState({
                draftsHasActiveSelection = false
            })
        else
            self:setState({
                draftsHasActiveSelection = true
            })
        end
    end

    self.makeMenuActions = function(localization, selectedDrafts)
        local updateActionVisible = true
        local restoreActionVisible = true

        local openActionEnabled = true
        local diffActionEnabled = true
        local updateActionEnabled = true
        local commitActionEnabled = true
        local restoreActionEnabled = true
        local revertActionEnabled = true

        for _,draft in ipairs(selectedDrafts) do
            local draftState = self.props.Drafts[draft]

            if draftState[DraftState.Deleted] then
                diffActionEnabled = false
                commitActionEnabled = false
                updateActionVisible = false
            elseif draftState[DraftState.Outdated] then
                commitActionEnabled = false
            else
                updateActionVisible = false
            end

            if not draftState[DraftState.Deleted] then
                restoreActionVisible = false
            end

            if draftState[DraftState.Committed] == CommitState.Committing then
                openActionEnabled = false
                restoreActionEnabled = false
                updateActionEnabled = false
                commitActionEnabled = false
                diffActionEnabled = false
                revertActionEnabled = false
            end
        end

        if not RunService:IsEdit() then
            restoreActionVisible = false
            updateActionVisible = false

            commitActionEnabled = false
            diffActionEnabled = false
            revertActionEnabled = false
        end

        local contextMenuItems = {
            {
                Text = localization:getText("ContextMenu", "OpenScript"),
                Enabled = openActionEnabled,
				ItemSelected = function()
					self.openScripts(selectedDrafts)
				end,
            },
            {
                Text = localization:getText("ContextMenu", "ShowDiff"),
                Enabled = diffActionEnabled,
				ItemSelected = function()
					self.diffChanges(selectedDrafts)
				end,
            },
            updateActionVisible and {
                Text = localization:getText("ContextMenu", "Update"),
                Enabled = updateActionEnabled,
                ItemSelected = function()
                    self.updateSource(selectedDrafts)
                end,
            },
            (not updateActionVisible) and {
                Text = localization:getText("ContextMenu", "Commit"),
                Enabled = commitActionEnabled,
				ItemSelected = function()
					self.commitChanges(selectedDrafts)
				end,
            },
            restoreActionVisible and {
                Text = localization:getText("ContextMenu", "Restore"),
                Enabled = restoreActionEnabled,
                ItemSelected = function()
                    self.restoreScripts(selectedDrafts)
                end,
            },
            {
                Text = localization:getText("ContextMenu", "Revert"),
                Enabled = revertActionEnabled,
                ItemSelected = function()
                    self.promptDiscardEdits(selectedDrafts)
                end,
            }
        }

		return contextMenuItems
	end
end

function DraftListView:render()
    local drafts = self.props.Drafts
    local pendingDiscards = self.state.draftsPendingDiscard

    local showDiscardDialog = pendingDiscards ~= nil
    local noDrafts = next(drafts) == nil

    local commitButtonEnabled = true
    if game:GetFastFlag("DraftWidgetResponsiveCommitButton") then
        commitButtonEnabled = self.getCommitButtonEnabled()
    end

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
            local commitButtonText = localization:getText("Toolbar", "CommitButton")

            return Roact.createElement("Frame", {
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 1, 0),
            }, {
                UIListLayout = Roact.createElement("UIListLayout", {
                    FillDirection = Enum.FillDirection.Vertical,
                    SortOrder = Enum.SortOrder.LayoutOrder,
                }),
                Toolbar = Roact.createElement("Frame", {
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, 0, 0, TOOLBAR_HEIGHT),
                    LayoutOrder = 0,
                }, {
                    UIPadding = Roact.createElement("UIPadding", {
                        PaddingTop = UDim.new(0, PADDING),
                        PaddingRight = UDim.new(0, PADDING),
                        PaddingBottom = UDim.new(0, PADDING),
                        PaddingLeft = UDim.new(0, PADDING),
                    }),
                    UIListLayout = Roact.createElement("UIListLayout", {
                        FillDirection = Enum.FillDirection.Horizontal,
                        HorizontalAlignment = Enum.HorizontalAlignment.Right,
                        VerticalAlignment = Enum.VerticalAlignment.Center,
                    }),
                    CommitButton = Roact.createElement(RoundTextButton, {
                        Active = commitButtonEnabled,
                        Size = UDim2.new(0, GetTextSize(commitButtonText).X+PADDING*2, 1, 0),
                        Style = theme.defaultButton,
                        Name = commitButtonText,
                        OnClicked = self.commitSelectedScripts,
                        TextSize = theme.defaultButton.TextSize,
                        BorderMatchesBackground = true,
                    })
                }),
                Container = Roact.createElement("Frame", {
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, 0, 1, -TOOLBAR_HEIGHT),
                    LayoutOrder = 1,
                }, {
                    ListItemView = (not noDrafts) and Roact.createElement(ListItemView, {
                        ButtonStyle = "tableItemButton",
                        Items = sortedDraftList,
                        ItemHeight = ITEM_HEIGHT,

                        GetCurrentSelection = self.GetCurrentSelection,
                        OnDoubleClicked = self.onDoubleClicked,
                        OnSelectionChanged = self.onSelectionChanged,
                        MakeMenuActions = self.makeMenuActions,

                        RenderItem = function(draft, buttonTheme, hovered)
                            return Roact.createElement(DraftListItem, {
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
    local drafts = state.Drafts

	return {
		Drafts = drafts,
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

return RoactRodux.connect(mapStateToProps, dispatchChanges)(DraftListView)