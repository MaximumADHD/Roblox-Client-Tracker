-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Util.TerrainEnums).ToolId
local var4 = var1.PureComponent:extend(script.Name)
function var4.didUpdate(arg1, arg2, arg3)
   if arg2.currentTab ~= arg1.props.currentTab then
      arg1.props.Analytics:report("changeTab", arg1.props.currentTab)
   end
   if arg2.currentTool ~= arg1.props.currentTool then
      if arg1.props.currentTool ~= var3.None then
         arg1.props.Analytics:report("changeTool", arg1.props.currentTool)
      end
   end
   if arg1.props.currentTool == "report" then
      arg1.props.PluginActivationController:deselectTool()
   end
   arg1.props.PluginActivationController:activateTool(arg1.props.currentTool)
end

local function fun22(arg1)
   assert(arg1.props[var1.Children], "ToolSelectionListener can\'t have children")
   return nil
end

function var4.render(arg1)
   assert(arg1.props[var1.Children], "ToolSelectionListener can\'t have children")
   return nil
end

fun22 = var2.withContext
local var1005 = {}
var1005.Analytics = var2.Analytics
local var1007 = require(var0.Src.ContextItems).PluginActivationController
var1005.PluginActivationController = var1007
var4 = fun22(var1005)(var4)
function var1007(arg1, arg2)
   local var0 = {}
   var0.currentTab = arg1.Tools.currentTab
   var0.currentTool = arg1.Tools.currentTool
   return var0
end

return require(var0.Packages.RoactRodux).connect(var1007, nil)(var4)
