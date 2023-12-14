-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Flags).getFFlagMSPhase02
local var3 = {}
Enum.Material.Asphalt = true
Enum.Material.Basalt = true
Enum.Material.Brick = true
Enum.Material.Cobblestone = true
Enum.Material.Concrete = true
Enum.Material.CorrodedMetal = true
Enum.Material.CrackedLava = true
Enum.Material.DiamondPlate = true
Enum.Material.Fabric = true
Enum.Material.Foil = true
Enum.Material.ForceField = false
Enum.Material.Glacier = true
Enum.Material.Glass = false
Enum.Material.Granite = true
Enum.Material.Grass = true
Enum.Material.Ground = true
Enum.Material.Ice = true
Enum.Material.LeafyGrass = true
Enum.Material.Limestone = true
Enum.Material.Marble = true
Enum.Material.Metal = true
Enum.Material.Mud = true
Enum.Material.Neon = false
Enum.Material.Pavement = true
Enum.Material.Pebble = true
Enum.Material.Plastic = true
Enum.Material.Rock = true
Enum.Material.Salt = true
Enum.Material.Sand = true
Enum.Material.Sandstone = true
Enum.Material.Slate = true
Enum.Material.SmoothPlastic = true
Enum.Material.Snow = true
Enum.Material.Wood = true
Enum.Material.WoodPlanks = true
local var4 = { 
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
   Enum.Material.Slate
}
local var98 = Enum.Material.Grass
local var99 = Enum.Material.Ground
local var100 = Enum.Material.Ice
local var101 = Enum.Material.LeafyGrass
local var114 = Enum.Material.SmoothPlastic
local var115 = Enum.Material.Snow
local var116 = Enum.Material.Wood
local var117 = Enum.Material.WoodPlanks
local var13 = {}
Enum.Material.Asphalt = true
Enum.Material.Basalt = true
Enum.Material.Brick = true
Enum.Material.Cardboard = true
Enum.Material.Carpet = true
Enum.Material.CeramicTiles = true
Enum.Material.ClayRoofTiles = true
Enum.Material.Cobblestone = true
Enum.Material.Concrete = true
Enum.Material.CorrodedMetal = true
Enum.Material.CrackedLava = true
Enum.Material.DiamondPlate = true
Enum.Material.Fabric = true
Enum.Material.Foil = true
Enum.Material.ForceField = false
Enum.Material.Glacier = true
Enum.Material.Glass = false
Enum.Material.Granite = true
Enum.Material.Grass = true
Enum.Material.Ground = true
Enum.Material.Ice = true
Enum.Material.LeafyGrass = true
Enum.Material.Leather = true
Enum.Material.Limestone = true
Enum.Material.Marble = true
Enum.Material.Metal = true
Enum.Material.Mud = true
Enum.Material.Neon = false
Enum.Material.Pavement = true
Enum.Material.Pebble = true
Enum.Material.Plaster = true
Enum.Material.Plastic = true
Enum.Material.Rock = true
Enum.Material.RoofShingles = true
Enum.Material.Rubber = true
Enum.Material.Salt = true
Enum.Material.Sand = true
Enum.Material.Sandstone = true
Enum.Material.Slate = true
Enum.Material.SmoothPlastic = true
Enum.Material.Snow = true
Enum.Material.Wood = true
Enum.Material.WoodPlanks = true
local var14 = { 
   Enum.Material.Asphalt, 
   Enum.Material.Basalt, 
   Enum.Material.Brick, 
   Enum.Material.Cardboard, 
   Enum.Material.Carpet, 
   Enum.Material.CeramicTiles, 
   Enum.Material.ClayRoofTiles, 
   Enum.Material.Cobblestone, 
   Enum.Material.Concrete, 
   Enum.Material.CorrodedMetal, 
   Enum.Material.Grass, 
   Enum.Material.Ground, 
   Enum.Material.Ice, 
   Enum.Material.LeafyGrass, 
   Enum.Material.Leather, 
   Enum.Material.Limestone, 
   Enum.Material.Marble, 
   Enum.Material.Metal, 
   Enum.Material.Mud, 
   Enum.Material.Pavement, 
   Enum.Material.Salt, 
   Enum.Material.Sand
}
local var216 = Enum.Material.CrackedLava
local var217 = Enum.Material.DiamondPlate
local var218 = Enum.Material.Fabric
local var219 = Enum.Material.Foil
local var220 = Enum.Material.Glacier
local var221 = Enum.Material.Granite
local var21 = Enum.Material.Pebble
local var22 = Enum.Material.Plaster
local var23 = Enum.Material.Plastic
local var24 = Enum.Material.Rock
local var25 = Enum.Material.RoofShingles
local var26 = Enum.Material.Rubber
local var27 = Enum.Material.Sandstone
local var28 = Enum.Material.Slate
local var29 = Enum.Material.SmoothPlastic
local var30 = Enum.Material.Snow
local var31 = Enum.Material.Wood
local var32 = Enum.Material.WoodPlanks
return function(arg1)
   if var2() then
      if arg1 then
         return var14
      end
      return var13
   end
   if arg1 then
      return var4
   end
   return var3
end
