-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(script.Parent.BaseTool)
local var2 = require(var0.Src.Types)
local var3 = var2.Categories
local var4 = var2.ClearSettings
local var24 = {}
var24.Defaults = {}
var24.Id = var3.ClearSettings
var24.Schema = require(var0.Src.Schemas.Settings.Clear)
local var6 = var1:new(var2.Tools.Clear, var2.ToolCategories.Create, {}, {})
function var6.init(arg1, arg2, arg3)
   local var37 = var1
   var37 = arg1
   var37.init(var37, arg2, arg3)
   local var1 = {}
   if arg3.Terrain:CountCells() == 0 then
      local var0 = false
   end
   var1.Disabled = true
   var1.Hidden = false
   var1.Label = ""
   local var55 = {}
   function var55.OnClick()
      arg3.Terrain:Clear()
      arg3.ChangeHistoryService:SetWaypoint("Cleared Terrain")
      arg1._overrides[var3.ClearSettings][var4.Clear].Disabled = true
      arg1.OnGizmoChanged:Fire()
   end
   
   var1.Schema = var55
   var1.Value = true
   var4.Clear = var1
   var3.ClearSettings = {}
   arg1._overrides = {}
end

function var6.activate(arg1)
   local var77 = var1
   var77 = arg1
   var77.activate(var77)
   if arg1._services.Terrain:CountCells() == 0 then
      local var0 = false
   end
   arg1._overrides[var3.ClearSettings][var4.Clear].Disabled = true
end

return var6
