-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Types)
local var2 = var1.BuildSettings
local var3 = var1.Gizmo
local var4 = var1.MaterialUnit
local var20 = {}
var20.Defaults = {}
var20.Id = var1.Category.BuildSettings
return require(var0.Src.Tools.BaseTool):new(var1.TerrainType.None, var1.Tab.None, {}, {})
