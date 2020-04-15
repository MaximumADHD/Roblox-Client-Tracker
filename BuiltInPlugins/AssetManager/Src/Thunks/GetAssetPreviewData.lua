local Plugin = script.Parent.Parent.Parent

local Players = game:GetService("Players")

local GetRootTreeViewInstance = require(Plugin.Src.Thunks.GetRootTreeViewInstance)

local SetAssetPreviewData = require(Plugin.Src.Actions.SetAssetPreviewData)
local SetAssetOwnerName = require(Plugin.Src.Actions.SetAssetOwnerName)


--[[
    "Created": "2020-04-01T15:41:04.0992192-05:00", --> "Created": "4/1/2020 3:41:04 PM",
    "Updated": "2020-04-01T15:41:03.8462845-05:00" --> "Updated": "4/1/2020 3:41:03 PM",
]]

local function formatDateTime(dateTime)
    local yearIndex = string.find(dateTime, "-")
    local year = string.sub(dateTime, 1, yearIndex-1)
    dateTime = string.gsub(dateTime, year, "")


    local monthIndex = string.find(dateTime, "-", 2)
    local month = string.sub(dateTime, 2, monthIndex - 1)
    dateTime = string.gsub(dateTime, month, "")
    if string.find(month, "0") == 1 then
        month = string.sub(month, 2)
    end

    local dayIndex = string.find(dateTime, "T")
    local day = string.sub(dateTime, 3, dayIndex - 1)
    dateTime = string.gsub(dateTime, day, "")
    if string.find(day, "0") == 1 then
        day = string.sub(day, 2)
    end

    local timeIndex = string.find(dateTime, "%.")
    local time = string.sub(dateTime, 4, timeIndex - 1)
    local hour = tonumber(string.sub(time, 1, 2))

    local amPM = "AM"
    if hour >= 12 then
        amPM = "PM"
        time = string.gsub(time, tostring(hour), tostring(hour - 12))
    end

    return string.format("%s/%s/%s %s %s", month, day, year, time, amPM)
end

return function(apiImpl, assetIds)
    return function(store)
        apiImpl.Develop.V1.Assets.assets(assetIds):makeRequest()
        :andThen(function(response)
            local body = response.responseBody
            if not body or #body.data == 0 then
                return
            end

            local assetPreviewData = {}
            for _, assetData in ipairs(body.data) do
                local assetId = assetData.id
                local userId = assetData.creator.targetId

                local assetName = assetData.name
                local assetTypeId = assetData.typeId

                if assetTypeId == Enum.AssetType.Image.Value and string.find(assetData.name, "Images/") then
                    assetName = string.gsub(assetData.name, "Images/", "")
                elseif assetTypeId == Enum.AssetType.MeshPart.Value and string.find(assetData.name, "Meshes/") then
                    assetName = string.gsub(assetData.name, "Meshes/", "")
                elseif assetTypeId == Enum.AssetType.Lua.Value and string.find(assetData.name, "Scripts/") then
                    assetName = string.gsub(assetData.name, "Scripts/", "")
                end

                local created = formatDateTime(assetData.created)
                local updated = formatDateTime(assetData.updated)

                assetPreviewData[assetId] = {
                    Asset = {
                        Id = assetData.id,
                        Type = assetData.type,
                        TypeId = assetTypeId,
                        Name = assetName,
                        Description = assetData.description,
                        AssetGenres = assetData.genres,
                        Created = created,
                        Updated = updated,
                    },
                    Creator = {
                        Type = assetData.creator.type,
                        TypeId = assetData.creator.typeId,
                        TargetId = assetData.creator.targetId,
                    },
                }
                spawn(function()
                    local username = Players:GetNameFromUserIdAsync(userId)
                    if username then
                        store:dispatch(SetAssetOwnerName(assetId, username))
                    end
                end)

                store:dispatch(GetRootTreeViewInstance(assetId, assetData.typeId))
            end

            store:dispatch(SetAssetPreviewData(assetPreviewData))
            return response
        end, function()
            error("Failed to load data for Asset Preview")
        end)
    end
end