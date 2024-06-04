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
   local var525 = {}
   var525.allowBinding = false
   var525.defaultShortcut = "ctrl+shift+space"
   local var529 = var11.EditPlane
   var525.id = var529
   local var2 = var11.EditPlane
   var529 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var525.statusTip = var529
   var2 = var11.EditPlane
   var529 = arg2:getText("PluginActions", var2 ... "Text")
   var525.text = var529
   var0.EditPlane = var525
   local var545 = {}
   var545.allowBinding = false
   var545.defaultShortcut = "ctrl+c"
   local var549 = var11.CopySelected
   var545.id = var549
   var2 = var11.CopySelected
   var549 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var545.statusTip = var549
   var2 = var11.CopySelected
   var549 = arg2:getText("PluginActions", var2 ... "Text")
   var545.text = var549
   var0.CopySelected = var545
   local var564 = {}
   var564.allowBinding = false
   var564.defaultShortcut = "ctrl+x"
   local var568 = var11.CutSelected
   var564.id = var568
   var2 = var11.CutSelected
   var568 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var564.statusTip = var568
   var2 = var11.CutSelected
   var568 = arg2:getText("PluginActions", var2 ... "Text")
   var564.text = var568
   var0.CutSelected = var564
   local var583 = {}
   var583.allowBinding = false
   var583.defaultShortcut = "delete"
   local var587 = var11.DeleteSelected
   var583.id = var587
   var2 = var11.DeleteSelected
   var587 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var583.statusTip = var587
   var2 = var11.DeleteSelected
   var587 = arg2:getText("PluginActions", var2 ... "Text")
   var583.text = var587
   var0.DeleteSelected = var583
   local var602 = {}
   var602.allowBinding = false
   var602.defaultShortcut = "ctrl+v"
   local var606 = var11.PasteSelected
   var602.id = var606
   var2 = var11.PasteSelected
   var606 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var602.statusTip = var606
   var2 = var11.PasteSelected
   var606 = arg2:getText("PluginActions", var2 ... "Text")
   var602.text = var606
   var0.PasteSelected = var602
   local var621 = {}
   var621.allowBinding = false
   var621.defaultShortcut = "ctrl+d"
   local var625 = var11.DuplicateSelected
   var621.id = var625
   var2 = var11.DuplicateSelected
   var625 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var621.statusTip = var625
   var2 = var11.DuplicateSelected
   var625 = arg2:getText("PluginActions", var2 ... "Text")
   var621.text = var625
   var0.DuplicateSelected = var621
   local var640 = {}
   var640.allowBinding = false
   var640.defaultShortcut = "return"
   local var644 = var11.Apply
   var640.id = var644
   var2 = var11.Apply
   var644 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var640.statusTip = var644
   var2 = var11.Apply
   var644 = arg2:getText("PluginActions", var2 ... "Text")
   var640.text = var644
   var0.Apply = var640
   local var659 = {}
   var659.allowBinding = false
   var659.defaultShortcut = "escape"
   local var663 = var11.Quit
   var659.id = var663
   var2 = var11.Quit
   var663 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var659.statusTip = var663
   var2 = var11.Quit
   var663 = arg2:getText("PluginActions", var2 ... "Text")
   var659.text = var663
   var0.Cancel = var659
   local var678 = {}
   var678._mouse = arg1:GetMouse()
   local var681 = var3
   var681 = arg1
   var678._pluginActions = var681.new(var681, var0)
   var678._cachedValues = {}
   var678._originalValues = {}
   var678._userInputService = game:GetService("UserInputService")
   var678._workspace = game:GetService("Workspace")
   var678._reservedMouseMove = {}
   var678._reservedMouseDown = {}
   var678._brushMouse = {}
   var678._brushScrollWheel = {}
   var678.MouseDownAction = var4.new()
   var678.MouseMoveAction = var4.new()
   local var10 = setmetatable(var678, var12)
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
      local var836 = {}
      var836.allowBinding = false
      var836.defaultShortcut = "ctrl+shift+space"
      local var840 = var11.EditPlane
      var836.id = var840
      local var2 = var11.EditPlane
      var840 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var836.statusTip = var840
      var2 = var11.EditPlane
      var840 = arg2:getText("PluginActions", var2 ... "Text")
      var836.text = var840
      var0.EditPlane = var836
      local var856 = {}
      var856.allowBinding = false
      var856.defaultShortcut = "ctrl+c"
      local var860 = var11.CopySelected
      var856.id = var860
      var2 = var11.CopySelected
      var860 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var856.statusTip = var860
      var2 = var11.CopySelected
      var860 = arg2:getText("PluginActions", var2 ... "Text")
      var856.text = var860
      var0.CopySelected = var856
      local var875 = {}
      var875.allowBinding = false
      var875.defaultShortcut = "ctrl+x"
      local var879 = var11.CutSelected
      var875.id = var879
      var2 = var11.CutSelected
      var879 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var875.statusTip = var879
      var2 = var11.CutSelected
      var879 = arg2:getText("PluginActions", var2 ... "Text")
      var875.text = var879
      var0.CutSelected = var875
      local var894 = {}
      var894.allowBinding = false
      var894.defaultShortcut = "delete"
      local var898 = var11.DeleteSelected
      var894.id = var898
      var2 = var11.DeleteSelected
      var898 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var894.statusTip = var898
      var2 = var11.DeleteSelected
      var898 = arg2:getText("PluginActions", var2 ... "Text")
      var894.text = var898
      var0.DeleteSelected = var894
      local var913 = {}
      var913.allowBinding = false
      var913.defaultShortcut = "ctrl+v"
      local var917 = var11.PasteSelected
      var913.id = var917
      var2 = var11.PasteSelected
      var917 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var913.statusTip = var917
      var2 = var11.PasteSelected
      var917 = arg2:getText("PluginActions", var2 ... "Text")
      var913.text = var917
      var0.PasteSelected = var913
      local var932 = {}
      var932.allowBinding = false
      var932.defaultShortcut = "ctrl+d"
      local var936 = var11.DuplicateSelected
      var932.id = var936
      var2 = var11.DuplicateSelected
      var936 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var932.statusTip = var936
      var2 = var11.DuplicateSelected
      var936 = arg2:getText("PluginActions", var2 ... "Text")
      var932.text = var936
      var0.DuplicateSelected = var932
      local var951 = {}
      var951.allowBinding = false
      var951.defaultShortcut = "return"
      local var955 = var11.Apply
      var951.id = var955
      var2 = var11.Apply
      var955 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var951.statusTip = var955
      var2 = var11.Apply
      var955 = arg2:getText("PluginActions", var2 ... "Text")
      var951.text = var955
      var0.Apply = var951
      local var970 = {}
      var970.allowBinding = false
      var970.defaultShortcut = "escape"
      local var974 = var11.Quit
      var970.id = var974
      var2 = var11.Quit
      var974 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var970.statusTip = var974
      var2 = var11.Quit
      var974 = arg2:getText("PluginActions", var2 ... "Text")
      var970.text = var974
      var0.Cancel = var970
      local var989 = {}
      var989._mouse = arg1:GetMouse()
      local var992 = var3
      var992 = arg1
      var989._pluginActions = var992.new(var992, var0)
      var989._cachedValues = {}
      var989._originalValues = {}
      var989._userInputService = game:GetService("UserInputService")
      var989._workspace = game:GetService("Workspace")
      var989._reservedMouseMove = {}
      var989._reservedMouseDown = {}
      var989._brushMouse = {}
      var989._brushScrollWheel = {}
      var989.MouseDownAction = var4.new()
      var989.MouseMoveAction = var4.new()
      local var10 = setmetatable(var989, var12)
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
