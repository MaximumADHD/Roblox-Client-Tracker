local Plugin = script.Parent.Parent.Parent
local StudioService = game:GetService("StudioService")

local SetBulkImporterRunning = require(Plugin.Src.Actions.SetBulkImporterRunning)

--assetType: Enum.AssetType.Unknown - all file types, Enum.AssetType.Image - images, Enum.AssetType.MeshPart - meshes
return function(assetType)
        return function(store)
                StudioService:LaunchBulkImport(assetType)
                StudioService:ShowBulkImportView()
                store:dispatch(SetBulkImporterRunning(true))

                spawn(function()
                        local finished = StudioService.BulkImportFinished:wait()
                        if finished then
                                store:dispatch(SetBulkImporterRunning(false))
                        end
                end)
	end
end