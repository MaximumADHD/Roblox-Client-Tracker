-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Dash).map
local var1 = { 
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
   Enum.Material.Ground, 
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
   Enum.Material.SmoothPlastic, 
   Enum.Material.Snow
}
local var50 = Enum.Material.Ice
local var51 = Enum.Material.LeafyGrass
local var4 = Enum.Material.Wood
local var5 = Enum.Material.WoodPlanks
local var6 = {}
function var6.getIcons()
   return var0(var1, function(arg1)
      return `rbxasset://textures/MaterialGenerator/Materials/%*.png`
   end)
end

function var6.getNames()
   return var0(var1, function(arg1)
      return arg1.Name
   end)
end

return var6
