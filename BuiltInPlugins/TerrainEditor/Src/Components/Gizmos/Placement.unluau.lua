-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash)
local var2 = require(var0.Packages.React)
local var3 = var2.useCallback
local var4 = var2.useMemo
local var5 = require(var0.Src.Hooks.useEventConnection)
local var6 = require(var0.Src.Hooks.useRaycast)
local var7 = require(var0.Src.Hooks.useTerrain)
local var8 = require(var0.Src.Resources.Constants)
local var9 = require(var0.Src.Controllers.ShortcutController)
local var10 = require(var0.Src.Components.Gizmos.Box)
local var11 = require(var0.Src.Types)
local var12 = var11.BrushSettings
local var13 = var11.BuildSettings
local var14 = var11.Category
local var15 = var11.TerrainType
return function(arg1)
   local var0 = arg1.Value[var14.BuildSettings]
   if not var0[var13.PlacementMode] then
      return nil
   end
   local var1 = var0[var13.Size]
   local var76 = arg1.Value
   local var202 = arg1.Save
   local var204 = var13.TerrainType
   local var205 = var0[var204]
   var204 = var1
   local var222 = arg1.Save
   var5(var9.use().MouseDownAction, function()
      var13.PlacementMode = false
      var14.BuildSettings = {}
      arg1.Save({})
   end, {})
   local var231 = {}
   var231.Adornee = var7()
   var231.AlwaysOnTop = true
   var231.Color = arg1.Schema.Color or Color3.new(1, 1, 1)
   var231.LineThickness = 0.1
   var231.Size = Vector3.new(var1.X, 0, var1.Z)
   var231.Transform = CFrame.new(var6(arg1.Tool, var4(function()
      var14.BrushSettings = {}
      return var1.join({}, arg1.Value)
   end, {}), var3(function(arg1)
      local var0 = arg1[var14.BrushSettings][var12.State].Position
      local var1 = var0[var13.TerrainType]
      if var1 ~= var15.Volcano then
         if var1 ~= var15.Mountain then
            if var1 == "TerrainType" then
               var13.Transform = CFrame.new(var0 + Vector3.new(0, var1.Y / 2 - 2 * var8.VoxelResolution, 0))
               var14.BuildSettings = {}
               arg1.Save({})
            end
         end
      end
      var13.Transform = CFrame.new(var0 + Vector3.new(0, var1.Y / 2 - 2 * var8.VoxelResolution, 0))
      var14.BuildSettings = {}
      arg1.Save({})
      if var1 == "TerrainType" then
         var13.Transform = CFrame.new(var0 - Vector3.new(0, var1.Y / 2 - 3 * var8.VoxelResolution, 0))
         var14.BuildSettings = {}
         arg1.Save({})
      end
      if var1 == "TerrainType" then
         var13.Transform = CFrame.new(var0 - Vector3.new(0, var1.Y / 2, 0))
         var14.BuildSettings = {}
         arg1.Save({})
      end
      var13.Transform = CFrame.new(var0)
      var14.BuildSettings = {}
      arg1.Save({})
   end, {})).Position)
   var231.Transparency = 0.9
   return var2.createElement(var10, var231)
end
