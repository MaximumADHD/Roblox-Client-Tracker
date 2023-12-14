-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Components.Tools.ToolParts.EditSettings)
local var3 = var0.Src.Actions
local var4 = require(var3.ApplyToolAction)
local var5 = require(var3.SetMergeEmpty)
local var6 = require(var0.Src.Components.Functions.TerrainRegionEditor)
local var7 = var1.PureComponent:extend(script.Name)
function var7.init(arg1)
   function arg1.updateProperties()
      local var565 = {}
      var565.mergeEmpty = arg1.props.mergeEmpty
      var6.ChangeProperties(var565)
   end
   
end

function var7.didUpdate(arg1)
   arg1.updateProperties()
end

function var7.didMount(arg1)
   arg1.updateProperties()
end

function var7.render(arg1)
   local var579 = {}
   var579.LayoutOrder = 1
   var579.mergeEmpty = arg1.props.mergeEmpty
   var579.setMergeEmpty = arg1.props.dispatchSetMergeEmpty
   return var1.createElement(var2, var579)
end

return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.toolName = arg1.Tools.currentTool
   var0.mergeEmpty = arg1.RegionTool.mergeEmpty
   return var0
end, function(arg1)
   local function fun0()
      local var594 = {}
      var594.mergeEmpty = arg1.props.mergeEmpty
      var6.ChangeProperties(var594)
   end
   
   local var0 = {}
   function var0.dispatchSetMergeEmpty(arg1)
      function arg1.updateProperties()
         local var602 = {}
         var602.mergeEmpty = arg1.props.mergeEmpty
         var6.ChangeProperties(var602)
      end
      
   end
   
   return var0
end)(var7)
