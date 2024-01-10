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
   local var56 = {}
   var56.allowBinding = false
   var56.defaultShortcut = "ctrl+shift+space"
   local var60 = var11.EditPlane
   var56.id = var60
   local var2 = var11.EditPlane
   var60 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var56.statusTip = var60
   var2 = var11.EditPlane
   var60 = arg2:getText("PluginActions", var2 ... "Text")
   var56.text = var60
   var0.EditPlane = var56
   local var76 = {}
   var76.allowBinding = false
   var76.defaultShortcut = "ctrl+c"
   local var80 = var11.CopySelected
   var76.id = var80
   var2 = var11.CopySelected
   var80 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var76.statusTip = var80
   var2 = var11.CopySelected
   var80 = arg2:getText("PluginActions", var2 ... "Text")
   var76.text = var80
   var0.CopySelected = var76
   local var95 = {}
   var95.allowBinding = false
   var95.defaultShortcut = "ctrl+x"
   local var99 = var11.CutSelected
   var95.id = var99
   var2 = var11.CutSelected
   var99 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var95.statusTip = var99
   var2 = var11.CutSelected
   var99 = arg2:getText("PluginActions", var2 ... "Text")
   var95.text = var99
   var0.CutSelected = var95
   local var114 = {}
   var114.allowBinding = false
   var114.defaultShortcut = "delete"
   local var118 = var11.DeleteSelected
   var114.id = var118
   var2 = var11.DeleteSelected
   var118 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var114.statusTip = var118
   var2 = var11.DeleteSelected
   var118 = arg2:getText("PluginActions", var2 ... "Text")
   var114.text = var118
   var0.DeleteSelected = var114
   local var133 = {}
   var133.allowBinding = false
   var133.defaultShortcut = "ctrl+v"
   local var137 = var11.PasteSelected
   var133.id = var137
   var2 = var11.PasteSelected
   var137 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var133.statusTip = var137
   var2 = var11.PasteSelected
   var137 = arg2:getText("PluginActions", var2 ... "Text")
   var133.text = var137
   var0.PasteSelected = var133
   local var152 = {}
   var152.allowBinding = false
   var152.defaultShortcut = "ctrl+d"
   local var156 = var11.DuplicateSelected
   var152.id = var156
   var2 = var11.DuplicateSelected
   var156 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var152.statusTip = var156
   var2 = var11.DuplicateSelected
   var156 = arg2:getText("PluginActions", var2 ... "Text")
   var152.text = var156
   var0.DuplicateSelected = var152
   local var171 = {}
   var171.allowBinding = false
   var171.defaultShortcut = "return"
   local var175 = var11.Apply
   var171.id = var175
   var2 = var11.Apply
   var175 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var171.statusTip = var175
   var2 = var11.Apply
   var175 = arg2:getText("PluginActions", var2 ... "Text")
   var171.text = var175
   var0.Apply = var171
   local var190 = {}
   var190.allowBinding = false
   var190.defaultShortcut = "escape"
   local var194 = var11.Quit
   var190.id = var194
   var2 = var11.Quit
   var194 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var190.statusTip = var194
   var2 = var11.Quit
   var194 = arg2:getText("PluginActions", var2 ... "Text")
   var190.text = var194
   var0.Cancel = var190
   local var209 = {}
   var209._mouse = arg1:GetMouse()
   local var212 = var3
   var212 = arg1
   var209._pluginActions = var212.new(var212, var0)
   var209._cachedValues = {}
   var209._originalValues = {}
   var209._userInputService = game:GetService("UserInputService")
   var209._workspace = game:GetService("Workspace")
   var209._reservedMouseMove = {}
   var209._reservedMouseDown = {}
   var209._brushMouse = {}
   var209._brushScrollWheel = {}
   var209.MouseDownAction = var4.new()
   var209.MouseMoveAction = var4.new()
   local var10 = setmetatable(var209, var12)
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
      local var367 = {}
      var367.allowBinding = false
      var367.defaultShortcut = "ctrl+shift+space"
      local var371 = var11.EditPlane
      var367.id = var371
      local var2 = var11.EditPlane
      var371 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var367.statusTip = var371
      var2 = var11.EditPlane
      var371 = arg2:getText("PluginActions", var2 ... "Text")
      var367.text = var371
      var0.EditPlane = var367
      local var387 = {}
      var387.allowBinding = false
      var387.defaultShortcut = "ctrl+c"
      local var391 = var11.CopySelected
      var387.id = var391
      var2 = var11.CopySelected
      var391 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var387.statusTip = var391
      var2 = var11.CopySelected
      var391 = arg2:getText("PluginActions", var2 ... "Text")
      var387.text = var391
      var0.CopySelected = var387
      local var406 = {}
      var406.allowBinding = false
      var406.defaultShortcut = "ctrl+x"
      local var410 = var11.CutSelected
      var406.id = var410
      var2 = var11.CutSelected
      var410 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var406.statusTip = var410
      var2 = var11.CutSelected
      var410 = arg2:getText("PluginActions", var2 ... "Text")
      var406.text = var410
      var0.CutSelected = var406
      local var425 = {}
      var425.allowBinding = false
      var425.defaultShortcut = "delete"
      local var429 = var11.DeleteSelected
      var425.id = var429
      var2 = var11.DeleteSelected
      var429 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var425.statusTip = var429
      var2 = var11.DeleteSelected
      var429 = arg2:getText("PluginActions", var2 ... "Text")
      var425.text = var429
      var0.DeleteSelected = var425
      local var444 = {}
      var444.allowBinding = false
      var444.defaultShortcut = "ctrl+v"
      local var448 = var11.PasteSelected
      var444.id = var448
      var2 = var11.PasteSelected
      var448 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var444.statusTip = var448
      var2 = var11.PasteSelected
      var448 = arg2:getText("PluginActions", var2 ... "Text")
      var444.text = var448
      var0.PasteSelected = var444
      local var463 = {}
      var463.allowBinding = false
      var463.defaultShortcut = "ctrl+d"
      local var467 = var11.DuplicateSelected
      var463.id = var467
      var2 = var11.DuplicateSelected
      var467 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var463.statusTip = var467
      var2 = var11.DuplicateSelected
      var467 = arg2:getText("PluginActions", var2 ... "Text")
      var463.text = var467
      var0.DuplicateSelected = var463
      local var482 = {}
      var482.allowBinding = false
      var482.defaultShortcut = "return"
      local var486 = var11.Apply
      var482.id = var486
      var2 = var11.Apply
      var486 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var482.statusTip = var486
      var2 = var11.Apply
      var486 = arg2:getText("PluginActions", var2 ... "Text")
      var482.text = var486
      var0.Apply = var482
      local var501 = {}
      var501.allowBinding = false
      var501.defaultShortcut = "escape"
      local var505 = var11.Quit
      var501.id = var505
      var2 = var11.Quit
      var505 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var501.statusTip = var505
      var2 = var11.Quit
      var505 = arg2:getText("PluginActions", var2 ... "Text")
      var501.text = var505
      var0.Cancel = var501
      local var520 = {}
      var520._mouse = arg1:GetMouse()
      local var523 = var3
      var523 = arg1
      var520._pluginActions = var523.new(var523, var0)
      var520._cachedValues = {}
      var520._originalValues = {}
      var520._userInputService = game:GetService("UserInputService")
      var520._workspace = game:GetService("Workspace")
      var520._reservedMouseMove = {}
      var520._reservedMouseDown = {}
      var520._brushMouse = {}
      var520._brushScrollWheel = {}
      var520.MouseDownAction = var4.new()
      var520.MouseMoveAction = var4.new()
      local var10 = setmetatable(var520, var12)
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
