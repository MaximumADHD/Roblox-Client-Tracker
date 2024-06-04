-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AudioEqualizerEditor").Bin.Common.defineLuaFlags)
local var1 = {}
var1.Asset = "Asset"
var1.Standalone = "Standalone"
function var1.get()
   if var0.getFFlagLoadAudioEqualizerEditorInAssetDM() then
      return "Asset"
   end
   return "Standalone"
end

return var1
