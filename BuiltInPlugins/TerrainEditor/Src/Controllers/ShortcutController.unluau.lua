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
   local var946 = {}
   var946.allowBinding = false
   var946.defaultShortcut = "ctrl+shift+space"
   local var950 = var11.EditPlane
   var946.id = var950
   local var2 = var11.EditPlane
   var950 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var946.statusTip = var950
   var2 = var11.EditPlane
   var950 = arg2:getText("PluginActions", var2 ... "Text")
   var946.text = var950
   var0.EditPlane = var946
   local var966 = {}
   var966.allowBinding = false
   var966.defaultShortcut = "ctrl+c"
   local var970 = var11.CopySelected
   var966.id = var970
   var2 = var11.CopySelected
   var970 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var966.statusTip = var970
   var2 = var11.CopySelected
   var970 = arg2:getText("PluginActions", var2 ... "Text")
   var966.text = var970
   var0.CopySelected = var966
   local var985 = {}
   var985.allowBinding = false
   var985.defaultShortcut = "ctrl+x"
   local var989 = var11.CutSelected
   var985.id = var989
   var2 = var11.CutSelected
   var989 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var985.statusTip = var989
   var2 = var11.CutSelected
   var989 = arg2:getText("PluginActions", var2 ... "Text")
   var985.text = var989
   var0.CutSelected = var985
   local var1004 = {}
   var1004.allowBinding = false
   var1004.defaultShortcut = "delete"
   local var1008 = var11.DeleteSelected
   var1004.id = var1008
   var2 = var11.DeleteSelected
   var1008 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1004.statusTip = var1008
   var2 = var11.DeleteSelected
   var1008 = arg2:getText("PluginActions", var2 ... "Text")
   var1004.text = var1008
   var0.DeleteSelected = var1004
   local var1023 = {}
   var1023.allowBinding = false
   var1023.defaultShortcut = "ctrl+v"
   local var1027 = var11.PasteSelected
   var1023.id = var1027
   var2 = var11.PasteSelected
   var1027 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1023.statusTip = var1027
   var2 = var11.PasteSelected
   var1027 = arg2:getText("PluginActions", var2 ... "Text")
   var1023.text = var1027
   var0.PasteSelected = var1023
   local var1042 = {}
   var1042.allowBinding = false
   var1042.defaultShortcut = "ctrl+d"
   local var1046 = var11.DuplicateSelected
   var1042.id = var1046
   var2 = var11.DuplicateSelected
   var1046 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1042.statusTip = var1046
   var2 = var11.DuplicateSelected
   var1046 = arg2:getText("PluginActions", var2 ... "Text")
   var1042.text = var1046
   var0.DuplicateSelected = var1042
   local var1061 = {}
   var1061.allowBinding = false
   var1061.defaultShortcut = "return"
   local var1065 = var11.Apply
   var1061.id = var1065
   var2 = var11.Apply
   var1065 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1061.statusTip = var1065
   var2 = var11.Apply
   var1065 = arg2:getText("PluginActions", var2 ... "Text")
   var1061.text = var1065
   var0.Apply = var1061
   local var1080 = {}
   var1080.allowBinding = false
   var1080.defaultShortcut = "escape"
   local var1084 = var11.Quit
   var1080.id = var1084
   var2 = var11.Quit
   var1084 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var1080.statusTip = var1084
   var2 = var11.Quit
   var1084 = arg2:getText("PluginActions", var2 ... "Text")
   var1080.text = var1084
   var0.Cancel = var1080
   local var1099 = {}
   var1099._mouse = arg1:GetMouse()
   local var1102 = var3
   var1102 = arg1
   var1099._pluginActions = var1102.new(var1102, var0)
   var1099._cachedValues = {}
   var1099._originalValues = {}
   var1099._userInputService = game:GetService("UserInputService")
   var1099._workspace = game:GetService("Workspace")
   var1099._reservedMouseMove = {}
   var1099._reservedMouseDown = {}
   var1099._brushMouse = {}
   var1099._brushScrollWheel = {}
   var1099.MouseDownAction = var4.new()
   var1099.MouseMoveAction = var4.new()
   local var10 = setmetatable(var1099, var12)
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
      local var1257 = {}
      var1257.allowBinding = false
      var1257.defaultShortcut = "ctrl+shift+space"
      local var1261 = var11.EditPlane
      var1257.id = var1261
      local var2 = var11.EditPlane
      var1261 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1257.statusTip = var1261
      var2 = var11.EditPlane
      var1261 = arg2:getText("PluginActions", var2 ... "Text")
      var1257.text = var1261
      var0.EditPlane = var1257
      local var1277 = {}
      var1277.allowBinding = false
      var1277.defaultShortcut = "ctrl+c"
      local var1281 = var11.CopySelected
      var1277.id = var1281
      var2 = var11.CopySelected
      var1281 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1277.statusTip = var1281
      var2 = var11.CopySelected
      var1281 = arg2:getText("PluginActions", var2 ... "Text")
      var1277.text = var1281
      var0.CopySelected = var1277
      local var1296 = {}
      var1296.allowBinding = false
      var1296.defaultShortcut = "ctrl+x"
      local var1300 = var11.CutSelected
      var1296.id = var1300
      var2 = var11.CutSelected
      var1300 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1296.statusTip = var1300
      var2 = var11.CutSelected
      var1300 = arg2:getText("PluginActions", var2 ... "Text")
      var1296.text = var1300
      var0.CutSelected = var1296
      local var1315 = {}
      var1315.allowBinding = false
      var1315.defaultShortcut = "delete"
      local var1319 = var11.DeleteSelected
      var1315.id = var1319
      var2 = var11.DeleteSelected
      var1319 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1315.statusTip = var1319
      var2 = var11.DeleteSelected
      var1319 = arg2:getText("PluginActions", var2 ... "Text")
      var1315.text = var1319
      var0.DeleteSelected = var1315
      local var1334 = {}
      var1334.allowBinding = false
      var1334.defaultShortcut = "ctrl+v"
      local var1338 = var11.PasteSelected
      var1334.id = var1338
      var2 = var11.PasteSelected
      var1338 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1334.statusTip = var1338
      var2 = var11.PasteSelected
      var1338 = arg2:getText("PluginActions", var2 ... "Text")
      var1334.text = var1338
      var0.PasteSelected = var1334
      local var1353 = {}
      var1353.allowBinding = false
      var1353.defaultShortcut = "ctrl+d"
      local var1357 = var11.DuplicateSelected
      var1353.id = var1357
      var2 = var11.DuplicateSelected
      var1357 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1353.statusTip = var1357
      var2 = var11.DuplicateSelected
      var1357 = arg2:getText("PluginActions", var2 ... "Text")
      var1353.text = var1357
      var0.DuplicateSelected = var1353
      local var1372 = {}
      var1372.allowBinding = false
      var1372.defaultShortcut = "return"
      local var1376 = var11.Apply
      var1372.id = var1376
      var2 = var11.Apply
      var1376 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1372.statusTip = var1376
      var2 = var11.Apply
      var1376 = arg2:getText("PluginActions", var2 ... "Text")
      var1372.text = var1376
      var0.Apply = var1372
      local var1391 = {}
      var1391.allowBinding = false
      var1391.defaultShortcut = "escape"
      local var1395 = var11.Quit
      var1391.id = var1395
      var2 = var11.Quit
      var1395 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1391.statusTip = var1395
      var2 = var11.Quit
      var1395 = arg2:getText("PluginActions", var2 ... "Text")
      var1391.text = var1395
      var0.Cancel = var1391
      local var1410 = {}
      var1410._mouse = arg1:GetMouse()
      local var1413 = var3
      var1413 = arg1
      var1410._pluginActions = var1413.new(var1413, var0)
      var1410._cachedValues = {}
      var1410._originalValues = {}
      var1410._userInputService = game:GetService("UserInputService")
      var1410._workspace = game:GetService("Workspace")
      var1410._reservedMouseMove = {}
      var1410._reservedMouseDown = {}
      var1410._brushMouse = {}
      var1410._brushScrollWheel = {}
      var1410.MouseDownAction = var4.new()
      var1410.MouseMoveAction = var4.new()
      local var10 = setmetatable(var1410, var12)
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
