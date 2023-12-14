-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.ContextServices
local var4 = var1.DeveloperTools.RoactInspectorApi
local var5 = var1.UI
local var6 = var5.Pane
local var7 = var5.ScrollingFrame
local var8 = require(var0.Packages.Dash)
local var9 = var8.collect
local var10 = var8.find
local var11 = var8.shallowEqual
local var12 = require(script.NodeListRow)
local var13 = require(var0.Src.Util.traceSource)
local var14 = require(var0.Src.Actions.RoactInspector.SelectNode)
local var15 = var2.PureComponent:extend("NodeList")
function var15.init(arg1)
   function arg1.onSelectNode(arg1)
      local var57 = arg1.props
      var57 = arg1
      var57.selectNode(var57)
      local var1 = arg1.props.Inspector:get():getTargetApi()
      local var66 = var4
      var66 = var1
      if var66.isInstance(var66) then
         local var70 = arg1.props
         var70 = arg1
         local var73 = "props"
         var1:getFields(var70.SelectedPath, var70, {})
         local var76 = arg1.props
         var76 = arg1
         local var79 = "state"
         var1:getFields(var76.SelectedPath, var76, {})
         local var82 = arg1.props
         var82 = arg1
         local var2 = "_context"
         var1:getFields(var82.SelectedPath, var82, {})
      end
   end
   
end

function var15.getFlash(arg1)
   local var0 = var10(arg1.props.Flash, function(arg1)
      local var93 = arg1.props
      var93 = arg1
      var93.selectNode(var93)
      local var1 = arg1.props.Inspector:get():getTargetApi()
      local var102 = var4
      var102 = var1
      if var102.isInstance(var102) then
         local var106 = arg1.props
         var106 = arg1
         local var109 = "props"
         var1:getFields(var106.SelectedPath, var106, {})
         local var112 = arg1.props
         var112 = arg1
         local var115 = "state"
         var1:getFields(var112.SelectedPath, var112, {})
         local var118 = arg1.props
         var118 = arg1
         local var2 = "_context"
         var1:getFields(var118.SelectedPath, var118, {})
      end
   end)
   if var0 then
      if os.clock() - var0.time < 1 then
         return var0
      end
   end
   return nil
end

function var15.onSelectLink(arg1, arg2)
   local var0 = var13(arg2)
   if var0 then
      arg1.props.Plugin:get():OpenScript(var0, var140)
   end
end

local function fun6(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = arg1:getFlash()
   local var185 = {}
   var185.Padding = var1.Padding
   var185.Size = var0.Size
   var185.Style = "BorderBox"
   local var189 = {}
   local var193 = {}
   var193.Size = UDim2.fromScale(1, 1)
   var193.Style = var1.ScrollingFrame
   var193.AutoSizeCanvas = true
   local var200 = {}
   var200.SortOrder = Enum.SortOrder.LayoutOrder
   var193.AutoSizeLayoutOptions = var200
   var200 = var9(var0.Nodes, function(arg1)
      local var151 = arg1.props
      var151 = arg1
      var151.selectNode(var151)
      local var1 = arg1.props.Inspector:get():getTargetApi()
      local var160 = var4
      var160 = var1
      if var160.isInstance(var160) then
         local var164 = arg1.props
         var164 = arg1
         local var167 = "props"
         var1:getFields(var164.SelectedPath, var164, {})
         local var170 = arg1.props
         var170 = arg1
         local var173 = "state"
         var1:getFields(var170.SelectedPath, var170, {})
         local var176 = arg1.props
         var176 = arg1
         local var2 = "_context"
         var1:getFields(var176.SelectedPath, var176, {})
      end
   end)
   var189.ScrollingFrame = var2.createElement(var7, var193, var200)
   return var2.createElement(var6, var185, var189)
end

function var15.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = arg1:getFlash()
   local var185 = {}
   var185.Padding = var1.Padding
   var185.Size = var0.Size
   var185.Style = "BorderBox"
   local var189 = {}
   local var193 = {}
   var193.Size = UDim2.fromScale(1, 1)
   var193.Style = var1.ScrollingFrame
   var193.AutoSizeCanvas = true
   local var200 = {}
   var200.SortOrder = Enum.SortOrder.LayoutOrder
   var193.AutoSizeLayoutOptions = var200
   var200 = var9(var0.Nodes, function(arg1)
      local var151 = arg1.props
      var151 = arg1
      var151.selectNode(var151)
      local var1 = arg1.props.Inspector:get():getTargetApi()
      local var160 = var4
      var160 = var1
      if var160.isInstance(var160) then
         local var164 = arg1.props
         var164 = arg1
         local var167 = "props"
         var1:getFields(var164.SelectedPath, var164, {})
         local var170 = arg1.props
         var170 = arg1
         local var173 = "state"
         var1:getFields(var170.SelectedPath, var170, {})
         local var176 = arg1.props
         var176 = arg1
         local var2 = "_context"
         var1:getFields(var176.SelectedPath, var176, {})
      end
   end)
   var189.ScrollingFrame = var2.createElement(var7, var193, var200)
   return var2.createElement(var6, var185, var189)
end

fun6 = var3.withContext
local var204 = {}
var204.Stylizer = var3.Stylizer
var204.Plugin = var3.Plugin
var204.Inspector = require(var0.Src.Util.InspectorContext)
var15 = fun6(var204)(var15)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.Flash = arg1.RoactInspector.flashInstances
   var0.Nodes = arg1.RoactInspector.nodes
   var0.SelectedPath = arg1.RoactInspector.selectedPath
   var0.SelectedIndex = arg1.RoactInspector.selectedNodeIndex
   return var0
end, function(arg1)
   local var0 = {}
   function var0.selectNode(arg1)
      local var226 = arg1.props
      var226 = arg1
      var226.selectNode(var226)
      local var1 = arg1.props.Inspector:get():getTargetApi()
      local var235 = var4
      var235 = var1
      if var235.isInstance(var235) then
         local var239 = arg1.props
         var239 = arg1
         local var242 = "props"
         var1:getFields(var239.SelectedPath, var239, {})
         local var245 = arg1.props
         var245 = arg1
         local var248 = "state"
         var1:getFields(var245.SelectedPath, var245, {})
         local var251 = arg1.props
         var251 = arg1
         local var2 = "_context"
         var1:getFields(var251.SelectedPath, var251, {})
      end
   end
   
   return var0
end)(var15)
