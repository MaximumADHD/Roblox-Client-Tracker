-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.BaseTool)
local var1 = require(script:FindFirstAncestor("TerrainEditor").Src.Types)
local var2 = var1.Category
local var3 = var1.ClearSettings
local var4 = var1.Tool
local var18 = {}
var18.Defaults = {}
var18.Id = var2.ClearSettings
local var6 = var0:new(var4.Clear, var1.Tab.Create, {}, {})
function var6.init(arg1, arg2, arg3)
   local var31 = var0
   var31 = arg1
   var31.init(var31, arg2, arg3)
   local var1 = {}
   if arg3.Terrain:CountCells() == 0 then
      local var0 = false
   end
   var1.Disabled = true
   var1.Hidden = false
   var1.Label = ""
   local var49 = {}
   function var49.OnClick()
      arg3.Terrain:Clear()
      arg3.ChangeHistoryService:SetWaypoint("Cleared Terrain")
      arg1._overrides[var2.ClearSettings][var3.Clear].Disabled = true
      arg1.OnGizmoChanged:Fire()
      arg1._analytics:report("Usage", var4.Clear, 1)
   end
   
   var1.Schema = var49
   var1.Value = true
   var3.Clear = var1
   var2.ClearSettings = {}
   arg1._overrides = {}
end

function var6.updateDisabled(arg1)
   if arg1._services.Terrain:CountCells() == 0 then
      local var0 = false
   end
   arg1._overrides[var2.ClearSettings][var3.Clear].Disabled = true
end

function var6.activate(arg1)
   local var92 = var0
   var92 = arg1
   var92.activate(var92)
   arg1:updateDisabled()
   arg1._undo = arg1._services.ChangeHistoryService.OnUndo:Connect(function()
      arg3.Terrain:Clear()
      arg3.ChangeHistoryService:SetWaypoint("Cleared Terrain")
      arg1._overrides[var2.ClearSettings][var3.Clear].Disabled = true
      arg1.OnGizmoChanged:Fire()
      arg1._analytics:report("Usage", var4.Clear, 1)
   end)
   arg1._redo = arg1._services.ChangeHistoryService.OnRedo:Connect(function(arg1, arg2, arg3)
      local var132 = var0
      var132 = arg1
      var132.init(var132, arg2, arg3)
      local var1 = {}
      if arg3.Terrain:CountCells() == 0 then
         local var0 = false
      end
      var1.Disabled = true
      var1.Hidden = false
      var1.Label = ""
      local var150 = {}
      function var150.OnClick()
         arg3.Terrain:Clear()
         arg3.ChangeHistoryService:SetWaypoint("Cleared Terrain")
         arg1._overrides[var2.ClearSettings][var3.Clear].Disabled = true
         arg1.OnGizmoChanged:Fire()
         arg1._analytics:report("Usage", var4.Clear, 1)
      end
      
      var1.Schema = var150
      var1.Value = true
      var3.Clear = var1
      var2.ClearSettings = {}
      arg1._overrides = {}
   end)
   arg1._analytics:report("Activated", var4.Clear)
end

function var6.deactivate(arg1)
   local var186 = var0
   var186 = arg1
   var186.deactivate(var186)
   if arg1._undo then
      arg1._undo:Disconnect()
   end
   if arg1._redo then
      arg1._redo:Disconnect()
   end
end

return var6
