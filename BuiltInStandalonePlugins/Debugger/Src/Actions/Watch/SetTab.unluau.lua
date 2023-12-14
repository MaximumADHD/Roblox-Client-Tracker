-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Src.Models.Watch.TableTab)
local var3 = var1.Dash.includes
return var1.Util.Action(script.Name, function(arg1)
   local var0 = var3(var2, arg1)
   assert()
   local var1 = {}
   var1.currentTab = arg1
   return var1
end)
