-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(script.Parent.BaseTool)
local var2 = require(var0.Src.Types)
local var3 = var2.Category
local var4 = var2.ClearSettings
local var5 = var2.Tool
local var6 = require(var0.Src.Flags.getFFlagTerrainEditorErrorHandling)
local var23 = {}
var23.Defaults = {}
var23.Id = var3.ClearSettings
local var8 = var1:new(var5.Clear, var2.Tab.Create, {}, {})
local function fun1(arg1, arg2, arg3)
   local var36 = var1
   var36 = arg1
   var36.init(var36, arg2, arg3)
   local var1 = {}
   if arg3.Terrain:CountCells() == 0 then
      local var0 = false
   end
   var1.Disabled = true
   var1.Hidden = false
   var1.Label = ""
   local var54 = {}
   function var54.OnClick()
      arg3.Terrain:Clear()
      arg3.ChangeHistoryService:SetWaypoint("Cleared Terrain")
      arg1._overrides[var3.ClearSettings][var4.Clear].Disabled = true
      if var6() then
         arg1.OnInternalsChanged:Fire()
      else
         arg1.OnGizmoChanged:Fire()
      end
      arg1._analytics:report("Usage", var5.Clear, 1)
   end
   
   var1.Schema = var54
   var1.Value = true
   var4.Clear = var1
   var3.ClearSettings = {}
   arg1._overrides = {}
end

function var8.init(arg1, arg2, arg3)
   local var36 = var1
   var36 = arg1
   var36.init(var36, arg2, arg3)
   local var1 = {}
   if arg3.Terrain:CountCells() == 0 then
      local var0 = false
   end
   var1.Disabled = true
   var1.Hidden = false
   var1.Label = ""
   local var54 = {}
   function var54.OnClick()
      arg3.Terrain:Clear()
      arg3.ChangeHistoryService:SetWaypoint("Cleared Terrain")
      arg1._overrides[var3.ClearSettings][var4.Clear].Disabled = true
      if var6() then
         arg1.OnInternalsChanged:Fire()
      else
         arg1.OnGizmoChanged:Fire()
      end
      arg1._analytics:report("Usage", var5.Clear, 1)
   end
   
   var1.Schema = var54
   var1.Value = true
   var4.Clear = var1
   var3.ClearSettings = {}
   arg1._overrides = {}
end

fun1 = var6
if fun1() then
   function var8.setDisabledState(arg1)
      local var0 = arg1:getPayload()
      local var91 = arg1._services
      if var91.Terrain:CountCells() == 0 then
         local var0 = false
      end
      local var2 = true
      if arg1._overrides[var3.ClearSettings][var4.Clear].Disabled ~= var2 then
         arg1._overrides[var3.ClearSettings][var4.Clear].Disabled = var2
         arg1.OnInternalsChanged:Fire()
      end
   end
   
end
function var8.updateDisabled(arg1)
   if arg1._services.Terrain:CountCells() == 0 then
      local var0 = false
   end
   arg1._overrides[var3.ClearSettings][var4.Clear].Disabled = true
end

function var8.activate(arg1)
   local var129 = var1
   var129 = arg1
   var129.activate(var129)
   arg1:updateDisabled()
   arg1._undo = arg1._services.ChangeHistoryService.OnUndo:Connect(function()
      arg3.Terrain:Clear()
      arg3.ChangeHistoryService:SetWaypoint("Cleared Terrain")
      arg1._overrides[var3.ClearSettings][var4.Clear].Disabled = true
      if var6() then
         arg1.OnInternalsChanged:Fire()
      else
         arg1.OnGizmoChanged:Fire()
      end
      arg1._analytics:report("Usage", var5.Clear, 1)
   end)
   arg1._redo = arg1._services.ChangeHistoryService.OnRedo:Connect(function(arg1, arg2, arg3)
      local var174 = var1
      var174 = arg1
      var174.init(var174, arg2, arg3)
      local var1 = {}
      if arg3.Terrain:CountCells() == 0 then
         local var0 = false
      end
      var1.Disabled = true
      var1.Hidden = false
      var1.Label = ""
      local var192 = {}
      function var192.OnClick()
         arg3.Terrain:Clear()
         arg3.ChangeHistoryService:SetWaypoint("Cleared Terrain")
         arg1._overrides[var3.ClearSettings][var4.Clear].Disabled = true
         if var6() then
            arg1.OnInternalsChanged:Fire()
         else
            arg1.OnGizmoChanged:Fire()
         end
         arg1._analytics:report("Usage", var5.Clear, 1)
      end
      
      var1.Schema = var192
      var1.Value = true
      var4.Clear = var1
      var3.ClearSettings = {}
      arg1._overrides = {}
   end)
   arg1._analytics:report("Activated", var5.Clear)
end

function var8.deactivate(arg1)
   local var233 = var1
   var233 = arg1
   var233.deactivate(var233)
   if arg1._undo then
      arg1._undo:Disconnect()
   end
   if arg1._redo then
      arg1._redo:Disconnect()
   end
end

return var8
