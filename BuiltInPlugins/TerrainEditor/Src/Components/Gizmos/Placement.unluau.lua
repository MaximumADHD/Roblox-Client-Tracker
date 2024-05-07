-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash)
local var2 = require(var0.Packages.React)
local var3 = var2.useCallback
local var4 = var2.useMemo
local var5 = require(var0.Src.Hooks.useEventConnection)
local var6 = require(var0.Src.Hooks.useRaycast)
local var7 = require(var0.Src.Hooks.useTerrain)
local var8 = require(var0.Src.Controllers.ShortcutController)
local var9 = require(var0.Src.Components.Gizmos.Box)
local var10 = require(var0.Src.Types)
local var11 = var10.BrushSettings
local var12 = var10.BuildSettings
local var13 = var10.Category
local var14 = var10.TerrainType
return function(arg1)
   local var0 = arg1.Value[var13.BuildSettings]
   if not var0[var12.PlacementMode] then
      return nil
   end
   local var1 = var0[var12.Size]
   local var71 = arg1.Value
   local var182 = arg1.Save
   local var184 = var12.TerrainType
   local var185 = var0[var184]
   var184 = var1
   local var202 = arg1.Save
   var5(var8.use().MouseDownAction, function()
      var12.PlacementMode = false
      var13.BuildSettings = {}
      arg1.Save({})
   end, {})
   local var211 = {}
   var211.Adornee = var7()
   var211.AlwaysOnTop = true
   var211.Color = arg1.Schema.Color or Color3.new(1, 1, 1)
   var211.LineThickness = 0.1
   var211.Size = Vector3.new(var1.X, 0, var1.Z)
   var211.Transform = CFrame.new(var6(arg1.Tool, var4(function()
      var13.BrushSettings = {}
      return var1.join({}, arg1.Value)
   end, {}), var3(function(arg1)
      local var0 = arg1[var13.BrushSettings][var11.State].Position
      local var1 = var0[var12.TerrainType]
      if var1 ~= var14.Volcano then
         if var1 ~= var14.Mountain then
            if var1 == "TerrainType" then
               var12.Transform = CFrame.new(var0 + Vector3.new(0, var1.Y / 2, 0))
               var13.BuildSettings = {}
               arg1.Save({})
            end
         end
      end
      var12.Transform = CFrame.new(var0 + Vector3.new(0, var1.Y / 2, 0))
      var13.BuildSettings = {}
      arg1.Save({})
      if var1 ~= var14.Crater then
         if var1 == "TerrainType" then
            var12.Transform = CFrame.new(var0 - Vector3.new(0, var1.Y / 2, 0))
            var13.BuildSettings = {}
            arg1.Save({})
         end
      end
      var12.Transform = CFrame.new(var0 - Vector3.new(0, var1.Y / 2, 0))
      var13.BuildSettings = {}
      arg1.Save({})
      var12.Transform = CFrame.new(var0)
      var13.BuildSettings = {}
      arg1.Save({})
   end, {})).Position)
   var211.Transparency = 0.9
   return var2.createElement(var9, var211)
end
