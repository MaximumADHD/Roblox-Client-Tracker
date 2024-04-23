-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash)
local var2 = require(var0.Packages.React)
local var3 = var2.useCallback
local var4 = var2.useMemo
local var5 = require(var0.Src.Hooks.useRaycast)
local var6 = require(var0.Src.Hooks.useTerrain)
local var7 = require(var0.Src.Components.Gizmos.Box)
local var8 = require(var0.Src.Types)
local var9 = var8.BrushSettings
local var10 = var8.BuildSettings
local var11 = var8.Category
local var12 = var8.TerrainType
return function(arg1)
   local var0 = arg1.Value[var11.BuildSettings]
   if not var0[var10.PlacementMode] then
      return nil
   end
   local var1 = var0[var10.Size]
   local var61 = arg1.Value
   local var172 = arg1.Save
   local var174 = var10.TerrainType
   local var175 = var0[var174]
   var174 = var1
   var172 = var4(function()
      var11.BrushSettings = {}
      return var1.join({}, arg1.Value)
   end, {})
   var175 = var3(function(arg1)
      local var0 = arg1[var11.BrushSettings][var9.State].Position
      local var1 = var0[var10.TerrainType]
      if var1 ~= var12.Volcano then
         if var1 ~= var12.Mountain then
            if var1 == "TerrainType" then
               var10.Transform = CFrame.new(var0 + Vector3.new(0, var1.Y / 2, 0))
               var11.BuildSettings = {}
               arg1.Save({})
            end
         end
      end
      var10.Transform = CFrame.new(var0 + Vector3.new(0, var1.Y / 2, 0))
      var11.BuildSettings = {}
      arg1.Save({})
      if var1 ~= var12.Crater then
         if var1 == "TerrainType" then
            var10.Transform = CFrame.new(var0 - Vector3.new(0, var1.Y / 2, 0))
            var11.BuildSettings = {}
            arg1.Save({})
         end
      end
      var10.Transform = CFrame.new(var0 - Vector3.new(0, var1.Y / 2, 0))
      var11.BuildSettings = {}
      arg1.Save({})
      var10.Transform = CFrame.new(var0)
      var11.BuildSettings = {}
      arg1.Save({})
   end, {})
   local var183 = {}
   var183.Adornee = var6()
   var183.AlwaysOnTop = true
   var183.Color = arg1.Schema.Color or Color3.new(1, 1, 1)
   var183.LineThickness = 0.1
   var183.Size = Vector3.new(var1.X, 0, var1.Z)
   var183.Transform = CFrame.new(var5(arg1.Tool, var172, var175).Position)
   var183.Transparency = 0.9
   return var2.createElement(var7, var183)
end
