-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.TOOLBAR_HEIGHT = 32
var0.PROMPT_HEIGHT = 102
var0.SETTING_GEOMETRY_TYPE = "MaterialGenerator_GeometryType"
var0.SETTING_GEOMETRY_TYPE_DEFAULT = require(script:FindFirstAncestor("MaterialGenerator").Packages.MaterialFramework).Enums.MaterialPreviewGeometryType.Plane.rawValue()
var0.EDITOR_WIDTH = 300
var0.EDITOR_HEIGHT = 540
var0.PLUGIN_SIZE = Vector2.new(600, 540)
var0.PLUGIN_MIN_SIZE = Vector2.new(300, 300)
var0.MATERIALS_FOLDER_NAME = "Material Generator"
var0.GENERATION_SAMPLES = 4
var0.INSTANCE_NAME_MAX_LENGTH = 100
var0.STUDS_PER_TILE_MAX = 20
var0.STUDS_PER_TILE_MIN = 0.1
var0.STUDS_PER_TILE_SNAP_INCREMENT = 0.1
local var47 = Enum.Material.Ground
local var48 = Enum.Material.Ice
local var49 = Enum.Material.LeafyGrass
local var4 = Enum.Material.Snow
local var5 = Enum.Material.Wood
local var6 = Enum.Material.WoodPlanks
var0.SUPPORTED_MATERIALS = { 
   Enum.Material.Asphalt, 
   Enum.Material.Basalt, 
   Enum.Material.Brick, 
   Enum.Material.Cobblestone, 
   Enum.Material.Concrete, 
   Enum.Material.CorrodedMetal, 
   Enum.Material.CrackedLava, 
   Enum.Material.DiamondPlate, 
   Enum.Material.Fabric, 
   Enum.Material.Foil, 
   Enum.Material.Glacier, 
   Enum.Material.Granite, 
   Enum.Material.Grass, 
   Enum.Material.Limestone, 
   Enum.Material.Marble, 
   Enum.Material.Metal, 
   Enum.Material.Mud, 
   Enum.Material.Pavement, 
   Enum.Material.Pebble, 
   Enum.Material.Plastic, 
   Enum.Material.Rock, 
   Enum.Material.Salt, 
   Enum.Material.Sand, 
   Enum.Material.Sandstone, 
   Enum.Material.Slate, 
   Enum.Material.SmoothPlastic
}
return var0
