-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AssetImporter").Src.Actions.SetPreviewInstance)
return function(arg1)
   return function(arg1)
      if arg1 then
         local var0 = arg1:Clone()
         if var0:IsA("KeyframeSequence") then
            local var0 = arg1:getState().assetImportSession:GetImportTree():GetPreview()
            local var1 = Instance.new("WorldModel")
            var0.Parent = var0
            var0.Parent = var1
            var0 = var1
         end
         local var1 = var0(var0)
         arg1:dispatch()
      end
      local var0 = var0(nil)
      arg1:dispatch()
   end
end
