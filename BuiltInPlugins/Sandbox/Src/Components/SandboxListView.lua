--[[
    Displays a list of scripts you have checked out

    TODO (awarwick) 7/28/2019. Uncertain how Lua API will end up (e.g. guids with separate method
    to get metadata or script instances). These props are not final
    Props:
    DraftList - An ordered list of ids for each draft
    DraftMetadata - Dictionary of draft metadata in the form of [id] = { Text="", ClassName="" }
--]]

local Plugin = script.Parent.Parent.Parent
local UILibrary = require(Plugin.Packages.UILibrary)
local Roact = require(Plugin.Packages.Roact)

local ContextMenus = UILibrary.Studio.ContextMenus

local SandboxListItem = require(Plugin.Src.Components.SandboxListItem)
local ListItemView = require(Plugin.Src.Components.ListItemView)

local ITEM_HEIGHT = 32

local SandboxListView = Roact.Component:extend("SandboxListView")

function SandboxListView:init()
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

    self.discardEdits = function(selection)
        -- TODO (awarwick) 7/26/2019 Hook up once we have mock SandboxService
        print("Discarding edits", unpack(selection))
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
					self.discardEdits(selectedIds)
				end,
			},
		}
	end
end

function SandboxListView:render()
    local draftList = self.props.DraftList
    local draftMetadata = self.props.DraftMetadata

    return Roact.createElement(ListItemView, {
        ButtonStyle = "tableItemButton",
        Items = draftList,
        ItemHeight = ITEM_HEIGHT,

        MakeMenuActions = self.makeMenuActions,

        RenderItem = function(id, buttonTheme, hovered)
            local metadata = draftMetadata[id]

            return Roact.createElement(SandboxListItem, {
                Size = UDim2.new(1, 0, 1, 0),

                Text = metadata.Text,
                TextColor3 = buttonTheme.textColor,
                Font = buttonTheme.font,
                TextSize = buttonTheme.textSize,
            })
        end,
    })
end

return SandboxListView