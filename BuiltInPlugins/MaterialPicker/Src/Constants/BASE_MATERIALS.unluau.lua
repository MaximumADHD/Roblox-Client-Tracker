-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("MSPhase02")
return table.freeze(function()
   table.sort(Enum.Material:GetEnumItems(), function(arg1, arg2)
      if arg2.Name > arg1.Name then
         local var0 = false
      end
      return true
   end)
   local var433 = nil
   if var0 then
      local var0 = Enum.Material.Water
      var433 = { Enum.Material.Air }
   else
      local var0 = Enum.Material.Rubber
      var433 = { Enum.Material.Air, Enum.Material.Water, Enum.Material.Cardboard, Enum.Material.Carpet, Enum.Material.CeramicTiles, Enum.Material.ClayRoofTiles, Enum.Material.Leather, Enum.Material.Plaster, Enum.Material.RoofShingles }
   end
   local var0 = ipairs(var450)
   table.remove(var457, table.find(var453, var454))
   return 
end())
