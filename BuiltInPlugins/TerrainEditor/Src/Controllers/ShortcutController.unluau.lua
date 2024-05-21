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
   local var986 = {}
   var986.allowBinding = false
   var986.defaultShortcut = "ctrl+shift+space"
   local var990 = var11.EditPlane
   var986.id = var990
   local var2 = var11.EditPlane
   var990 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var986.statusTip = var990
   var2 = var11.EditPlane
   var990 = arg2:getText("PluginActions", var2 ... "Text")
   var986.text = var990
   var0.EditPlane = var986
   local var1006 = {}
   var1006.allowBinding = false
   var1006.defaultShortcut = "ctrl+c"
   local var1010 = var11.CopySelected
   var1006.id = var1010
   var2 = var11.CopySelected
   var1010 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1006.statusTip = var1010
   var2 = var11.CopySelected
   var1010 = arg2:getText("PluginActions", var2 ... "Text")
   var1006.text = var1010
   var0.CopySelected = var1006
   local var1025 = {}
   var1025.allowBinding = false
   var1025.defaultShortcut = "ctrl+x"
   local var1029 = var11.CutSelected
   var1025.id = var1029
   var2 = var11.CutSelected
   var1029 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1025.statusTip = var1029
   var2 = var11.CutSelected
   var1029 = arg2:getText("PluginActions", var2 ... "Text")
   var1025.text = var1029
   var0.CutSelected = var1025
   local var1044 = {}
   var1044.allowBinding = false
   var1044.defaultShortcut = "delete"
   local var1048 = var11.DeleteSelected
   var1044.id = var1048
   var2 = var11.DeleteSelected
   var1048 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1044.statusTip = var1048
   var2 = var11.DeleteSelected
   var1048 = arg2:getText("PluginActions", var2 ... "Text")
   var1044.text = var1048
   var0.DeleteSelected = var1044
   local var1063 = {}
   var1063.allowBinding = false
   var1063.defaultShortcut = "ctrl+v"
   local var1067 = var11.PasteSelected
   var1063.id = var1067
   var2 = var11.PasteSelected
   var1067 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1063.statusTip = var1067
   var2 = var11.PasteSelected
   var1067 = arg2:getText("PluginActions", var2 ... "Text")
   var1063.text = var1067
   var0.PasteSelected = var1063
   local var1082 = {}
   var1082.allowBinding = false
   var1082.defaultShortcut = "ctrl+d"
   local var1086 = var11.DuplicateSelected
   var1082.id = var1086
   var2 = var11.DuplicateSelected
   var1086 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1082.statusTip = var1086
   var2 = var11.DuplicateSelected
   var1086 = arg2:getText("PluginActions", var2 ... "Text")
   var1082.text = var1086
   var0.DuplicateSelected = var1082
   local var1101 = {}
   var1101.allowBinding = false
   var1101.defaultShortcut = "return"
   local var1105 = var11.Apply
   var1101.id = var1105
   var2 = var11.Apply
   var1105 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1101.statusTip = var1105
   var2 = var11.Apply
   var1105 = arg2:getText("PluginActions", var2 ... "Text")
   var1101.text = var1105
   var0.Apply = var1101
   local var1120 = {}
   var1120.allowBinding = false
   var1120.defaultShortcut = "escape"
   local var1124 = var11.Quit
   var1120.id = var1124
   var2 = var11.Quit
   var1124 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1120.statusTip = var1124
   var2 = var11.Quit
   var1124 = arg2:getText("PluginActions", var2 ... "Text")
   var1120.text = var1124
   var0.Cancel = var1120
   local var1139 = {}
   var1139._mouse = arg1:GetMouse()
   local var1142 = var3
   var1142 = arg1
   var1139._pluginActions = var1142.new(var1142, var0)
   var1139._cachedValues = {}
   var1139._originalValues = {}
   var1139._userInputService = game:GetService("UserInputService")
   var1139._workspace = game:GetService("Workspace")
   var1139._reservedMouseMove = {}
   var1139._reservedMouseDown = {}
   var1139._brushMouse = {}
   var1139._brushScrollWheel = {}
   var1139.MouseDownAction = var4.new()
   var1139.MouseMoveAction = var4.new()
   local var10 = setmetatable(var1139, var12)
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
      local var1297 = {}
      var1297.allowBinding = false
      var1297.defaultShortcut = "ctrl+shift+space"
      local var1301 = var11.EditPlane
      var1297.id = var1301
      local var2 = var11.EditPlane
      var1301 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1297.statusTip = var1301
      var2 = var11.EditPlane
      var1301 = arg2:getText("PluginActions", var2 ... "Text")
      var1297.text = var1301
      var0.EditPlane = var1297
      local var1317 = {}
      var1317.allowBinding = false
      var1317.defaultShortcut = "ctrl+c"
      local var1321 = var11.CopySelected
      var1317.id = var1321
      var2 = var11.CopySelected
      var1321 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1317.statusTip = var1321
      var2 = var11.CopySelected
      var1321 = arg2:getText("PluginActions", var2 ... "Text")
      var1317.text = var1321
      var0.CopySelected = var1317
      local var1336 = {}
      var1336.allowBinding = false
      var1336.defaultShortcut = "ctrl+x"
      local var1340 = var11.CutSelected
      var1336.id = var1340
      var2 = var11.CutSelected
      var1340 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1336.statusTip = var1340
      var2 = var11.CutSelected
      var1340 = arg2:getText("PluginActions", var2 ... "Text")
      var1336.text = var1340
      var0.CutSelected = var1336
      local var1355 = {}
      var1355.allowBinding = false
      var1355.defaultShortcut = "delete"
      local var1359 = var11.DeleteSelected
      var1355.id = var1359
      var2 = var11.DeleteSelected
      var1359 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1355.statusTip = var1359
      var2 = var11.DeleteSelected
      var1359 = arg2:getText("PluginActions", var2 ... "Text")
      var1355.text = var1359
      var0.DeleteSelected = var1355
      local var1374 = {}
      var1374.allowBinding = false
      var1374.defaultShortcut = "ctrl+v"
      local var1378 = var11.PasteSelected
      var1374.id = var1378
      var2 = var11.PasteSelected
      var1378 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1374.statusTip = var1378
      var2 = var11.PasteSelected
      var1378 = arg2:getText("PluginActions", var2 ... "Text")
      var1374.text = var1378
      var0.PasteSelected = var1374
      local var1393 = {}
      var1393.allowBinding = false
      var1393.defaultShortcut = "ctrl+d"
      local var1397 = var11.DuplicateSelected
      var1393.id = var1397
      var2 = var11.DuplicateSelected
      var1397 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1393.statusTip = var1397
      var2 = var11.DuplicateSelected
      var1397 = arg2:getText("PluginActions", var2 ... "Text")
      var1393.text = var1397
      var0.DuplicateSelected = var1393
      local var1412 = {}
      var1412.allowBinding = false
      var1412.defaultShortcut = "return"
      local var1416 = var11.Apply
      var1412.id = var1416
      var2 = var11.Apply
      var1416 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1412.statusTip = var1416
      var2 = var11.Apply
      var1416 = arg2:getText("PluginActions", var2 ... "Text")
      var1412.text = var1416
      var0.Apply = var1412
      local var1431 = {}
      var1431.allowBinding = false
      var1431.defaultShortcut = "escape"
      local var1435 = var11.Quit
      var1431.id = var1435
      var2 = var11.Quit
      var1435 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1431.statusTip = var1435
      var2 = var11.Quit
      var1435 = arg2:getText("PluginActions", var2 ... "Text")
      var1431.text = var1435
      var0.Cancel = var1431
      local var1450 = {}
      var1450._mouse = arg1:GetMouse()
      local var1453 = var3
      var1453 = arg1
      var1450._pluginActions = var1453.new(var1453, var0)
      var1450._cachedValues = {}
      var1450._originalValues = {}
      var1450._userInputService = game:GetService("UserInputService")
      var1450._workspace = game:GetService("Workspace")
      var1450._reservedMouseMove = {}
      var1450._reservedMouseDown = {}
      var1450._brushMouse = {}
      var1450._brushScrollWheel = {}
      var1450.MouseDownAction = var4.new()
      var1450.MouseMoveAction = var4.new()
      local var10 = setmetatable(var1450, var12)
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
