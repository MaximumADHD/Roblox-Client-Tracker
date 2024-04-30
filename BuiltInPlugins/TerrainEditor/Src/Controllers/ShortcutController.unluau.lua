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
   local var981 = {}
   var981.allowBinding = false
   var981.defaultShortcut = "ctrl+shift+space"
   local var985 = var11.EditPlane
   var981.id = var985
   local var2 = var11.EditPlane
   var985 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var981.statusTip = var985
   var2 = var11.EditPlane
   var985 = arg2:getText("PluginActions", var2 ... "Text")
   var981.text = var985
   var0.EditPlane = var981
   local var1001 = {}
   var1001.allowBinding = false
   var1001.defaultShortcut = "ctrl+c"
   local var1005 = var11.CopySelected
   var1001.id = var1005
   var2 = var11.CopySelected
   var1005 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1001.statusTip = var1005
   var2 = var11.CopySelected
   var1005 = arg2:getText("PluginActions", var2 ... "Text")
   var1001.text = var1005
   var0.CopySelected = var1001
   local var1020 = {}
   var1020.allowBinding = false
   var1020.defaultShortcut = "ctrl+x"
   local var1024 = var11.CutSelected
   var1020.id = var1024
   var2 = var11.CutSelected
   var1024 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1020.statusTip = var1024
   var2 = var11.CutSelected
   var1024 = arg2:getText("PluginActions", var2 ... "Text")
   var1020.text = var1024
   var0.CutSelected = var1020
   local var1039 = {}
   var1039.allowBinding = false
   var1039.defaultShortcut = "delete"
   local var1043 = var11.DeleteSelected
   var1039.id = var1043
   var2 = var11.DeleteSelected
   var1043 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1039.statusTip = var1043
   var2 = var11.DeleteSelected
   var1043 = arg2:getText("PluginActions", var2 ... "Text")
   var1039.text = var1043
   var0.DeleteSelected = var1039
   local var1058 = {}
   var1058.allowBinding = false
   var1058.defaultShortcut = "ctrl+v"
   local var1062 = var11.PasteSelected
   var1058.id = var1062
   var2 = var11.PasteSelected
   var1062 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1058.statusTip = var1062
   var2 = var11.PasteSelected
   var1062 = arg2:getText("PluginActions", var2 ... "Text")
   var1058.text = var1062
   var0.PasteSelected = var1058
   local var1077 = {}
   var1077.allowBinding = false
   var1077.defaultShortcut = "ctrl+d"
   local var1081 = var11.DuplicateSelected
   var1077.id = var1081
   var2 = var11.DuplicateSelected
   var1081 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1077.statusTip = var1081
   var2 = var11.DuplicateSelected
   var1081 = arg2:getText("PluginActions", var2 ... "Text")
   var1077.text = var1081
   var0.DuplicateSelected = var1077
   local var1096 = {}
   var1096.allowBinding = false
   var1096.defaultShortcut = "return"
   local var1100 = var11.Apply
   var1096.id = var1100
   var2 = var11.Apply
   var1100 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1096.statusTip = var1100
   var2 = var11.Apply
   var1100 = arg2:getText("PluginActions", var2 ... "Text")
   var1096.text = var1100
   var0.Apply = var1096
   local var1115 = {}
   var1115.allowBinding = false
   var1115.defaultShortcut = "escape"
   local var1119 = var11.Quit
   var1115.id = var1119
   var2 = var11.Quit
   var1119 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1115.statusTip = var1119
   var2 = var11.Quit
   var1119 = arg2:getText("PluginActions", var2 ... "Text")
   var1115.text = var1119
   var0.Cancel = var1115
   local var1134 = {}
   var1134._mouse = arg1:GetMouse()
   local var1137 = var3
   var1137 = arg1
   var1134._pluginActions = var1137.new(var1137, var0)
   var1134._cachedValues = {}
   var1134._originalValues = {}
   var1134._userInputService = game:GetService("UserInputService")
   var1134._workspace = game:GetService("Workspace")
   var1134._reservedMouseMove = {}
   var1134._reservedMouseDown = {}
   var1134._brushMouse = {}
   var1134._brushScrollWheel = {}
   var1134.MouseDownAction = var4.new()
   var1134.MouseMoveAction = var4.new()
   local var10 = setmetatable(var1134, var12)
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
      local var1292 = {}
      var1292.allowBinding = false
      var1292.defaultShortcut = "ctrl+shift+space"
      local var1296 = var11.EditPlane
      var1292.id = var1296
      local var2 = var11.EditPlane
      var1296 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1292.statusTip = var1296
      var2 = var11.EditPlane
      var1296 = arg2:getText("PluginActions", var2 ... "Text")
      var1292.text = var1296
      var0.EditPlane = var1292
      local var1312 = {}
      var1312.allowBinding = false
      var1312.defaultShortcut = "ctrl+c"
      local var1316 = var11.CopySelected
      var1312.id = var1316
      var2 = var11.CopySelected
      var1316 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1312.statusTip = var1316
      var2 = var11.CopySelected
      var1316 = arg2:getText("PluginActions", var2 ... "Text")
      var1312.text = var1316
      var0.CopySelected = var1312
      local var1331 = {}
      var1331.allowBinding = false
      var1331.defaultShortcut = "ctrl+x"
      local var1335 = var11.CutSelected
      var1331.id = var1335
      var2 = var11.CutSelected
      var1335 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1331.statusTip = var1335
      var2 = var11.CutSelected
      var1335 = arg2:getText("PluginActions", var2 ... "Text")
      var1331.text = var1335
      var0.CutSelected = var1331
      local var1350 = {}
      var1350.allowBinding = false
      var1350.defaultShortcut = "delete"
      local var1354 = var11.DeleteSelected
      var1350.id = var1354
      var2 = var11.DeleteSelected
      var1354 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1350.statusTip = var1354
      var2 = var11.DeleteSelected
      var1354 = arg2:getText("PluginActions", var2 ... "Text")
      var1350.text = var1354
      var0.DeleteSelected = var1350
      local var1369 = {}
      var1369.allowBinding = false
      var1369.defaultShortcut = "ctrl+v"
      local var1373 = var11.PasteSelected
      var1369.id = var1373
      var2 = var11.PasteSelected
      var1373 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1369.statusTip = var1373
      var2 = var11.PasteSelected
      var1373 = arg2:getText("PluginActions", var2 ... "Text")
      var1369.text = var1373
      var0.PasteSelected = var1369
      local var1388 = {}
      var1388.allowBinding = false
      var1388.defaultShortcut = "ctrl+d"
      local var1392 = var11.DuplicateSelected
      var1388.id = var1392
      var2 = var11.DuplicateSelected
      var1392 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1388.statusTip = var1392
      var2 = var11.DuplicateSelected
      var1392 = arg2:getText("PluginActions", var2 ... "Text")
      var1388.text = var1392
      var0.DuplicateSelected = var1388
      local var1407 = {}
      var1407.allowBinding = false
      var1407.defaultShortcut = "return"
      local var1411 = var11.Apply
      var1407.id = var1411
      var2 = var11.Apply
      var1411 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1407.statusTip = var1411
      var2 = var11.Apply
      var1411 = arg2:getText("PluginActions", var2 ... "Text")
      var1407.text = var1411
      var0.Apply = var1407
      local var1426 = {}
      var1426.allowBinding = false
      var1426.defaultShortcut = "escape"
      local var1430 = var11.Quit
      var1426.id = var1430
      var2 = var11.Quit
      var1430 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1426.statusTip = var1430
      var2 = var11.Quit
      var1430 = arg2:getText("PluginActions", var2 ... "Text")
      var1426.text = var1430
      var0.Cancel = var1426
      local var1445 = {}
      var1445._mouse = arg1:GetMouse()
      local var1448 = var3
      var1448 = arg1
      var1445._pluginActions = var1448.new(var1448, var0)
      var1445._cachedValues = {}
      var1445._originalValues = {}
      var1445._userInputService = game:GetService("UserInputService")
      var1445._workspace = game:GetService("Workspace")
      var1445._reservedMouseMove = {}
      var1445._reservedMouseDown = {}
      var1445._brushMouse = {}
      var1445._brushScrollWheel = {}
      var1445.MouseDownAction = var4.new()
      var1445.MouseMoveAction = var4.new()
      local var10 = setmetatable(var1445, var12)
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
