-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("MSPhase02")
return table.freeze(function()
   table.sort(Enum.Material:GetEnumItems(), function(arg1, arg2)
      if arg2.Name > arg1.Name then
         local var0 = false
      end
      return true
   end)
   local var15 = nil
   if var0 then
      local var0 = Enum.Material.Water
      var15 = { Enum.Material.Air }
   else
      local var0 = Enum.Material.Rubber
      var15 = { Enum.Material.Air, Enum.Material.Water, Enum.Material.Cardboard, Enum.Material.Carpet, Enum.Material.CeramicTiles, Enum.Material.ClayRoofTiles, Enum.Material.Leather, Enum.Material.Plaster, Enum.Material.RoofShingles }
   end
   local var0 = ipairs(var32)
   table.remove(var39, table.find(var35, var36))
   return 
end())
