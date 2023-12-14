-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1)
   local var0 = { 
      Enum.Material.Asphalt, 
      Enum.Material.Basalt, 
      Enum.Material.Brick, 
      Enum.Material.Cobblestone, 
      Enum.Material.Concrete, 
      Enum.Material.CrackedLava, 
      Enum.Material.Glacier, 
      Enum.Material.Grass, 
      Enum.Material.Ground, 
      Enum.Material.Ice, 
      Enum.Material.LeafyGrass, 
      Enum.Material.Limestone, 
      Enum.Material.Mud, 
      Enum.Material.Pavement, 
      Enum.Material.Rock, 
      Enum.Material.Salt, 
      Enum.Material.Sand, 
      Enum.Material.Sandstone, 
      Enum.Material.Slate, 
      Enum.Material.Snow, 
      Enum.Material.Water, 
      Enum.Material.WoodPlanks
   }
   local var1 = Enum.Material.Sandstone
   if arg1 then
      var1 = var0
      table.insert(var1, Enum.Material.Air)
   end
   return var0
end
