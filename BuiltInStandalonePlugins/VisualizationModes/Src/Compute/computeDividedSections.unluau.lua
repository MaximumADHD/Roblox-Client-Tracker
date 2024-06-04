-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Types)
local var3 = require(var0.Src.Components.Sections.VisualizationModeSectionDivider)
local var4 = require(var0.Packages.Framework).Util.LayoutOrderIterator
return function()
   local var0 = var4.new()
   local var1 = {}
   local var2 = {}
   local function fun0()
      local var0 = var1
      local var33 = {}
      var33.LayoutOrder = var0:getNextOrder()
      local var1 = var1.createElement(var3, var33)
      table.insert()
   end
   
   local var86 = {}
   function var86.addSection(arg1)
      local var40 = var2
      arg1.key = arg1.renderContent(var0:getNextOrder(), arg1.visible)
      if arg1.visible == "key" then
         local var0 = var1
         local var53 = {}
         var53.LayoutOrder = var0:getNextOrder()
         local var1 = var1.createElement(var3, var53)
         table.insert()
      end
   end
   
   function var86.getSections()
      local var0 = table.clone(var1)
      table.remove(var0)
      local var69 = {}
      var69.Sections = var1.createElement(var1.Fragment, {}, var2)
      var69.Dividers = var1.createElement(var1.Fragment, {}, var0)
      return var1.createElement(var1.Fragment, {}, var69)
   end
   
   return table.freeze(var86)
end
