-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = var0.Src.Components.Tools.ToolParts
local var4 = require(var3.ButtonGroup)
local var5 = require(var3.EditSettings)
local var6 = require(var3.MaterialSettings)
local var7 = var0.Src.Actions
local var8 = require(var7.ApplyToolAction)
local var9 = require(var7.SetMaterial)
local var10 = require(var7.SetMergeEmpty)
local var11 = require(var0.Src.Util.TerrainEnums)
local var12 = require(var0.Src.Components.Functions.TerrainRegionEditor)
local var13 = var1.PureComponent:extend(script.Name)
function var13.init(arg1)
   function arg1.onFillClicked()
      if arg1.props.material then
         var12.OnButtonClick()
      end
   end
   
   function arg1.updateProperties()
      local var67 = {}
      var67.material = arg1.props.material
      var67.mergeEmpty = arg1.props.mergeEmpty
      var12.ChangeProperties(var67)
   end
   
end

function var13.didUpdate(arg1)
   arg1.updateProperties()
end

function var13.didMount(arg1)
   arg1.updateProperties()
end

local function fun5(arg1)
   local var87 = {}
   local var91 = {}
   var91.LayoutOrder = 1
   var91.mergeEmpty = arg1.props.mergeEmpty
   var91.setMergeEmpty = arg1.props.dispatchSetMergeEmpty
   var87.EditSettings = var1.createElement(var5, var91)
   local var99 = {}
   var99.LayoutOrder = 2
   var99.material = arg1.props.material
   var99.setMaterial = arg1.props.dispatchSetMaterial
   var87.MaterialSettings = var1.createElement(var6, var99)
   local var107 = {}
   var107.LayoutOrder = 3
   local var0 = {}
   var0.Key = "Fill"
   var0.Name = arg1.props.Localization:getText("ToolName", "Fill")
   var0.Active = true
   var0.OnClicked = arg1.onFillClicked
   var107.Buttons = {}
   var87.FillButtonFrame = var1.createElement(var4, var107)
   return var1.createFragment(var87)
end

function var13.render(arg1)
   local var87 = {}
   local var91 = {}
   var91.LayoutOrder = 1
   var91.mergeEmpty = arg1.props.mergeEmpty
   var91.setMergeEmpty = arg1.props.dispatchSetMergeEmpty
   var87.EditSettings = var1.createElement(var5, var91)
   local var99 = {}
   var99.LayoutOrder = 2
   var99.material = arg1.props.material
   var99.setMaterial = arg1.props.dispatchSetMaterial
   var87.MaterialSettings = var1.createElement(var6, var99)
   local var107 = {}
   var107.LayoutOrder = 3
   local var0 = {}
   var0.Key = "Fill"
   var0.Name = arg1.props.Localization:getText("ToolName", "Fill")
   var0.Active = true
   var0.OnClicked = arg1.onFillClicked
   var107.Buttons = {}
   var87.FillButtonFrame = var1.createElement(var4, var107)
   return var1.createFragment(var87)
end

fun5 = var2.withContext
local var120 = {}
var120.Localization = var2.Localization
var13 = fun5(var120)(var13)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.toolName = var11.ToolId.Fill
   var0.material = arg1.FillTool.material
   var0.mergeEmpty = arg1.FillTool.mergeEmpty
   return var0
end, function(arg1)
   local function fun0()
      if arg1.props.material then
         var12.OnButtonClick()
      end
   end
   
   local var0 = {}
   function var0.dispatchSetMaterial()
      local var144 = {}
      var144.material = arg1.props.material
      var144.mergeEmpty = arg1.props.mergeEmpty
      var12.ChangeProperties(var144)
   end
   
   function var0.dispatchSetMergeEmpty(arg1)
      function arg1.onFillClicked()
         if arg1.props.material then
            var12.OnButtonClick()
         end
      end
      
      function arg1.updateProperties()
         local var159 = {}
         var159.material = arg1.props.material
         var159.mergeEmpty = arg1.props.mergeEmpty
         var12.ChangeProperties(var159)
      end
      
   end
   
   return var0
end)(var13)
