-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Packages.RoactRodux)
local var3 = require(var0.Packages.React).useContext
return function()
   return var3(var2.StoreContext.Consumer)
end
