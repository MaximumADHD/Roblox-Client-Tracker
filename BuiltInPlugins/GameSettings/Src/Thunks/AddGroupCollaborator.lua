--[[
	When we add a group as a collaborator, we have to display it in the UI and then download its ranks
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)

local Analytics = require(Plugin.Src.Util.Analytics)

local GetGroupRanks = require(Plugin.Src.Networking.Requests.Permissions.GroupRoles).Get
local AddChange = require(Plugin.Src.Actions.AddChange)
local AssignRolePermissions = require(Plugin.Src.Thunks.AssignRolePermissions)

return function(groupId, groupName, defaultAction)
	return function(store)
		local state = store:getState()
		local settings = state.Settings
		local groupMetadata = settings.Changed.groupMetadata or settings.Current.groupMetadata

		local newGroupMetadata = Cryo.Dictionary.join(groupMetadata, {
			[groupId] = {
				Action = defaultAction,
				Name = groupName
			}
		})

		-- TODO move groupMetadata out of settings store so it doesn't allow you to save
		store:dispatch(AddChange("groupMetadata", newGroupMetadata))
		
		spawn(function()
			local success,ranks = GetGroupRanks(groupId):await()
			store:dispatch(AssignRolePermissions(success, groupId, ranks))
		end)
	end
end