-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("StylingService")
local var1 = require(script.Parent.Parent.Parent.Src.Types)
local var2 = {}
function var2.getStyleInfo(arg1)
   assert(arg1 and arg1:IsA("StyleRule"), "expecting style rule")
   if pcall(function()
      return var0:GetStyleInfo(arg1)
   end) then
      return 
   end
   return nil
end

return var2
