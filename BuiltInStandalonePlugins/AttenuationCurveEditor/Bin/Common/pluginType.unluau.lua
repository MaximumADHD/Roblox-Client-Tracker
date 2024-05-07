-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.asset = "Asset"
var0.standalone = "Standalone"
function var0.get()
   if game:GetFastFlag("LoadAttenuationCurveEditorInAssetDM") then
      return "Asset"
   end
   return "Standalone"
end

return var0
