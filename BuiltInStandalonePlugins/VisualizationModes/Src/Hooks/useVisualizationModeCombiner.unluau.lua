-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Src.Types)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Src.Model.VisualizationModeCombiner)
local var4 = require(var0.Packages.Framework)
return function()
   local var0 = var4.ContextServices.Plugin:use():get()
   local var1 = var2.useState(function()
      return var3.new(var0)
   end)
   var2.useEffect(function()
      var1:destroy()
   end, {})
   var2.useEffect(function()
      return function()
         return var3.new(var0)
      end
   end, {})
   local var181 = {}
   var181.onVisualizationModeToggle = var2.useCallback(function(arg1)
      var1(arg1)
   end, {})
   var181.onVisualizationModeCategoryToggle = var2.useCallback(function()
      var1:Disconnect()
   end, {})
   var181.state = var2.useState(function()
      local var0 = var1:getState()
      if not var0 then
         local var0 = {}
         var0.categories = {}
         var0.recentModes = {}
      end
      return var0
   end)
   var181.combiner = var1
   return table.freeze(var181)
end
