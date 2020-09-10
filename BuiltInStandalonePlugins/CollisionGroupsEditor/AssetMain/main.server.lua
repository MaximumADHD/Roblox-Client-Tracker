-- This is run in the "asset" DataModels: edit DM, play client DM, 
-- play server DM.
-- 
-- Logic is roughly:
-- Listen for when Host DM is current or not.
-- 1) If Host DM is current:
--   a) Start listening for interesting events from the key/value store, 
--      and from the underlying asset DM.
--   b) Write information into the key/value store to be rendered into dock widget.
-- 2) If Host DM is not current:
--   a) Stop listening for events from key value store and from asset DM.  We are 
--      essentially hibernating.

local PhysicsService = game:GetService("PhysicsService")
local ChangeHistoryService = game:GetService("ChangeHistoryService")

local getSelectedParts = require(script.Parent.Parent.Plugin.getSelectedParts)
local getPartsInGroup = require(script.Parent.Parent.Plugin.getPartsInGroup)
local getGroups = require(script.Parent.Parent.Plugin.getGroups)
local getSelectedGroupIds = require(script.Parent.Parent.Plugin.getSelectedGroupIds)

local getGroupsChanged do
	local lastGroups

	local function getNamesChanged(groups)
		for index = 1, #groups do
			local lastGroup = lastGroups[index]
			local group = groups[index]
			if lastGroup.name ~= group.name then
				return true
			end
		end
		return false
	end

	getGroupsChanged = function()
		if not lastGroups then
			lastGroups = PhysicsService:GetCollisionGroups()
			return false
		end

		local groups = PhysicsService:GetCollisionGroups()
		local result = false

		if #groups ~= #lastGroups then
			result = true
		end

		if (not result) and getNamesChanged(groups) then
			result = true
		end

		lastGroups = groups
		return result
	end
end

local function UpdateGroupsAndSelectedGroups()
    -- Write into store a summary of existing collision groups, and which ones are selected.
    local groups = getGroups()
    local selectedGroupIds = getSelectedGroupIds(groups)

    plugin:SetItem("Groups", groups)
    plugin:SetItem("SelectedGroupIds", selectedGroupIds)
end

local function SetStateAndRefresh(stateBlob) 
    -- Update store's notion of current groups/selected groups, and prompt a refresh on 
    -- GUI.
    UpdateGroupsAndSelectedGroups()
    plugin:Invoke("SetStateAndRefresh", stateBlob)
end

local PluginEventConnections = {}

local function bindToPluginEvents()
    -- Bind to all the events from the Plugin DM.
    table.insert(PluginEventConnections, plugin:OnInvoke("WindowEnabled", function(payload) 
        SetStateAndRefresh({})
    end))

    table.insert(PluginEventConnections, plugin:OnInvoke("DeleteCollisionGroup", function(groupName) 
        ChangeHistoryService:SetWaypoint("Deleting collision group")
        PhysicsService:RemoveCollisionGroup(groupName)
        ChangeHistoryService:SetWaypoint("Deleted collision group")
        SetStateAndRefresh({})
    end))

    table.insert(PluginEventConnections, plugin:OnInvoke("RenameCollisionGroup", function(renameBlob)
        ChangeHistoryService:SetWaypoint("Renaming collision group")
        PhysicsService:RenameCollisionGroup(renameBlob.oldName, renameBlob.newName)
        ChangeHistoryService:SetWaypoint("Renamed collision group")
        SetStateAndRefresh({GroupRenaming = ""})
    end))

    table.insert(PluginEventConnections, plugin:OnInvoke("AddSelectedPartsToCollisionGroup", function(groupName)
        ChangeHistoryService:SetWaypoint("Setting part membership to collision group")
        for _, part in pairs(getSelectedParts()) do
            PhysicsService:SetPartCollisionGroup(part, groupName)
        end
        ChangeHistoryService:SetWaypoint("Set part membership to collision group")
        SetStateAndRefresh({})
    end))

    table.insert(PluginEventConnections, plugin:OnInvoke("ToggleCollidesWith", function(toggleCollisionBlob)
        local collides = not PhysicsService:CollisionGroupsAreCollidable(toggleCollisionBlob.groupName, 
            toggleCollisionBlob.otherGroupName)
        ChangeHistoryService:SetWaypoint("Setting group collision state")
        PhysicsService:CollisionGroupSetCollidable(toggleCollisionBlob.groupName, toggleCollisionBlob.otherGroupName, collides)
        ChangeHistoryService:SetWaypoint("Set group collision state")
        SetStateAndRefresh({})
    end))

    table.insert(PluginEventConnections, plugin:OnInvoke("CreateCollisionGroup", function(groupName) 
        ChangeHistoryService:SetWaypoint("Creating collision group")
        PhysicsService:CreateCollisionGroup(groupName)
        ChangeHistoryService:SetWaypoint("Created collision group")
        SetStateAndRefresh({})
    end))

    table.insert(PluginEventConnections, plugin:OnInvoke("SelectPartsInCollisionGroup", function(groupName)
        game:GetService("Selection"):Set(getPartsInGroup(groupName))
    end))

end

local function unbindFromPluginEvents()
    -- Drop connection to events from plugin DM.
    for i, conn in ipairs(PluginEventConnections) do
        conn:Disconnect()
    end
end

local AssetDMConnections = {}

local function bindToAssetDMEvents()
    -- Listen for events from the Asset DM that should be relayed to the Plugin GUI.
    table.insert(AssetDMConnections, game:GetService("Selection").SelectionChanged:Connect(function()
        SetStateAndRefresh({})
    end))

    table.insert(AssetDMConnections, ChangeHistoryService.OnUndo:Connect(function()
        SetStateAndRefresh({})
    end))

    table.insert(AssetDMConnections, ChangeHistoryService.OnRedo:Connect(function()
        SetStateAndRefresh({})
    end))
end

local function unbindFromAssetDmEvents()
    -- Drop connections to this asset DM.
    for i, conn in ipairs(AssetDMConnections) do
        conn:Disconnect()
    end
end

local PollingGroupChanges = false
local function pollForCollisionGroupChanges()
    -- Poll for changes to collision groups.  When change detected, ping for 
    -- an update to GUI.
    PollingGroupChanges = true
    spawn(function()
        while PollingGroupChanges do
            if getGroupsChanged() then
                plugin:Invoke("SetStateAndRefresh", nil)
            end
            wait(1)
        end
    end)
end

local function stopPollingForCollisionGroupChanges()
    -- Stop polling for changes to collision groups.
    PollingGroupChanges = false
end

local function bindToCurrentDM()
    SetStateAndRefresh({})
    pollForCollisionGroupChanges()
    bindToAssetDMEvents()
    bindToPluginEvents()
end

local function unbindFromCurrentDM()
    unbindFromPluginEvents()
    unbindFromAssetDmEvents()
    stopPollingForCollisionGroupChanges()
end

local function bindToDataModelSession(dmSession)
    dmSession.CurrentDataModelTypeAboutToChange:Connect(function()
        if (plugin.HostDataModelTypeIsCurrent) then 
            unbindFromCurrentDM()
        end        
    end)
    dmSession.CurrentDataModelTypeChanged:Connect(function()
        if (plugin.HostDataModelTypeIsCurrent) then 
            bindToCurrentDM()
        end
    end)
    if (plugin.HostDataModelTypeIsCurrent) then 
        bindToCurrentDM()
    end
end

-- Listen to MDI instance of plugin.
-- When a new DM session starts, listen to it to keep track 
-- of which DM is current.
local mdiInstance = plugin.MultipleDocumentInterfaceInstance
bindToDataModelSession(mdiInstance.FocusedDataModelSession)
