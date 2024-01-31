-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.AvatarToolsShared)
local var3 = require(var0.Packages.Framework)
local var4 = require(var0.Src.Components.MeshPartTool)
local var5 = require(var0.Src.Components.Draggers.LuaMeshEditingModuleWrapper)
local var6 = require(var0.Src.Actions.SetToolMode)
local var7 = require(var0.Src.Util.Constants)
local var8 = require(var0.Src.Util.DebugFlags)
local var9 = var1.PureComponent:extend("EditorToolsManager")
local var10 = require(var0.Src.Components.Editor.WorkspaceEditorControls)
local var11 = var3.Util
function var9.init(arg1)
   arg1.editorFrameRef = var1.createRef()
   function arg1.onToolChange(arg1)
      local var709 = arg1.props
      var709 = arg1
      var709.SetToolMode(var709)
      arg1.props.Signals:get(var7.SIGNAL_KEYS.SelectionChanged):Fire()
      arg1.props.Signals:get(var7.SIGNAL_KEYS.ToolChanged):Fire()
   end
   
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ToolMode
   local var2 = var0.Size
   local var3 = var0.EditingCage
   local var4 = var0.LayoutOrder
   if var3 ~= var7.EDIT_MODE.Mesh then
      local var0 = false
   end
   local var5 = true
   if var3 == "props" then
      local var0 = var5
   end
   local var751 = {}
   local var755 = var1.createElement(var10)
   var751.WorkspaceEditorControls = var755
   var755 = var5
   var751.MeshPartTool = var755 and var1.createElement(var4)
   if not var8.RunRhodiumTests() or var8.RunTests() then
      if false then
         local var0 = var1.createElement(var5) or nil
      end
   end
   var751.LuaMeshEditingModuleWrapper = nil
   return var1.createFragment(var751)
end

function var9.willUpdate(arg1, arg2)
   local var0 = arg1.props.LuaMeshEditingModuleContext
   if arg2.ToolMode ~= arg1.props.ToolMode then
      if arg2.ToolMode ~= var7.TOOL_MODE.Point then
         if arg2.ToolMode == "Lattice" then
            var0:setCurrentTool(arg2.ToolMode)
            local var0 = true
         elseif arg2.ToolMode ~= var7.TOOL_MODE.Reset then
            var0:setCurrentTool(nil)
            local var0 = true
         end
      end
      var0:setCurrentTool(arg2.ToolMode)
      local var0 = true
      if arg2.ToolMode ~= var7.TOOL_MODE.Reset then
         var0:setCurrentTool(nil)
         local var0 = true
      end
   end
   var0:changeEditingCage(arg2.EditingCage)
   if false then
      if arg2.ToolMode ~= arg1.props.ToolMode then
         var0:getToolChangedSignal():Fire()
      end
   end
end

local function fun25(arg1)
   local var0 = arg1.props.LuaMeshEditingModuleContext
   if var0 then
      var0:setCurrentTool(nil)
   end
end

function var9.willUnmount(arg1)
   local var0 = arg1.props.LuaMeshEditingModuleContext
   if var0 then
      var0:setCurrentTool(nil)
   end
end

fun25 = var3.ContextServices.withContext
local var818 = {}
var818.LuaMeshEditingModuleContext = var2.Contexts.LuaMeshEditingModuleContext
var818.Signals = var2.Contexts.Signals
var9 = fun25(var818)(var9)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = arg1.cageData
   local var1 = {}
   var1.ToolMode = arg1.status.toolMode
   var1.EditingCage = arg1.selectItem.editingCage
   return var1
end, function(arg1)
   local var0 = {}
   function var0.SetToolMode(arg1)
      local var834 = arg1.props
      var834 = arg1
      var834.SetToolMode(var834)
      arg1.props.Signals:get(var7.SIGNAL_KEYS.SelectionChanged):Fire()
      arg1.props.Signals:get(var7.SIGNAL_KEYS.ToolChanged):Fire()
   end
   
   return var0
end)(var9)
