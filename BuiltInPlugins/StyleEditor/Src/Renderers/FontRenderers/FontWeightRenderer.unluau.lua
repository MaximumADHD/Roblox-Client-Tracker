-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("TextService")
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.React)
local var3 = require(var1.Packages.Framework)
local var4 = require(var1.Packages.Dash)
local var5 = var3.Util.Promise
local var6 = var3.UI.PropertyCell.Renderers.Select
local var7 = var4.collectArray
local var8 = var4.join
local var9 = {}
local var10 = var7(Enum.FontWeight:GetEnumItems(), function(arg1, arg2)
   local var0 = {}
   var0.Id = arg2
   var0.Label = arg2.Name
   return var0
end)
local function var11(arg1)
   if var9[arg1] then
      return var9[arg1]
   end
   return var5.new(function(arg1, arg2)
      local var0 = {}
      var0.Id = arg2
      var0.Label = arg2.Name
      return var0
   end):andThen(function()
      return var7:GetFamilyInfoAsync(var9)
   end)
end

return function(arg1)
   local var0 = arg1.Value
   local var1 = var11(var0.Family)
   if var1._status == "OnChanged" then
      local var0 = var10
   end
   local var2 = {}
   function var2.OnChanged(arg1, arg2)
      local var0 = {}
      var0.Id = arg2
      var0.Label = arg2.Name
      return var0
   end
   
   var2.PlaceholderText = "Bold (procedural)"
   local var448 = {}
   var448.Items = var1
   var2.Schema = var448
   var2.Value = var0.Weight
   return var2.createElement(var6, var8(arg1, var2))
end
