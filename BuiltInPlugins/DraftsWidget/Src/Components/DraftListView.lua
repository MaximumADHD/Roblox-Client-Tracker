--[[
	Displays a list of scripts you have checked out. Drafts are loaded from the
	Rodux store
--]]
local RunService = game:GetService("RunService")

local Plugin = script.Parent.Parent.Parent

local DraftService = require(Plugin.Src.ContextServices.DraftsService)

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryButton = SharedFlags.getFFlagRemoveUILibraryButton()
local FFlagMigrateDraftsWidgetList = SharedFlags.getFFlagMigrateDraftsWidgetList()
local FFlagDevFrameworkMigrateContextMenu = SharedFlags.getFFlagDevFrameworkMigrateContextMenu()

local GetTextSize = Framework.Util.GetTextSize

local DraftDiscardDialog = require(Plugin.Src.Components.DraftDiscardDialog)
local DraftListItem = require(Plugin.Src.Components.DraftListItem)
local ListItemView = require(Plugin.Src.Components.ListItemView)

local UI = Framework.UI
local Button = if FFlagRemoveUILibraryButton then UI.Button else UILibrary.Component.RoundTextButton
local StyleModifier = Framework.Util.StyleModifier

local DraftStateChangedAction = require(Plugin.Src.Actions.DraftStateChangedAction)
local DraftState = require(Plugin.Src.Symbols.DraftState)
local CommitState = require(Plugin.Src.Symbols.CommitState)

local ITEM_HEIGHT = if FFlagRemoveUILibraryButton then 24 else 32
local TOOLBAR_HEIGHT = if FFlagRemoveUILibraryButton then 32 else 28
local PADDING = 4
local BUTTON_PADDING = 10

local DraftListView = Roact.Component:extend("DraftListView")

function DraftListView:init()
	local draftsService = nil
	self:setState({
		draftsPendingDiscard = nil,
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
		local plugin = self.props.Plugin:get()
		for _,draft in pairs(selection) do
			plugin:OpenScript(draft)
		end
	end

	self.diffChanges = function(selection)
		draftsService = self.props.DraftService:get()
		draftsService:ShowDiffsAgainstServer(selection)
	end

	self.commitChanges = function(selection)
		draftsService = self.props.DraftService:get()
		self.props.DraftsCommitted(selection)
		draftsService:CommitEdits(selection)
	end

	self.updateSource = function(selection)
		draftsService = self.props.DraftService:get()
		draftsService:UpdateToLatestVersion(selection)
	end

	self.restoreScripts = function(selection)
		draftsService = self.props.DraftService:get()
		draftsService:RestoreScripts(selection)
	end

	self.promptDiscardEdits = function(selection)
		self:setState({
			draftsPendingDiscard = selection,
		})
	end

	self.discardPromptClosed = function(confirmed)
		if confirmed then
			draftsService = self.props.DraftService:get()
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
		return RunService:IsEdit() and self.state.draftsHasActiveSelection
	end

	self.onDoubleClicked = function(draft)
		self.openScripts({draft})
	end

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

	self.makeMenuActions = function(selectedDrafts)
		local localization = self.props.Localization
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

		local contextMenuItems
		if FFlagDevFrameworkMigrateContextMenu then
			contextMenuItems = {
				{
					Text = localization:getText("ContextMenu", "OpenScript"),
					Enabled = openActionEnabled,
					OnItemClicked = function()
						self.openScripts(selectedDrafts)
					end,
				},
				{
					Text = localization:getText("ContextMenu", "ShowDiff"),
					Enabled = diffActionEnabled,
					OnItemClicked = function()
						self.diffChanges(selectedDrafts)
					end,
				},
				updateActionVisible and {
					Text = localization:getText("ContextMenu", "Update"),
					Enabled = updateActionEnabled,
					OnItemClicked = function()
						self.updateSource(selectedDrafts)
					end,
				},
				(not updateActionVisible) and {
					Text = localization:getText("ContextMenu", "Commit"),
					Enabled = commitActionEnabled,
					OnItemClicked = function()
						self.commitChanges(selectedDrafts)
					end,
				},
				restoreActionVisible and {
					Text = localization:getText("ContextMenu", "Restore"),
					Enabled = restoreActionEnabled,
					OnItemClicked = function()
						self.restoreScripts(selectedDrafts)
					end,
				},
				{
					Text = localization:getText("ContextMenu", "Revert"),
					Enabled = revertActionEnabled,
					OnItemClicked = function()
						self.promptDiscardEdits(selectedDrafts)
					end,
				}
			}
		else
			contextMenuItems = {
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
		end

		return contextMenuItems
	end
end

function DraftListView:render()
	local localization = self.props.Localization
	local style = self.props.Stylizer
	local drafts = self.props.Drafts
	local pendingDiscards = self.state.draftsPendingDiscard

	local showDiscardDialog = pendingDiscards ~= nil
	local noDrafts = next(drafts) == nil

	local commitButtonEnabled = self.getCommitButtonEnabled()

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
			CommitButton = Roact.createElement(Button, if FFlagRemoveUILibraryButton then {
				OnClick = self.commitSelectedScripts,
				Size = UDim2.new(0, GetTextSize(commitButtonText).X + BUTTON_PADDING * 2, 1, 0),
				StyleModifier = if not commitButtonEnabled then StyleModifier.Disabled else nil,
				Style = "RoundPrimary",
				Text = commitButtonText,
			} else {
				Active = commitButtonEnabled,
				Size = UDim2.new(0, GetTextSize(commitButtonText).X+PADDING*2, 1, 0),
				Style = style.draftsButton,
				Name = commitButtonText,
				OnClicked = self.commitSelectedScripts,
				TextSize = style.draftsButton.TextSize,
				BorderMatchesBackground = true,
			})
		}),
		Container = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, -TOOLBAR_HEIGHT),
			LayoutOrder = 1,
		}, {
			ListItemView = Roact.createElement(ListItemView, {
				ButtonStyle = if FFlagMigrateDraftsWidgetList then nil else "tableItemButton",
				Items = sortedDraftList,
				ItemHeight = ITEM_HEIGHT,

				GetCurrentSelection = self.GetCurrentSelection,
				OnDoubleClicked = self.onDoubleClicked,
				OnSelectionChanged = self.onSelectionChanged,
				MakeMenuActions = self.makeMenuActions,

				RenderItem = function(draft, props)
					return Roact.createElement(DraftListItem, {
						Draft = draft,
						PrimaryTextColor = if FFlagMigrateDraftsWidgetList then nil else props.textColor,
						StatusTextColor = if FFlagMigrateDraftsWidgetList then nil else props.dimmedTextColor,
						Font = if FFlagMigrateDraftsWidgetList then nil else props.font,
						TextSize = if FFlagMigrateDraftsWidgetList then nil else props.textSize,
						RowProps = if FFlagMigrateDraftsWidgetList then props else nil,

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
				TextColor3 = style.labels.MainText,
				TextSize = 22,
				Font = style.labels.MainFont,

				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
			}),
		}),

		DiscardDialog = showDiscardDialog and Roact.createElement(DraftDiscardDialog, {
			Drafts = pendingDiscards,

			ChoiceSelected = self.discardPromptClosed,
		}),
	})
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

DraftListView = withContext({
	DraftService = DraftService,
	Localization = ContextServices.Localization,
	Plugin = ContextServices.Plugin,
	Stylizer = ContextServices.Stylizer,
})(DraftListView)

return RoactRodux.connect(mapStateToProps, dispatchChanges)(DraftListView)
