-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Dash)
local var2 = var1.filter
local var3 = var1.map
local var4 = require(var0.Src.Reducers.RootReducer)
local var5 = require(var0.Src.Thunks.Asset.LoadFontFamilyInfo)
local var6 = require(var0.Src.Thunks.Types)
return function()
   return function(arg1, arg2)
      local var0 = var5(var3(var2(Enum.Font:GetEnumItems(), function(arg1)
         if arg1 == "Unknown" then
            local var0 = false
         end
         return true
      end), function(arg1)
         return Font.fromEnum(arg1).Family
      end))
      arg1:dispatch()
   end
end
