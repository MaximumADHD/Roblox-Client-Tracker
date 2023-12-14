-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Utility.DebugFlags)
local var1 = {}
if not var0.RunningUnderCLI() or var0.RunTests() then
   local var0 = game:GetService("AssetImportService")
   function var1.PickFileWithPrompt()
      return var0:PickFileWithPrompt()
   end
   
   return var1
end
function var1.PickFileWithPrompt()
   return "File/Picked/From/Prompt"
end

return var1
