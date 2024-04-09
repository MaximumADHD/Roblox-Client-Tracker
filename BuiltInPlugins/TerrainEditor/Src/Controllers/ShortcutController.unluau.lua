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
   local var683 = {}
   var683.allowBinding = false
   var683.defaultShortcut = "ctrl+shift+space"
   local var687 = var11.EditPlane
   var683.id = var687
   local var2 = var11.EditPlane
   var687 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var683.statusTip = var687
   var2 = var11.EditPlane
   var687 = arg2:getText("PluginActions", var2 ... "Text")
   var683.text = var687
   var0.EditPlane = var683
   local var703 = {}
   var703.allowBinding = false
   var703.defaultShortcut = "ctrl+c"
   local var707 = var11.CopySelected
   var703.id = var707
   var2 = var11.CopySelected
   var707 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var703.statusTip = var707
   var2 = var11.CopySelected
   var707 = arg2:getText("PluginActions", var2 ... "Text")
   var703.text = var707
   var0.CopySelected = var703
   local var722 = {}
   var722.allowBinding = false
   var722.defaultShortcut = "ctrl+x"
   local var726 = var11.CutSelected
   var722.id = var726
   var2 = var11.CutSelected
   var726 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var722.statusTip = var726
   var2 = var11.CutSelected
   var726 = arg2:getText("PluginActions", var2 ... "Text")
   var722.text = var726
   var0.CutSelected = var722
   local var741 = {}
   var741.allowBinding = false
   var741.defaultShortcut = "delete"
   local var745 = var11.DeleteSelected
   var741.id = var745
   var2 = var11.DeleteSelected
   var745 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var741.statusTip = var745
   var2 = var11.DeleteSelected
   var745 = arg2:getText("PluginActions", var2 ... "Text")
   var741.text = var745
   var0.DeleteSelected = var741
   local var760 = {}
   var760.allowBinding = false
   var760.defaultShortcut = "ctrl+v"
   local var764 = var11.PasteSelected
   var760.id = var764
   var2 = var11.PasteSelected
   var764 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var760.statusTip = var764
   var2 = var11.PasteSelected
   var764 = arg2:getText("PluginActions", var2 ... "Text")
   var760.text = var764
   var0.PasteSelected = var760
   local var779 = {}
   var779.allowBinding = false
   var779.defaultShortcut = "ctrl+d"
   local var783 = var11.DuplicateSelected
   var779.id = var783
   var2 = var11.DuplicateSelected
   var783 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var779.statusTip = var783
   var2 = var11.DuplicateSelected
   var783 = arg2:getText("PluginActions", var2 ... "Text")
   var779.text = var783
   var0.DuplicateSelected = var779
   local var798 = {}
   var798.allowBinding = false
   var798.defaultShortcut = "return"
   local var802 = var11.Apply
   var798.id = var802
   var2 = var11.Apply
   var802 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var798.statusTip = var802
   var2 = var11.Apply
   var802 = arg2:getText("PluginActions", var2 ... "Text")
   var798.text = var802
   var0.Apply = var798
   local var817 = {}
   var817.allowBinding = false
   var817.defaultShortcut = "escape"
   local var821 = var11.Quit
   var817.id = var821
   var2 = var11.Quit
   var821 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var817.statusTip = var821
   var2 = var11.Quit
   var821 = arg2:getText("PluginActions", var2 ... "Text")
   var817.text = var821
   var0.Cancel = var817
   local var836 = {}
   var836._mouse = arg1:GetMouse()
   local var839 = var3
   var839 = arg1
   var836._pluginActions = var839.new(var839, var0)
   var836._cachedValues = {}
   var836._originalValues = {}
   var836._userInputService = game:GetService("UserInputService")
   var836._workspace = game:GetService("Workspace")
   var836._reservedMouseMove = {}
   var836._reservedMouseDown = {}
   var836._brushMouse = {}
   var836._brushScrollWheel = {}
   var836.MouseDownAction = var4.new()
   var836.MouseMoveAction = var4.new()
   local var10 = setmetatable(var836, var12)
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
      local var994 = {}
      var994.allowBinding = false
      var994.defaultShortcut = "ctrl+shift+space"
      local var998 = var11.EditPlane
      var994.id = var998
      local var2 = var11.EditPlane
      var998 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var994.statusTip = var998
      var2 = var11.EditPlane
      var998 = arg2:getText("PluginActions", var2 ... "Text")
      var994.text = var998
      var0.EditPlane = var994
      local var1014 = {}
      var1014.allowBinding = false
      var1014.defaultShortcut = "ctrl+c"
      local var1018 = var11.CopySelected
      var1014.id = var1018
      var2 = var11.CopySelected
      var1018 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1014.statusTip = var1018
      var2 = var11.CopySelected
      var1018 = arg2:getText("PluginActions", var2 ... "Text")
      var1014.text = var1018
      var0.CopySelected = var1014
      local var1033 = {}
      var1033.allowBinding = false
      var1033.defaultShortcut = "ctrl+x"
      local var1037 = var11.CutSelected
      var1033.id = var1037
      var2 = var11.CutSelected
      var1037 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1033.statusTip = var1037
      var2 = var11.CutSelected
      var1037 = arg2:getText("PluginActions", var2 ... "Text")
      var1033.text = var1037
      var0.CutSelected = var1033
      local var1052 = {}
      var1052.allowBinding = false
      var1052.defaultShortcut = "delete"
      local var1056 = var11.DeleteSelected
      var1052.id = var1056
      var2 = var11.DeleteSelected
      var1056 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1052.statusTip = var1056
      var2 = var11.DeleteSelected
      var1056 = arg2:getText("PluginActions", var2 ... "Text")
      var1052.text = var1056
      var0.DeleteSelected = var1052
      local var1071 = {}
      var1071.allowBinding = false
      var1071.defaultShortcut = "ctrl+v"
      local var1075 = var11.PasteSelected
      var1071.id = var1075
      var2 = var11.PasteSelected
      var1075 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1071.statusTip = var1075
      var2 = var11.PasteSelected
      var1075 = arg2:getText("PluginActions", var2 ... "Text")
      var1071.text = var1075
      var0.PasteSelected = var1071
      local var1090 = {}
      var1090.allowBinding = false
      var1090.defaultShortcut = "ctrl+d"
      local var1094 = var11.DuplicateSelected
      var1090.id = var1094
      var2 = var11.DuplicateSelected
      var1094 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1090.statusTip = var1094
      var2 = var11.DuplicateSelected
      var1094 = arg2:getText("PluginActions", var2 ... "Text")
      var1090.text = var1094
      var0.DuplicateSelected = var1090
      local var1109 = {}
      var1109.allowBinding = false
      var1109.defaultShortcut = "return"
      local var1113 = var11.Apply
      var1109.id = var1113
      var2 = var11.Apply
      var1113 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1109.statusTip = var1113
      var2 = var11.Apply
      var1113 = arg2:getText("PluginActions", var2 ... "Text")
      var1109.text = var1113
      var0.Apply = var1109
      local var1128 = {}
      var1128.allowBinding = false
      var1128.defaultShortcut = "escape"
      local var1132 = var11.Quit
      var1128.id = var1132
      var2 = var11.Quit
      var1132 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var1128.statusTip = var1132
      var2 = var11.Quit
      var1132 = arg2:getText("PluginActions", var2 ... "Text")
      var1128.text = var1132
      var0.Cancel = var1128
      local var1147 = {}
      var1147._mouse = arg1:GetMouse()
      local var1150 = var3
      var1150 = arg1
      var1147._pluginActions = var1150.new(var1150, var0)
      var1147._cachedValues = {}
      var1147._originalValues = {}
      var1147._userInputService = game:GetService("UserInputService")
      var1147._workspace = game:GetService("Workspace")
      var1147._reservedMouseMove = {}
      var1147._reservedMouseDown = {}
      var1147._brushMouse = {}
      var1147._brushScrollWheel = {}
      var1147.MouseDownAction = var4.new()
      var1147.MouseMoveAction = var4.new()
      local var10 = setmetatable(var1147, var12)
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
