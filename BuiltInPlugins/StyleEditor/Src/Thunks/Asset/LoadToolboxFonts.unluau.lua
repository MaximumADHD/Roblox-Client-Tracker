-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("StudioService")
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Dash).collectArray
local var3 = require(var1.Src.Reducers.RootReducer)
local var4 = require(var1.Src.Util.DebugFlags)
local var5 = require(var1.Src.Thunks.Asset.LoadFontFamilyInfo)
local var6 = require(var1.Src.API.Toolbox.getInventoryAssets)
local var7 = require(var1.Src.Types)
local var8 = require(var1.Src.Thunks.Types)
return function()
   return function(arg1, arg2)
      local var0 = arg2.Networking
      local var1 = var0:GetUserId()
      function(arg1, arg2)
         return "rbxassetid://" ... arg2.id
      end(nil)
   end
end
