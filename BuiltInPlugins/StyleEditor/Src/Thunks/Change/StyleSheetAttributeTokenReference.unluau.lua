-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("StylingService")
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Src.Reducers.RootReducer)
local var3 = require(var1.Src.Thunks.Types)
local var4 = require(var1.Src.Types)
return function(arg1, arg2)
   return function()
      local var0 = var0:GetStyleSheetInfo(arg1)
      local var31 = var0.Variables[arg2]
      if var31 == "GetStyleSheetInfo" then
         if var31 == "$" then
            local var0 = ""
         end
      end
      arg1:SetAttribute(arg2, "")
      return Enum.FinishRecordingOperation.Commit
   end
end
