-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = require(script.RoactElementRow)
local var4 = var2.DeveloperTools.RoactInspectorApi
local var5 = require(var0.Packages.Dash)
local var6 = var5.shallowEqual
local var7 = var5.mapOne
local var8 = var5.values
local var9 = table.sort
local var10 = var2.ContextServices
local var11 = var2.UI.TreeView
local var12 = var0.Src.Actions
local var13 = require(var12.RoactInspector.SelectInstance)
local var14 = require(var12.RoactInspector.ToggleInstance)
local var15 = var1.PureComponent:extend("RoactElementTree")
function var15.init(arg1)
   function arg1.onToggleInstance(arg1)
      local var0 = arg1.item
      local var1 = arg1.props.Expansion[var0]
      arg1.item = var1
      arg1.props.toggleInstance({})
      if var1 then
         local var0 = arg1.props.Inspector:get():getTargetApi()
         local var72 = var4
         var72 = var0
         if var72.isInstance(var72) then
            var0:getChildren(var0.Path)
         end
      end
   end
   
   function arg1.onSelectInstance(arg1)
      local var0 = arg1.item
      if arg1.props.Expansion[var0] then
         local var84 = arg1
         var84 = arg1
         var84.onToggleInstance(var84)
      end
      arg1.item = true
      arg1.props.selectInstance({})
      local var1 = arg1.props.Inspector:get():getTargetApi()
      local var98 = var4
      var98 = var1
      if var98.isInstance(var98) then
         var1:getBranch(var0.Path)
      end
   end
   
   function arg1.onEnterRow(arg1)
      arg1.hoveredItem = arg1.item
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var113 = var4
      var113 = var0
      if var113.isInstance(var113) then
         var0:highlight(arg1.item.Path)
      end
   end
   
   function arg1.onLeaveRow(arg1)
      if arg1.item ~= arg1.hoveredItem then
      end
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var130 = var4
      var130 = var0
      if var130.isInstance(var130) then
         var0:dehighlight()
      end
   end
   
   function arg1.getRowProps(arg1, arg2)
      if arg1(arg2, var7.item.Path) then
         return arg1
      end
      return nil
   end
   
end

local function var16(arg1)
   if arg1.Children then
      local var0 = var8(arg1.Children) or {}
   end
   local var0 = {}
   var9(var0, function(arg1, arg2)
      if arg2.Name > arg1.Name then
         local var0 = false
      end
      return true
   end)
   return var0
end

local function fun8(arg1)
   local var0 = arg1.props
   local var164 = {}
   var164.Size = UDim2.new(1, 0, 1, 0)
   var164.Expansion = var0.Expansion
   var164.GetRowProps = arg1.getRowProps
   var164.RootItems = var16(var0.RootInstance)
   var164.RowComponent = var3
   var164.GetChildren = var16
   var164.ScrollingDirection = Enum.ScrollingDirection.Y
   var164.Style = "BorderBox"
   return var1.createElement(var11, var164)
end

function var15.render(arg1)
   local var0 = arg1.props
   local var164 = {}
   var164.Size = UDim2.new(1, 0, 1, 0)
   var164.Expansion = var0.Expansion
   var164.GetRowProps = arg1.getRowProps
   var164.RootItems = var16(var0.RootInstance)
   var164.RowComponent = var3
   var164.GetChildren = var16
   var164.ScrollingDirection = Enum.ScrollingDirection.Y
   var164.Style = "BorderBox"
   return var1.createElement(var11, var164)
end

fun8 = var10.withContext
local var181 = {}
var181.Stylizer = var10.Stylizer
var181.Inspector = require(var0.Src.Util.InspectorContext)
var15 = fun8(var181)(var15)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.SelectedNodeIndex = arg1.RoactInspector.selectedNodeIndex
   var0.RootInstance = arg1.RoactInspector.rootInstance
   var0.Flash = arg1.RoactInspector.flashInstances
   var0.Selection = arg1.RoactInspector.selectedInstances
   var0.Expansion = arg1.RoactInspector.expandedInstances
   return var0
end, function(arg1)
   local var0 = {}
   function var0.selectInstance(arg1)
      local var0 = arg1.item
      local var1 = arg1.props.Expansion[var0]
      arg1.item = var1
      arg1.props.toggleInstance({})
      if var1 then
         local var0 = arg1.props.Inspector:get():getTargetApi()
         local var220 = var4
         var220 = var0
         if var220.isInstance(var220) then
            var0:getChildren(var0.Path)
         end
      end
   end
   
   function var0.toggleInstance(arg1)
      local var0 = arg1.item
      if arg1.props.Expansion[var0] then
         local var232 = arg1
         var232 = arg1
         var232.onToggleInstance(var232)
      end
      arg1.item = true
      arg1.props.selectInstance({})
      local var1 = arg1.props.Inspector:get():getTargetApi()
      local var246 = var4
      var246 = var1
      if var246.isInstance(var246) then
         var1:getBranch(var0.Path)
      end
   end
   
   return var0
end)(var15)
