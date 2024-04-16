-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Framework)
local var2 = var1.ContextServices
local var3 = var2.PluginActions
local var4 = var1.Util.Signal
local var5 = require(var0.Src.Resources.Constants)
local var6 = require(var0.Src.Util.getMaterials)
local var7 = require(var0.Src.Types)
local var8 = var7.BrushMode
local var9 = var7.BrushSettings
local var10 = var7.MaterialSettings
local var11 = var7.PluginAction
local var12 = var2.ContextItem:extend("ShortcutController")
function var12.new(arg1, arg2)
   assert(arg1, "ShortcutController.new() requires a plugin")
   local function fun0(arg1)
      return arg2:getText("PluginActions", arg1 ... "StatusTip")
   end
   
   local function fun1(arg1)
      return arg2:getText("PluginActions", arg1 ... "Text")
   end
   
   local var0 = {}
   local var668 = {}
   var668.allowBinding = false
   var668.defaultShortcut = "ctrl+shift+space"
   local var672 = var11.EditPlane
   var668.id = var672
   local var2 = var11.EditPlane
   var672 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var668.statusTip = var672
   var2 = var11.EditPlane
   var672 = arg2:getText("PluginActions", var2 ... "Text")
   var668.text = var672
   var0.EditPlane = var668
   local var688 = {}
   var688.allowBinding = false
   var688.defaultShortcut = "ctrl+c"
   local var692 = var11.CopySelected
   var688.id = var692
   var2 = var11.CopySelected
   var692 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var688.statusTip = var692
   var2 = var11.CopySelected
   var692 = arg2:getText("PluginActions", var2 ... "Text")
   var688.text = var692
   var0.CopySelected = var688
   local var707 = {}
   var707.allowBinding = false
   var707.defaultShortcut = "ctrl+x"
   local var711 = var11.CutSelected
   var707.id = var711
   var2 = var11.CutSelected
   var711 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var707.statusTip = var711
   var2 = var11.CutSelected
   var711 = arg2:getText("PluginActions", var2 ... "Text")
   var707.text = var711
   var0.CutSelected = var707
   local var726 = {}
   var726.allowBinding = false
   var726.defaultShortcut = "delete"
   local var730 = var11.DeleteSelected
   var726.id = var730
   var2 = var11.DeleteSelected
   var730 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var726.statusTip = var730
   var2 = var11.DeleteSelected
   var730 = arg2:getText("PluginActions", var2 ... "Text")
   var726.text = var730
   var0.DeleteSelected = var726
   local var745 = {}
   var745.allowBinding = false
   var745.defaultShortcut = "ctrl+v"
   local var749 = var11.PasteSelected
   var745.id = var749
   var2 = var11.PasteSelected
   var749 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var745.statusTip = var749
   var2 = var11.PasteSelected
   var749 = arg2:getText("PluginActions", var2 ... "Text")
   var745.text = var749
   var0.PasteSelected = var745
   local var764 = {}
   var764.allowBinding = false
   var764.defaultShortcut = "ctrl+d"
   local var768 = var11.DuplicateSelected
   var764.id = var768
   var2 = var11.DuplicateSelected
   var768 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var764.statusTip = var768
   var2 = var11.DuplicateSelected
   var768 = arg2:getText("PluginActions", var2 ... "Text")
   var764.text = var768
   var0.DuplicateSelected = var764
   local var783 = {}
   var783.allowBinding = false
   var783.defaultShortcut = "return"
   local var787 = var11.Apply
   var783.id = var787
   var2 = var11.Apply
   var787 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var783.statusTip = var787
   var2 = var11.Apply
   var787 = arg2:getText("PluginActions", var2 ... "Text")
   var783.text = var787
   var0.Apply = var783
   local var802 = {}
   var802.allowBinding = false
   var802.defaultShortcut = "escape"
   local var806 = var11.Quit
   var802.id = var806
   var2 = var11.Quit
   var806 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var802.statusTip = var806
   var2 = var11.Quit
   var806 = arg2:getText("PluginActions", var2 ... "Text")
   var802.text = var806
   var0.Cancel = var802
   local var821 = {}
   var821._mouse = arg1:GetMouse()
   local var824 = var3
   var824 = arg1
   var821._pluginActions = var824.new(var824, var0)
   var821._cachedValues = {}
   var821._originalValues = {}
   var821._userInputService = game:GetService("UserInputService")
   var821._workspace = game:GetService("Workspace")
   var821._reservedMouseMove = {}
   var821._reservedMouseDown = {}
   var821._brushMouse = {}
   var821._brushScrollWheel = {}
   var821.MouseDownAction = var4.new()
   var821.MouseMoveAction = var4.new()
   local var10 = setmetatable(var821, var12)
   var10._mouse.Button1Down:Connect(function()
      var10._mouseDown = true
      if not var10:isMouseDownReserved() then
         var10.MouseDownAction:Fire()
      end
   end)
   var10._mouse.Button1Up:Connect(function()
      var10._mouseDown = false
   end)
   var10._mouse.Move:Connect(function()
      if not var10:isMouseMoveReserved() then
         var10.MouseMoveAction:Fire()
      end
   end)
   return var10
end

function var12.isMouseMoveReserved(arg1)
   if arg1._reservedMouseMove == 0 then
      local var0 = false
   end
   return true
end

function var12.isMouseDownReserved(arg1)
   if arg1._reservedMouseDown == 0 then
      local var0 = false
   end
   return true
end

function var12.isAltDown(arg1)
   return arg1._userInputService:IsKeyDown(Enum.KeyCode.LeftAlt) or arg1._userInputService:IsKeyDown(Enum.KeyCode.RightAlt)
end

function var12.isShiftDown(arg1)
   return arg1._userInputService:IsKeyDown(Enum.KeyCode.LeftShift) or arg1._userInputService:IsKeyDown(Enum.KeyCode.RightShift)
end

function var12.isControlDown(arg1)
   return arg1._userInputService:IsKeyDown(Enum.KeyCode.LeftControl) or arg1._userInputService:IsKeyDown(Enum.KeyCode.RightControl)
end

function var12.isBDown(arg1)
   return arg1._userInputService:IsKeyDown(Enum.KeyCode.B)
end

function var12.onBrushChanged(arg1, arg2, arg3, arg4)
   local function fun0(arg1)
      return arg2:getText("PluginActions", arg1 ... "StatusTip")
   end
   
   local function fun1(arg1)
      return arg2:getText("PluginActions", arg1 ... "Text")
   end
   
   local function fun2()
      var10._mouseDown = true
      if not var10:isMouseDownReserved() then
         var10.MouseDownAction:Fire()
      end
   end
   
   local function fun3()
      var10._mouseDown = false
   end
   
   local function fun4()
      if not var10:isMouseMoveReserved() then
         var10.MouseMoveAction:Fire()
      end
   end
   
   local var0 = arg1._userInputService.InputChanged:Connect(function(arg1, arg2)
      assert(arg1, "ShortcutController.new() requires a plugin")
      local function fun0(arg1)
         return arg2:getText("PluginActions", arg1 ... "StatusTip")
      end
      
      local function fun1(arg1)
         return arg2:getText("PluginActions", arg1 ... "Text")
      end
      
      local var0 = {}
      local var979 = {}
      var979.allowBinding = false
      var979.defaultShortcut = "ctrl+shift+space"
      local var983 = var11.EditPlane
      var979.id = var983
      local var2 = var11.EditPlane
      var983 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var979.statusTip = var983
      var2 = var11.EditPlane
      var983 = arg2:getText("PluginActions", var2 ... "Text")
      var979.text = var983
      var0.EditPlane = var979
      local var999 = {}
      var999.allowBinding = false
      var999.defaultShortcut = "ctrl+c"
      local var1003 = var11.CopySelected
      var999.id = var1003
      var2 = var11.CopySelected
      var1003 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var999.statusTip = var1003
      var2 = var11.CopySelected
      var1003 = arg2:getText("PluginActions", var2 ... "Text")
      var999.text = var1003
      var0.CopySelected = var999
      local var1018 = {}
      var1018.allowBinding = false
      var1018.defaultShortcut = "ctrl+x"
      local var1022 = var11.CutSelected
      var1018.id = var1022
      var2 = var11.CutSelected
      var1022 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1018.statusTip = var1022
      var2 = var11.CutSelected
      var1022 = arg2:getText("PluginActions", var2 ... "Text")
      var1018.text = var1022
      var0.CutSelected = var1018
      local var1037 = {}
      var1037.allowBinding = false
      var1037.defaultShortcut = "delete"
      local var1041 = var11.DeleteSelected
      var1037.id = var1041
      var2 = var11.DeleteSelected
      var1041 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1037.statusTip = var1041
      var2 = var11.DeleteSelected
      var1041 = arg2:getText("PluginActions", var2 ... "Text")
      var1037.text = var1041
      var0.DeleteSelected = var1037
      local var1056 = {}
      var1056.allowBinding = false
      var1056.defaultShortcut = "ctrl+v"
      local var1060 = var11.PasteSelected
      var1056.id = var1060
      var2 = var11.PasteSelected
      var1060 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1056.statusTip = var1060
      var2 = var11.PasteSelected
      var1060 = arg2:getText("PluginActions", var2 ... "Text")
      var1056.text = var1060
      var0.PasteSelected = var1056
      local var1075 = {}
      var1075.allowBinding = false
      var1075.defaultShortcut = "ctrl+d"
      local var1079 = var11.DuplicateSelected
      var1075.id = var1079
      var2 = var11.DuplicateSelected
      var1079 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1075.statusTip = var1079
      var2 = var11.DuplicateSelected
      var1079 = arg2:getText("PluginActions", var2 ... "Text")
      var1075.text = var1079
      var0.DuplicateSelected = var1075
      local var1094 = {}
      var1094.allowBinding = false
      var1094.defaultShortcut = "return"
      local var1098 = var11.Apply
      var1094.id = var1098
      var2 = var11.Apply
      var1098 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1094.statusTip = var1098
      var2 = var11.Apply
      var1098 = arg2:getText("PluginActions", var2 ... "Text")
      var1094.text = var1098
      var0.Apply = var1094
      local var1113 = {}
      var1113.allowBinding = false
      var1113.defaultShortcut = "escape"
      local var1117 = var11.Quit
      var1113.id = var1117
      var2 = var11.Quit
      var1117 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1113.statusTip = var1117
      var2 = var11.Quit
      var1117 = arg2:getText("PluginActions", var2 ... "Text")
      var1113.text = var1117
      var0.Cancel = var1113
      local var1132 = {}
      var1132._mouse = arg1:GetMouse()
      local var1135 = var3
      var1135 = arg1
      var1132._pluginActions = var1135.new(var1135, var0)
      var1132._cachedValues = {}
      var1132._originalValues = {}
      var1132._userInputService = game:GetService("UserInputService")
      var1132._workspace = game:GetService("Workspace")
      var1132._reservedMouseMove = {}
      var1132._reservedMouseDown = {}
      var1132._brushMouse = {}
      var1132._brushScrollWheel = {}
      var1132.MouseDownAction = var4.new()
      var1132.MouseMoveAction = var4.new()
      local var10 = setmetatable(var1132, var12)
      var10._mouse.Button1Down:Connect(function()
         var10._mouseDown = true
         if not var10:isMouseDownReserved() then
            var10.MouseDownAction:Fire()
         end
      end)
      var10._mouse.Button1Up:Connect(function()
         var10._mouseDown = false
      end)
      var10._mouse.Move:Connect(function()
         if not var10:isMouseMoveReserved() then
            var10.MouseMoveAction:Fire()
         end
      end)
      return var10
   end)
   local var1 = arg1._userInputService.InputBegan:Connect(function(arg1)
      if arg1._reservedMouseMove == 0 then
         local var0 = false
      end
      return true
   end)
   local var2 = arg1._userInputService.InputEnded:Connect(function(arg1)
      if arg1._reservedMouseDown == 0 then
         local var0 = false
      end
      return true
   end)
   return {}
end

function var12.onMaterialPicked(arg1, arg2, arg3)
   local function fun0(arg1)
      if arg1.KeyCode ~= Enum.KeyCode.LeftAlt then
         if arg1.KeyCode ~= Enum.KeyCode.RightAlt then
            local var0 = false
         end
         local var0 = true
      end
      return true
   end
   
   local var0 = arg1._mouse.Button1Down:Connect(function()
      var10._mouseDown = false
   end)
   local var1 = arg1._userInputService.InputBegan:Connect(function(arg1)
      return arg2:getText("PluginActions", arg1 ... "Text")
   end)
   local var2 = arg1._userInputService.InputEnded:Connect(function()
      var10._mouseDown = true
      if not var10:isMouseDownReserved() then
         var10.MouseDownAction:Fire()
      end
   end)
   return {}
end

function var12.onBrushMode(arg1, arg2, arg3)
   local function fun0(arg1)
      return arg2:getText("PluginActions", arg1 ... "StatusTip")
   end
   
   local var0 = arg1._userInputService.InputBegan:Connect(fun0)
   local var1 = arg1._userInputService.InputEnded:Connect(fun0)
   return {}
end

function var12.onTemporarySmooth(arg1, arg2)
   local function fun0(arg1)
      return arg2:getText("PluginActions", arg1 ... "StatusTip")
   end
   
   local var0 = arg1._userInputService.InputBegan:Connect(fun0)
   local var1 = arg1._userInputService.InputEnded:Connect(fun0)
   return {}
end

function var12.onToggleEdit(arg1, arg2, arg3)
   if not arg1._toggleEditEnabled then
      arg1:Enable(var11.EditPlane)
      arg1._toggleEditEnabled = true
   end
   arg1._manualPlaneLock = arg2
   local var0 = arg1._pluginActions:get(var11.EditPlane).Triggered:Connect(function(arg1)
      return arg2:getText("PluginActions", arg1 ... "StatusTip")
   end)
   function {}.Disconnect(arg1)
      return arg2:getText("PluginActions", arg1 ... "Text")
   end
   
   return {}
end

function var12.registerShortcut(arg1, arg2, arg3, arg4)
   if not arg1:supportsShortcut(arg2) then
      error(`Cannot register unsupported shortcut for property {arg2}`)
   end
   if arg2 ~= var9.BrushSize then
      if arg2 == "format" then
         return arg1:onBrushChanged(arg2, arg3, arg4)
      end
   end
   return arg1:onBrushChanged(arg2, arg3, arg4)
   if arg2 ~= var10.SourceMaterial then
      if arg2 == "format" then
         return arg1:onMaterialPicked(arg2, arg4)
      end
   end
   return arg1:onMaterialPicked(arg2, arg4)
   if arg2 == "format" then
      return arg1:onBrushMode(arg4, arg3)
   end
   if arg2 == "format" then
      return arg1:onTemporarySmooth(arg4)
   end
   if arg2 == "format" then
      return arg1:onToggleEdit(arg3, arg4)
   end
end

function var12.supportsShortcut(arg1, arg2)
   var9.BrushSize = true
   var9.BrushMode = true
   var9.ManualPlaneLock = true
   var9.Strength = true
   var9.TemporarySmooth = true
   var10.SourceMaterial = true
   var10.TargetMaterial = true
   return {}[arg2]
end

function var12.getMouse(arg1)
   return arg1._mouse
end

function var12.IsMouseDown(arg1)
   return arg1._mouseDown
end

function var12.Enable(arg1, arg2)
   arg1:SetEnabled(arg2, true)
end

function var12.Disable(arg1, arg2)
   arg1:SetEnabled(arg2, false)
end

function var12.SetEnabled(arg1, arg2, arg3)
   arg1._pluginActions:get(arg2).Enabled = arg3
end

function var12.Connect(arg1, arg2, arg3)
   return arg1._pluginActions:get(arg2).Triggered:Connect(arg3)
end

return var12
