--[[
    Displays a list of scripts you have checked out. Drafts are loaded from the
    Rodux store
--]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local DraftDiscardDialog = require(Plugin.Src.Components.DraftDiscardDialog)
local SandboxListItem = require(Plugin.Src.Components.SandboxListItem)
local ListItemView = require(Plugin.Src.Components.ListItemView)

local ITEM_HEIGHT = 32

local SandboxListView = Roact.Component:extend("SandboxListView")

function SandboxListView:init()
    self:setState({
        draftsPendingDiscard = nil,
    })

    self.openScripts = function(selection)
        -- TODO (awarwick) 7/26/2019 Hook up once we have mock SandboxService
        print("Opening scripts", unpack(selection))
    end

    self.diffChanges = function(selection)
        -- TODO (awarwick) 7/26/2019 Hook up once we have mock SandboxService
        print("Diffing changes", unpack(selection))
    end

    self.updateSource = function(selection)
        -- TODO (awarwick) 7/26/2019 Hook up once we have mock SandboxService
        print("Updating sources", unpack(selection))
    end

    self.promptDiscardEdits = function(selection)
        self:setState({
            draftsPendingDiscard = selection,
        })
    end

    self.discardPromptClosed = function(confirmed)
        if confirmed then
            -- TODO (awarwick) 7/26/2019 Hook up once we have mock SandboxService
            print("Discarding edits", unpack(self.state.draftsPendingDiscard))
        end

        self:setState({
            draftsPendingDiscard = Roact.None,
        })
    end

    self.makeMenuActions = function(localization, selectedIds)
		return {
			{
				Text = localization:getText("ContextMenu", "OpenScript"),
				ItemSelected = function()
					self.openScripts(selectedIds)
				end,
			},
			{
				Text = localization:getText("ContextMenu", "ShowDiff"),
				ItemSelected = function()
					self.diffChanges(selectedIds)
				end,
			},
			{
				Text = localization:getText("ContextMenu", "Commit"),
				ItemSelected = function()
					self.updateSource(selectedIds)
				end,
			},
			{
				Text = localization:getText("ContextMenu", "Revert"),
				ItemSelected = function()
					self.promptDiscardEdits(selectedIds)
				end,
			},
		}
	end
end

function SandboxListView:render()
    local drafts = self.props.Drafts
    local pendingDiscards = self.state.draftsPendingDiscard

    local showDiscardDialog = pendingDiscards ~= nil

    local sortedDraftList = {}
    for draft,_ in pairs(drafts) do
        table.insert(sortedDraftList, draft)
    end
    table.sort(sortedDraftList, function(a, b)
        return a.Name:lower() < b.Name:lower()
    end)

    return Roact.createElement("Frame", {
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 1, 0),
    }, {
        ListItemView = Roact.createElement(ListItemView, {
            ButtonStyle = "tableItemButton",
            Items = sortedDraftList,
            ItemHeight = ITEM_HEIGHT,

            MakeMenuActions = self.makeMenuActions,

            RenderItem = function(script, buttonTheme, hovered)
                return Roact.createElement(SandboxListItem, {
                    Size = UDim2.new(1, 0, 1, 0),

                    Text = script.Name,
                    TextColor3 = buttonTheme.textColor,
                    Font = buttonTheme.font,
                    TextSize = buttonTheme.textSize,
                })
            end,
        }),

        DiscardDialog = showDiscardDialog and Roact.createElement(DraftDiscardDialog, {
            Drafts = pendingDiscards,

            ChoiceSelected = self.discardPromptClosed,
        }),
    })
end

local function mapStateToProps(state, props)
    local sandboxDrafts = state.SandboxDrafts

	return {
		Drafts = sandboxDrafts,
	}
end

return RoactRodux.connect(mapStateToProps)(SandboxListView)