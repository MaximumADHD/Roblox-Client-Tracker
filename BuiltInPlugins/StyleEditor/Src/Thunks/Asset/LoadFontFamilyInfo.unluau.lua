-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("TextService")
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Promise)
local var3 = require(var1.Packages.Dash).startsWith
local var4 = require(var1.Src.Reducers.RootReducer)
local var5 = require(var1.Src.Actions.Asset.SaveFontMetadata)
local var6 = require(var1.Src.Types)
local var7 = require(var1.Src.Thunks.Types)
return function(arg1)
   return function()
      return arg1:GetFamilyInfoAsync(var2)
   end
end
