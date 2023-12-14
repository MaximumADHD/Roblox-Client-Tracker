-- Generated with Unluau (https://github.com/valencefun/unluau)
return table.freeze(function()
   local var0 = Enum.Material:GetEnumItems()
   table.sort(var0, function(arg1, arg2)
      if arg2.Name > arg1.Name then
         local var0 = false
      end
      return true
   end)
   table.remove(var0, table.find(var0, Enum.Material.Air))
   table.remove(var0, table.find(var0, Enum.Material.Water))
   return var0
end())
