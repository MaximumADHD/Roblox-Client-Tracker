-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.Dash)
local var4 = var3.values
local var5 = var3.keys
local var6 = var2.UI.InstanceTreeView
local var7 = var0.Src.Actions
local var8 = require(var7.SelectTarget)
local var9 = require(var7.ToggleTarget)
local var10 = var1.PureComponent:extend("TargetTree")
local var11 = game:GetService("UserInputService")
function var10.init(arg1)
   function arg1.onSelectTarget(arg1)
      local var0 = arg1:getTargetFromChange(arg1)
      if not var0 then
      end
      arg1.props.Inspector:get():attachRoactTree(var0.BridgeId, var0.Id):getRoot()
      local var277 = arg1.props
      var277 = var0
      var277.selectTarget(var277)
      var11.MouseIconEnabled = true
   end
   
end

function var10.getTargetFromChange(arg1, arg2)
   local var0 = var5(arg2)[1]
   if var0.BridgeId then
      return var0
   end
   return nil
end

local function fun9(arg1)
   local var0 = arg1.props
   local var294 = {}
   var294.Instances = var4(var0.Instances)
   var294.Expansion = var0.Expansion
   var294.Selection = {}
   var294.OnExpansionChange = var0.toggleTarget
   var294.OnSelectionChange = arg1.onSelectTarget
   var294.Size = UDim2.new(1, 0, 1, 0)
   var294.Style = "BorderBox"
   return var1.createElement(var6, var294)
end

function var10.render(arg1)
   local var0 = arg1.props
   local var294 = {}
   var294.Instances = var4(var0.Instances)
   var294.Expansion = var0.Expansion
   var294.Selection = {}
   var294.OnExpansionChange = var0.toggleTarget
   var294.OnSelectionChange = arg1.onSelectTarget
   var294.Size = UDim2.new(1, 0, 1, 0)
   var294.Style = "BorderBox"
   return var1.createElement(var6, var294)
end

fun9 = var2.ContextServices.withContext
local var310 = {}
var310.Inspector = require(var0.Src.Util.InspectorContext)
var10 = fun9(var310)(var10)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.Instances = arg1.Targets.targets
   var0.Expansion = arg1.Targets.expandedTargets
   return var0
end, function(arg1)
   local var0 = {}
   function var0.selectTarget(arg1)
      local var0 = arg1:getTargetFromChange(arg1)
      if not var0 then
      end
      arg1.props.Inspector:get():attachRoactTree(var0.BridgeId, var0.Id):getRoot()
      local var340 = arg1.props
      var340 = var0
      var340.selectTarget(var340)
      var11.MouseIconEnabled = true
   end
   
   function var0.toggleTarget(arg1)
      function arg1.onSelectTarget(arg1)
         local var0 = arg1:getTargetFromChange(arg1)
         if not var0 then
         end
         arg1.props.Inspector:get():attachRoactTree(var0.BridgeId, var0.Id):getRoot()
         local var361 = arg1.props
         var361 = var0
         var361.selectTarget(var361)
         var11.MouseIconEnabled = true
      end
      
   end
   
   return var0
end)(var10)
