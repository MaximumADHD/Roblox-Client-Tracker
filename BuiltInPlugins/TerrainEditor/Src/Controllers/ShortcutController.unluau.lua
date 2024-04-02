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
   local var696 = {}
   var696.allowBinding = false
   var696.defaultShortcut = "ctrl+shift+space"
   local var700 = var11.EditPlane
   var696.id = var700
   local var2 = var11.EditPlane
   var700 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var696.statusTip = var700
   var2 = var11.EditPlane
   var700 = arg2:getText("PluginActions", var2 ... "Text")
   var696.text = var700
   var0.EditPlane = var696
   local var716 = {}
   var716.allowBinding = false
   var716.defaultShortcut = "ctrl+c"
   local var720 = var11.CopySelected
   var716.id = var720
   var2 = var11.CopySelected
   var720 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var716.statusTip = var720
   var2 = var11.CopySelected
   var720 = arg2:getText("PluginActions", var2 ... "Text")
   var716.text = var720
   var0.CopySelected = var716
   local var735 = {}
   var735.allowBinding = false
   var735.defaultShortcut = "ctrl+x"
   local var739 = var11.CutSelected
   var735.id = var739
   var2 = var11.CutSelected
   var739 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var735.statusTip = var739
   var2 = var11.CutSelected
   var739 = arg2:getText("PluginActions", var2 ... "Text")
   var735.text = var739
   var0.CutSelected = var735
   local var754 = {}
   var754.allowBinding = false
   var754.defaultShortcut = "delete"
   local var758 = var11.DeleteSelected
   var754.id = var758
   var2 = var11.DeleteSelected
   var758 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var754.statusTip = var758
   var2 = var11.DeleteSelected
   var758 = arg2:getText("PluginActions", var2 ... "Text")
   var754.text = var758
   var0.DeleteSelected = var754
   local var773 = {}
   var773.allowBinding = false
   var773.defaultShortcut = "ctrl+v"
   local var777 = var11.PasteSelected
   var773.id = var777
   var2 = var11.PasteSelected
   var777 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var773.statusTip = var777
   var2 = var11.PasteSelected
   var777 = arg2:getText("PluginActions", var2 ... "Text")
   var773.text = var777
   var0.PasteSelected = var773
   local var792 = {}
   var792.allowBinding = false
   var792.defaultShortcut = "ctrl+d"
   local var796 = var11.DuplicateSelected
   var792.id = var796
   var2 = var11.DuplicateSelected
   var796 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var792.statusTip = var796
   var2 = var11.DuplicateSelected
   var796 = arg2:getText("PluginActions", var2 ... "Text")
   var792.text = var796
   var0.DuplicateSelected = var792
   local var811 = {}
   var811.allowBinding = false
   var811.defaultShortcut = "return"
   local var815 = var11.Apply
   var811.id = var815
   var2 = var11.Apply
   var815 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var811.statusTip = var815
   var2 = var11.Apply
   var815 = arg2:getText("PluginActions", var2 ... "Text")
   var811.text = var815
   var0.Apply = var811
   local var830 = {}
   var830.allowBinding = false
   var830.defaultShortcut = "escape"
   local var834 = var11.Quit
   var830.id = var834
   var2 = var11.Quit
   var834 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var830.statusTip = var834
   var2 = var11.Quit
   var834 = arg2:getText("PluginActions", var2 ... "Text")
   var830.text = var834
   var0.Cancel = var830
   local var849 = {}
   var849._mouse = arg1:GetMouse()
   local var852 = var3
   var852 = arg1
   var849._pluginActions = var852.new(var852, var0)
   var849._cachedValues = {}
   var849._originalValues = {}
   var849._userInputService = game:GetService("UserInputService")
   var849._workspace = game:GetService("Workspace")
   var849._reservedMouseMove = {}
   var849._reservedMouseDown = {}
   var849._brushMouse = {}
   var849._brushScrollWheel = {}
   var849.MouseDownAction = var4.new()
   var849.MouseMoveAction = var4.new()
   local var10 = setmetatable(var849, var12)
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
      local var1007 = {}
      var1007.allowBinding = false
      var1007.defaultShortcut = "ctrl+shift+space"
      local var1011 = var11.EditPlane
      var1007.id = var1011
      local var2 = var11.EditPlane
      var1011 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1007.statusTip = var1011
      var2 = var11.EditPlane
      var1011 = arg2:getText("PluginActions", var2 ... "Text")
      var1007.text = var1011
      var0.EditPlane = var1007
      local var1027 = {}
      var1027.allowBinding = false
      var1027.defaultShortcut = "ctrl+c"
      local var1031 = var11.CopySelected
      var1027.id = var1031
      var2 = var11.CopySelected
      var1031 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1027.statusTip = var1031
      var2 = var11.CopySelected
      var1031 = arg2:getText("PluginActions", var2 ... "Text")
      var1027.text = var1031
      var0.CopySelected = var1027
      local var1046 = {}
      var1046.allowBinding = false
      var1046.defaultShortcut = "ctrl+x"
      local var1050 = var11.CutSelected
      var1046.id = var1050
      var2 = var11.CutSelected
      var1050 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1046.statusTip = var1050
      var2 = var11.CutSelected
      var1050 = arg2:getText("PluginActions", var2 ... "Text")
      var1046.text = var1050
      var0.CutSelected = var1046
      local var1065 = {}
      var1065.allowBinding = false
      var1065.defaultShortcut = "delete"
      local var1069 = var11.DeleteSelected
      var1065.id = var1069
      var2 = var11.DeleteSelected
      var1069 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1065.statusTip = var1069
      var2 = var11.DeleteSelected
      var1069 = arg2:getText("PluginActions", var2 ... "Text")
      var1065.text = var1069
      var0.DeleteSelected = var1065
      local var1084 = {}
      var1084.allowBinding = false
      var1084.defaultShortcut = "ctrl+v"
      local var1088 = var11.PasteSelected
      var1084.id = var1088
      var2 = var11.PasteSelected
      var1088 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1084.statusTip = var1088
      var2 = var11.PasteSelected
      var1088 = arg2:getText("PluginActions", var2 ... "Text")
      var1084.text = var1088
      var0.PasteSelected = var1084
      local var1103 = {}
      var1103.allowBinding = false
      var1103.defaultShortcut = "ctrl+d"
      local var1107 = var11.DuplicateSelected
      var1103.id = var1107
      var2 = var11.DuplicateSelected
      var1107 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1103.statusTip = var1107
      var2 = var11.DuplicateSelected
      var1107 = arg2:getText("PluginActions", var2 ... "Text")
      var1103.text = var1107
      var0.DuplicateSelected = var1103
      local var1122 = {}
      var1122.allowBinding = false
      var1122.defaultShortcut = "return"
      local var1126 = var11.Apply
      var1122.id = var1126
      var2 = var11.Apply
      var1126 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1122.statusTip = var1126
      var2 = var11.Apply
      var1126 = arg2:getText("PluginActions", var2 ... "Text")
      var1122.text = var1126
      var0.Apply = var1122
      local var1141 = {}
      var1141.allowBinding = false
      var1141.defaultShortcut = "escape"
      local var1145 = var11.Quit
      var1141.id = var1145
      var2 = var11.Quit
      var1145 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1141.statusTip = var1145
      var2 = var11.Quit
      var1145 = arg2:getText("PluginActions", var2 ... "Text")
      var1141.text = var1145
      var0.Cancel = var1141
      local var1160 = {}
      var1160._mouse = arg1:GetMouse()
      local var1163 = var3
      var1163 = arg1
      var1160._pluginActions = var1163.new(var1163, var0)
      var1160._cachedValues = {}
      var1160._originalValues = {}
      var1160._userInputService = game:GetService("UserInputService")
      var1160._workspace = game:GetService("Workspace")
      var1160._reservedMouseMove = {}
      var1160._reservedMouseDown = {}
      var1160._brushMouse = {}
      var1160._brushScrollWheel = {}
      var1160.MouseDownAction = var4.new()
      var1160.MouseMoveAction = var4.new()
      local var10 = setmetatable(var1160, var12)
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
