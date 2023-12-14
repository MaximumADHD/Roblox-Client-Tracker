-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Action)(script.Name, function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   local var13 = true
   local var19 = `Expected size to be a table, received {type(arg1)}`
   assert()
   local var2 = tonumber(arg1.X)
   local var3 = tonumber(arg1.Y)
   local var4 = tonumber(arg1.Z)
   local var30 = var2
   local var36 = `Expected size.X to be a number, received {type(arg1.x)}`
   assert()
   var30 = var3
   local var43 = `Expected size.Y to be a number, received {type(arg1.y)}`
   assert()
   var30 = var4
   local var8 = `Expected size.Z to be a number, received {type(arg1.z)}`
   assert()
   local var9 = {}
   local var10 = {}
   var10.X = var2
   var10.Y = var3
   var10.Z = var4
   var9.size = var10
   return var9
end)
