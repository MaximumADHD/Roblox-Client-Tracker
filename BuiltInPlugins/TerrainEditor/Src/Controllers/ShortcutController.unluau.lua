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
   local var534 = {}
   var534.allowBinding = false
   var534.defaultShortcut = "ctrl+shift+space"
   local var538 = var11.EditPlane
   var534.id = var538
   local var2 = var11.EditPlane
   var538 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var534.statusTip = var538
   var2 = var11.EditPlane
   var538 = arg2:getText("PluginActions", var2 ... "Text")
   var534.text = var538
   var0.EditPlane = var534
   local var554 = {}
   var554.allowBinding = false
   var554.defaultShortcut = "ctrl+c"
   local var558 = var11.CopySelected
   var554.id = var558
   var2 = var11.CopySelected
   var558 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var554.statusTip = var558
   var2 = var11.CopySelected
   var558 = arg2:getText("PluginActions", var2 ... "Text")
   var554.text = var558
   var0.CopySelected = var554
   local var573 = {}
   var573.allowBinding = false
   var573.defaultShortcut = "ctrl+x"
   local var577 = var11.CutSelected
   var573.id = var577
   var2 = var11.CutSelected
   var577 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var573.statusTip = var577
   var2 = var11.CutSelected
   var577 = arg2:getText("PluginActions", var2 ... "Text")
   var573.text = var577
   var0.CutSelected = var573
   local var592 = {}
   var592.allowBinding = false
   var592.defaultShortcut = "delete"
   local var596 = var11.DeleteSelected
   var592.id = var596
   var2 = var11.DeleteSelected
   var596 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var592.statusTip = var596
   var2 = var11.DeleteSelected
   var596 = arg2:getText("PluginActions", var2 ... "Text")
   var592.text = var596
   var0.DeleteSelected = var592
   local var611 = {}
   var611.allowBinding = false
   var611.defaultShortcut = "ctrl+v"
   local var615 = var11.PasteSelected
   var611.id = var615
   var2 = var11.PasteSelected
   var615 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var611.statusTip = var615
   var2 = var11.PasteSelected
   var615 = arg2:getText("PluginActions", var2 ... "Text")
   var611.text = var615
   var0.PasteSelected = var611
   local var630 = {}
   var630.allowBinding = false
   var630.defaultShortcut = "ctrl+d"
   local var634 = var11.DuplicateSelected
   var630.id = var634
   var2 = var11.DuplicateSelected
   var634 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var630.statusTip = var634
   var2 = var11.DuplicateSelected
   var634 = arg2:getText("PluginActions", var2 ... "Text")
   var630.text = var634
   var0.DuplicateSelected = var630
   local var649 = {}
   var649.allowBinding = false
   var649.defaultShortcut = "return"
   local var653 = var11.Apply
   var649.id = var653
   var2 = var11.Apply
   var653 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var649.statusTip = var653
   var2 = var11.Apply
   var653 = arg2:getText("PluginActions", var2 ... "Text")
   var649.text = var653
   var0.Apply = var649
   local var668 = {}
   var668.allowBinding = false
   var668.defaultShortcut = "escape"
   local var672 = var11.Quit
   var668.id = var672
   var2 = var11.Quit
   var672 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var668.statusTip = var672
   var2 = var11.Quit
   var672 = arg2:getText("PluginActions", var2 ... "Text")
   var668.text = var672
   var0.Cancel = var668
   local var687 = {}
   var687._mouse = arg1:GetMouse()
   local var690 = var3
   var690 = arg1
   var687._pluginActions = var690.new(var690, var0)
   var687._cachedValues = {}
   var687._originalValues = {}
   var687._userInputService = game:GetService("UserInputService")
   var687._workspace = game:GetService("Workspace")
   var687._reservedMouseMove = {}
   var687._reservedMouseDown = {}
   var687._brushMouse = {}
   var687._brushScrollWheel = {}
   var687.MouseDownAction = var4.new()
   var687.MouseMoveAction = var4.new()
   local var10 = setmetatable(var687, var12)
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
      local var845 = {}
      var845.allowBinding = false
      var845.defaultShortcut = "ctrl+shift+space"
      local var849 = var11.EditPlane
      var845.id = var849
      local var2 = var11.EditPlane
      var849 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var845.statusTip = var849
      var2 = var11.EditPlane
      var849 = arg2:getText("PluginActions", var2 ... "Text")
      var845.text = var849
      var0.EditPlane = var845
      local var865 = {}
      var865.allowBinding = false
      var865.defaultShortcut = "ctrl+c"
      local var869 = var11.CopySelected
      var865.id = var869
      var2 = var11.CopySelected
      var869 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var865.statusTip = var869
      var2 = var11.CopySelected
      var869 = arg2:getText("PluginActions", var2 ... "Text")
      var865.text = var869
      var0.CopySelected = var865
      local var884 = {}
      var884.allowBinding = false
      var884.defaultShortcut = "ctrl+x"
      local var888 = var11.CutSelected
      var884.id = var888
      var2 = var11.CutSelected
      var888 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var884.statusTip = var888
      var2 = var11.CutSelected
      var888 = arg2:getText("PluginActions", var2 ... "Text")
      var884.text = var888
      var0.CutSelected = var884
      local var903 = {}
      var903.allowBinding = false
      var903.defaultShortcut = "delete"
      local var907 = var11.DeleteSelected
      var903.id = var907
      var2 = var11.DeleteSelected
      var907 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var903.statusTip = var907
      var2 = var11.DeleteSelected
      var907 = arg2:getText("PluginActions", var2 ... "Text")
      var903.text = var907
      var0.DeleteSelected = var903
      local var922 = {}
      var922.allowBinding = false
      var922.defaultShortcut = "ctrl+v"
      local var926 = var11.PasteSelected
      var922.id = var926
      var2 = var11.PasteSelected
      var926 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var922.statusTip = var926
      var2 = var11.PasteSelected
      var926 = arg2:getText("PluginActions", var2 ... "Text")
      var922.text = var926
      var0.PasteSelected = var922
      local var941 = {}
      var941.allowBinding = false
      var941.defaultShortcut = "ctrl+d"
      local var945 = var11.DuplicateSelected
      var941.id = var945
      var2 = var11.DuplicateSelected
      var945 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var941.statusTip = var945
      var2 = var11.DuplicateSelected
      var945 = arg2:getText("PluginActions", var2 ... "Text")
      var941.text = var945
      var0.DuplicateSelected = var941
      local var960 = {}
      var960.allowBinding = false
      var960.defaultShortcut = "return"
      local var964 = var11.Apply
      var960.id = var964
      var2 = var11.Apply
      var964 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var960.statusTip = var964
      var2 = var11.Apply
      var964 = arg2:getText("PluginActions", var2 ... "Text")
      var960.text = var964
      var0.Apply = var960
      local var979 = {}
      var979.allowBinding = false
      var979.defaultShortcut = "escape"
      local var983 = var11.Quit
      var979.id = var983
      var2 = var11.Quit
      var983 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var979.statusTip = var983
      var2 = var11.Quit
      var983 = arg2:getText("PluginActions", var2 ... "Text")
      var979.text = var983
      var0.Cancel = var979
      local var998 = {}
      var998._mouse = arg1:GetMouse()
      local var1001 = var3
      var1001 = arg1
      var998._pluginActions = var1001.new(var1001, var0)
      var998._cachedValues = {}
      var998._originalValues = {}
      var998._userInputService = game:GetService("UserInputService")
      var998._workspace = game:GetService("Workspace")
      var998._reservedMouseMove = {}
      var998._reservedMouseDown = {}
      var998._brushMouse = {}
      var998._brushScrollWheel = {}
      var998.MouseDownAction = var4.new()
      var998.MouseMoveAction = var4.new()
      local var10 = setmetatable(var998, var12)
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
