local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local ActionType = require(Modules.LuaApp.Actions.ActionType)
local Immutable = require(Modules.Common.Immutable)
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

local AccessoryNames = {
	"Hat",
	"Hair Accessory",
	"Face Accessory",
	"Neck Accessory",
	"Shoulder Accessory",
	"Front Accessory",
	"Back Accessory",
	"Waist Accessory"
}

if not FFlagAvatarEditorUseNewCommonAction then
	return function(state, action)
		state = state or {}

		if action.type == ActionType.EquipAsset then
			if action.assetType == "Hat" then
				local hats = state.Hat or {}
				state = Immutable.Set(state, "Hat", {action.assetId, hats[1], hats[2]})
				for _, accessoryName in pairs(AccessoryNames) do
					if string.find(accessoryName, 'Accessory') and state[accessoryName] then
						state = Immutable.Set(state, accessoryName, {state[accessoryName][1]})
					end
				end
				return state
			elseif string.find(action.assetType, 'Accessory') then
				state = Immutable.Set(state, action.assetType, {action.assetId})
				local hats = state.Hat or {}
				state = Immutable.Set(state, "Hat", {hats[1], hats[2], hats[3]})
				for _, accessoryName in pairs(AccessoryNames) do
					if string.find(accessoryName, 'Accessory') and state[accessoryName] then
						state = Immutable.Set(state, accessoryName, {state[accessoryName][1]})
					end
				end
				return state
			end
			return Immutable.Set(state, action.assetType, {action.assetId})
		elseif action.type == ActionType.UnequipAsset then
			local assets = state[action.assetType] or {}
			return Immutable.Set(state, action.assetType, Immutable.RemoveValueFromList(assets, action.assetId))
		elseif action.type == ActionType.SetAssets or action.type == ActionType.SetOutfit then
			local result = {}
			for assetType, assetList in pairs(action.assets) do
				local assetIdTable = {}
				for _, assetId in pairs(assetList) do
					table.insert(assetIdTable, assetId)
				end
				if next(assetIdTable) ~= nil then
					result = Immutable.Set(result, assetType, assetIdTable)
				end
			end
			return result
		end

		return state
	end
else
	local EquipAsset = require(Modules.LuaApp.Actions.EquipAsset)
	local UnequipAsset = require(Modules.LuaApp.Actions.UnequipAsset)
	local SetAssets = require(Modules.LuaApp.Actions.SetAssets)
	local SetOutfit = require(Modules.LuaApp.Actions.SetOutfit)

	return function(state, action)
		state = state or {}

		if action.type == EquipAsset.name then
			if action.assetType == "Hat" then
				local hats = state.Hat or {}
				state = Immutable.Set(state, "Hat", {action.assetId, hats[1], hats[2]})
				for _, accessoryName in pairs(AccessoryNames) do
					if string.find(accessoryName, 'Accessory') and state[accessoryName] then
						state = Immutable.Set(state, accessoryName, {state[accessoryName][1]})
					end
				end
				return state
			elseif string.find(action.assetType, 'Accessory') then
				state = Immutable.Set(state, action.assetType, {action.assetId})
				local hats = state.Hat or {}
				state = Immutable.Set(state, "Hat", {hats[1], hats[2], hats[3]})
				for _, accessoryName in pairs(AccessoryNames) do
					if string.find(accessoryName, 'Accessory') and state[accessoryName] then
						state = Immutable.Set(state, accessoryName, {state[accessoryName][1]})
					end
				end
				return state
			end
			return Immutable.Set(state, action.assetType, {action.assetId})
		elseif action.type == UnequipAsset.name then
			local assets = state[action.assetType] or {}
			return Immutable.Set(state, action.assetType, Immutable.RemoveValueFromList(assets, action.assetId))
		elseif action.type == SetAssets.name or action.type == SetOutfit.name then
			local result = {}
			for assetType, assetList in pairs(action.assets) do
				local assetIdTable = {}
				for _, assetId in pairs(assetList) do
					table.insert(assetIdTable, assetId)
				end
				if next(assetIdTable) ~= nil then
					result = Immutable.Set(result, assetType, assetIdTable)
				end
			end
			return result
		end

		return state
	end
end

