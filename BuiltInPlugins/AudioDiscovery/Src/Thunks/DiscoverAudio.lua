--[[
	Find audio in the place and populate its data
]]
local Main = script.Parent.Parent.Parent
local UpdateLocations = require(Main.Src.Actions.UpdateLocations)

local Framework = require(Main.Packages.Framework)
local findAllAssetIds = require(Main.Src.Util.findAllAssetIds)

local Dash = Framework.Dash
local map = Dash.map
local forEach = Dash.forEach

return function()
	return function(store, services)
		local locations = {}

		for assetId, usages in pairs(findAllAssetIds()) do
			services.SoundAssetChecker:addAssetId(assetId)
			locations[assetId] = map(usages, function(instance: Instance)
				return {
					Instance = instance,
					Path = instance:GetFullName(),
				}
			end)
		end

		local rows = store:getState().Audio.Rows
		-- Empty instances for missing rows
		forEach(rows, function(row)
			if not locations[row.Id] then
				locations[row.Id] = {}
				services.SoundAssetChecker:resolved(row.Id)
			end
		end)

		services.SoundAssetChecker:flush()

		store:dispatch(UpdateLocations(locations))
	end
end
