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
   local var520 = {}
   var520.allowBinding = false
   var520.defaultShortcut = "ctrl+shift+space"
   local var524 = var11.EditPlane
   var520.id = var524
   local var2 = var11.EditPlane
   var524 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var520.statusTip = var524
   var2 = var11.EditPlane
   var524 = arg2:getText("PluginActions", var2 ... "Text")
   var520.text = var524
   var0.EditPlane = var520
   local var540 = {}
   var540.allowBinding = false
   var540.defaultShortcut = "ctrl+c"
   local var544 = var11.CopySelected
   var540.id = var544
   var2 = var11.CopySelected
   var544 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var540.statusTip = var544
   var2 = var11.CopySelected
   var544 = arg2:getText("PluginActions", var2 ... "Text")
   var540.text = var544
   var0.CopySelected = var540
   local var559 = {}
   var559.allowBinding = false
   var559.defaultShortcut = "ctrl+x"
   local var563 = var11.CutSelected
   var559.id = var563
   var2 = var11.CutSelected
   var563 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var559.statusTip = var563
   var2 = var11.CutSelected
   var563 = arg2:getText("PluginActions", var2 ... "Text")
   var559.text = var563
   var0.CutSelected = var559
   local var578 = {}
   var578.allowBinding = false
   var578.defaultShortcut = "delete"
   local var582 = var11.DeleteSelected
   var578.id = var582
   var2 = var11.DeleteSelected
   var582 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var578.statusTip = var582
   var2 = var11.DeleteSelected
   var582 = arg2:getText("PluginActions", var2 ... "Text")
   var578.text = var582
   var0.DeleteSelected = var578
   local var597 = {}
   var597.allowBinding = false
   var597.defaultShortcut = "ctrl+v"
   local var601 = var11.PasteSelected
   var597.id = var601
   var2 = var11.PasteSelected
   var601 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var597.statusTip = var601
   var2 = var11.PasteSelected
   var601 = arg2:getText("PluginActions", var2 ... "Text")
   var597.text = var601
   var0.PasteSelected = var597
   local var616 = {}
   var616.allowBinding = false
   var616.defaultShortcut = "ctrl+d"
   local var620 = var11.DuplicateSelected
   var616.id = var620
   var2 = var11.DuplicateSelected
   var620 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var616.statusTip = var620
   var2 = var11.DuplicateSelected
   var620 = arg2:getText("PluginActions", var2 ... "Text")
   var616.text = var620
   var0.DuplicateSelected = var616
   local var635 = {}
   var635.allowBinding = false
   var635.defaultShortcut = "return"
   local var639 = var11.Apply
   var635.id = var639
   var2 = var11.Apply
   var639 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var635.statusTip = var639
   var2 = var11.Apply
   var639 = arg2:getText("PluginActions", var2 ... "Text")
   var635.text = var639
   var0.Apply = var635
   local var654 = {}
   var654.allowBinding = false
   var654.defaultShortcut = "escape"
   local var658 = var11.Quit
   var654.id = var658
   var2 = var11.Quit
   var658 = arg2:getText("PluginActions", var2 ... "StatusTip")
   var654.statusTip = var658
   var2 = var11.Quit
   var658 = arg2:getText("PluginActions", var2 ... "Text")
   var654.text = var658
   var0.Cancel = var654
   local var673 = {}
   var673._mouse = arg1:GetMouse()
   local var676 = var3
   var676 = arg1
   var673._pluginActions = var676.new(var676, var0)
   var673._cachedValues = {}
   var673._originalValues = {}
   var673._userInputService = game:GetService("UserInputService")
   var673._workspace = game:GetService("Workspace")
   var673._reservedMouseMove = {}
   var673._reservedMouseDown = {}
   var673._brushMouse = {}
   var673._brushScrollWheel = {}
   var673.MouseDownAction = var4.new()
   var673.MouseMoveAction = var4.new()
   local var10 = setmetatable(var673, var12)
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
      local var831 = {}
      var831.allowBinding = false
      var831.defaultShortcut = "ctrl+shift+space"
      local var835 = var11.EditPlane
      var831.id = var835
      local var2 = var11.EditPlane
      var835 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var831.statusTip = var835
      var2 = var11.EditPlane
      var835 = arg2:getText("PluginActions", var2 ... "Text")
      var831.text = var835
      var0.EditPlane = var831
      local var851 = {}
      var851.allowBinding = false
      var851.defaultShortcut = "ctrl+c"
      local var855 = var11.CopySelected
      var851.id = var855
      var2 = var11.CopySelected
      var855 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var851.statusTip = var855
      var2 = var11.CopySelected
      var855 = arg2:getText("PluginActions", var2 ... "Text")
      var851.text = var855
      var0.CopySelected = var851
      local var870 = {}
      var870.allowBinding = false
      var870.defaultShortcut = "ctrl+x"
      local var874 = var11.CutSelected
      var870.id = var874
      var2 = var11.CutSelected
      var874 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var870.statusTip = var874
      var2 = var11.CutSelected
      var874 = arg2:getText("PluginActions", var2 ... "Text")
      var870.text = var874
      var0.CutSelected = var870
      local var889 = {}
      var889.allowBinding = false
      var889.defaultShortcut = "delete"
      local var893 = var11.DeleteSelected
      var889.id = var893
      var2 = var11.DeleteSelected
      var893 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var889.statusTip = var893
      var2 = var11.DeleteSelected
      var893 = arg2:getText("PluginActions", var2 ... "Text")
      var889.text = var893
      var0.DeleteSelected = var889
      local var908 = {}
      var908.allowBinding = false
      var908.defaultShortcut = "ctrl+v"
      local var912 = var11.PasteSelected
      var908.id = var912
      var2 = var11.PasteSelected
      var912 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var908.statusTip = var912
      var2 = var11.PasteSelected
      var912 = arg2:getText("PluginActions", var2 ... "Text")
      var908.text = var912
      var0.PasteSelected = var908
      local var927 = {}
      var927.allowBinding = false
      var927.defaultShortcut = "ctrl+d"
      local var931 = var11.DuplicateSelected
      var927.id = var931
      var2 = var11.DuplicateSelected
      var931 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var927.statusTip = var931
      var2 = var11.DuplicateSelected
      var931 = arg2:getText("PluginActions", var2 ... "Text")
      var927.text = var931
      var0.DuplicateSelected = var927
      local var946 = {}
      var946.allowBinding = false
      var946.defaultShortcut = "return"
      local var950 = var11.Apply
      var946.id = var950
      var2 = var11.Apply
      var950 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var946.statusTip = var950
      var2 = var11.Apply
      var950 = arg2:getText("PluginActions", var2 ... "Text")
      var946.text = var950
      var0.Apply = var946
      local var965 = {}
      var965.allowBinding = false
      var965.defaultShortcut = "escape"
      local var969 = var11.Quit
      var965.id = var969
      var2 = var11.Quit
      var969 = arg2:getText("PluginActions", var2 ... "StatusTip")
      var965.statusTip = var969
      var2 = var11.Quit
      var969 = arg2:getText("PluginActions", var2 ... "Text")
      var965.text = var969
      var0.Cancel = var965
      local var984 = {}
      var984._mouse = arg1:GetMouse()
      local var987 = var3
      var987 = arg1
      var984._pluginActions = var987.new(var987, var0)
      var984._cachedValues = {}
      var984._originalValues = {}
      var984._userInputService = game:GetService("UserInputService")
      var984._workspace = game:GetService("Workspace")
      var984._reservedMouseMove = {}
      var984._reservedMouseDown = {}
      var984._brushMouse = {}
      var984._brushScrollWheel = {}
      var984.MouseDownAction = var4.new()
      var984.MouseMoveAction = var4.new()
      local var10 = setmetatable(var984, var12)
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
