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
   local var490 = {}
   var490.allowBinding = false
   var490.defaultShortcut = "ctrl+shift+space"
   local var494 = var11.EditPlane
   var490.id = var494
   local var2 = var11.EditPlane
   var494 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var490.statusTip = var494
   var2 = var11.EditPlane
   var494 = arg2:getText("PluginActions", var2 ... "Text")
   var490.text = var494
   var0.EditPlane = var490
   local var510 = {}
   var510.allowBinding = false
   var510.defaultShortcut = "ctrl+c"
   local var514 = var11.CopySelected
   var510.id = var514
   var2 = var11.CopySelected
   var514 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var510.statusTip = var514
   var2 = var11.CopySelected
   var514 = arg2:getText("PluginActions", var2 ... "Text")
   var510.text = var514
   var0.CopySelected = var510
   local var529 = {}
   var529.allowBinding = false
   var529.defaultShortcut = "ctrl+x"
   local var533 = var11.CutSelected
   var529.id = var533
   var2 = var11.CutSelected
   var533 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var529.statusTip = var533
   var2 = var11.CutSelected
   var533 = arg2:getText("PluginActions", var2 ... "Text")
   var529.text = var533
   var0.CutSelected = var529
   local var548 = {}
   var548.allowBinding = false
   var548.defaultShortcut = "delete"
   local var552 = var11.DeleteSelected
   var548.id = var552
   var2 = var11.DeleteSelected
   var552 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var548.statusTip = var552
   var2 = var11.DeleteSelected
   var552 = arg2:getText("PluginActions", var2 ... "Text")
   var548.text = var552
   var0.DeleteSelected = var548
   local var567 = {}
   var567.allowBinding = false
   var567.defaultShortcut = "ctrl+v"
   local var571 = var11.PasteSelected
   var567.id = var571
   var2 = var11.PasteSelected
   var571 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var567.statusTip = var571
   var2 = var11.PasteSelected
   var571 = arg2:getText("PluginActions", var2 ... "Text")
   var567.text = var571
   var0.PasteSelected = var567
   local var586 = {}
   var586.allowBinding = false
   var586.defaultShortcut = "ctrl+d"
   local var590 = var11.DuplicateSelected
   var586.id = var590
   var2 = var11.DuplicateSelected
   var590 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var586.statusTip = var590
   var2 = var11.DuplicateSelected
   var590 = arg2:getText("PluginActions", var2 ... "Text")
   var586.text = var590
   var0.DuplicateSelected = var586
   local var605 = {}
   var605.allowBinding = false
   var605.defaultShortcut = "return"
   local var609 = var11.Apply
   var605.id = var609
   var2 = var11.Apply
   var609 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var605.statusTip = var609
   var2 = var11.Apply
   var609 = arg2:getText("PluginActions", var2 ... "Text")
   var605.text = var609
   var0.Apply = var605
   local var624 = {}
   var624.allowBinding = false
   var624.defaultShortcut = "escape"
   local var628 = var11.Quit
   var624.id = var628
   var2 = var11.Quit
   var628 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var624.statusTip = var628
   var2 = var11.Quit
   var628 = arg2:getText("PluginActions", var2 ... "Text")
   var624.text = var628
   var0.Cancel = var624
   local var643 = {}
   var643._mouse = arg1:GetMouse()
   local var646 = var3
   var646 = arg1
   var643._pluginActions = var646.new(var646, var0)
   var643._cachedValues = {}
   var643._originalValues = {}
   var643._userInputService = game:GetService("UserInputService")
   var643._workspace = game:GetService("Workspace")
   var643._reservedMouseMove = {}
   var643._reservedMouseDown = {}
   var643._brushMouse = {}
   var643._brushScrollWheel = {}
   var643.MouseDownAction = var4.new()
   var643.MouseMoveAction = var4.new()
   local var10 = setmetatable(var643, var12)
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
      local var801 = {}
      var801.allowBinding = false
      var801.defaultShortcut = "ctrl+shift+space"
      local var805 = var11.EditPlane
      var801.id = var805
      local var2 = var11.EditPlane
      var805 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var801.statusTip = var805
      var2 = var11.EditPlane
      var805 = arg2:getText("PluginActions", var2 ... "Text")
      var801.text = var805
      var0.EditPlane = var801
      local var821 = {}
      var821.allowBinding = false
      var821.defaultShortcut = "ctrl+c"
      local var825 = var11.CopySelected
      var821.id = var825
      var2 = var11.CopySelected
      var825 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var821.statusTip = var825
      var2 = var11.CopySelected
      var825 = arg2:getText("PluginActions", var2 ... "Text")
      var821.text = var825
      var0.CopySelected = var821
      local var840 = {}
      var840.allowBinding = false
      var840.defaultShortcut = "ctrl+x"
      local var844 = var11.CutSelected
      var840.id = var844
      var2 = var11.CutSelected
      var844 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var840.statusTip = var844
      var2 = var11.CutSelected
      var844 = arg2:getText("PluginActions", var2 ... "Text")
      var840.text = var844
      var0.CutSelected = var840
      local var859 = {}
      var859.allowBinding = false
      var859.defaultShortcut = "delete"
      local var863 = var11.DeleteSelected
      var859.id = var863
      var2 = var11.DeleteSelected
      var863 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var859.statusTip = var863
      var2 = var11.DeleteSelected
      var863 = arg2:getText("PluginActions", var2 ... "Text")
      var859.text = var863
      var0.DeleteSelected = var859
      local var878 = {}
      var878.allowBinding = false
      var878.defaultShortcut = "ctrl+v"
      local var882 = var11.PasteSelected
      var878.id = var882
      var2 = var11.PasteSelected
      var882 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var878.statusTip = var882
      var2 = var11.PasteSelected
      var882 = arg2:getText("PluginActions", var2 ... "Text")
      var878.text = var882
      var0.PasteSelected = var878
      local var897 = {}
      var897.allowBinding = false
      var897.defaultShortcut = "ctrl+d"
      local var901 = var11.DuplicateSelected
      var897.id = var901
      var2 = var11.DuplicateSelected
      var901 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var897.statusTip = var901
      var2 = var11.DuplicateSelected
      var901 = arg2:getText("PluginActions", var2 ... "Text")
      var897.text = var901
      var0.DuplicateSelected = var897
      local var916 = {}
      var916.allowBinding = false
      var916.defaultShortcut = "return"
      local var920 = var11.Apply
      var916.id = var920
      var2 = var11.Apply
      var920 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var916.statusTip = var920
      var2 = var11.Apply
      var920 = arg2:getText("PluginActions", var2 ... "Text")
      var916.text = var920
      var0.Apply = var916
      local var935 = {}
      var935.allowBinding = false
      var935.defaultShortcut = "escape"
      local var939 = var11.Quit
      var935.id = var939
      var2 = var11.Quit
      var939 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var935.statusTip = var939
      var2 = var11.Quit
      var939 = arg2:getText("PluginActions", var2 ... "Text")
      var935.text = var939
      var0.Cancel = var935
      local var954 = {}
      var954._mouse = arg1:GetMouse()
      local var957 = var3
      var957 = arg1
      var954._pluginActions = var957.new(var957, var0)
      var954._cachedValues = {}
      var954._originalValues = {}
      var954._userInputService = game:GetService("UserInputService")
      var954._workspace = game:GetService("Workspace")
      var954._reservedMouseMove = {}
      var954._reservedMouseDown = {}
      var954._brushMouse = {}
      var954._brushScrollWheel = {}
      var954.MouseDownAction = var4.new()
      var954.MouseMoveAction = var4.new()
      local var10 = setmetatable(var954, var12)
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
