-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("ReplicatedStorage")
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Dash)
local var3 = var2.startsWith
local var4 = var2.filter
local var5 = require(var1.Src.Util.DesignHelpers)
local var6 = require(var1.Src.Reducers.RootReducer)
local var7 = require(var1.Src.Thunks.Types)
return function(arg1)
   return function(arg1)
      return arg1(arg1:GetAttribute("StyleCategory"), "Tokens")
   end
end
