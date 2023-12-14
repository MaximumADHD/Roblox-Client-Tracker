-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Parent.Parent.Packages.Framework).Util.Action(script.Name, function(arg1, arg2, arg3)
   if type(arg1) == "string" then
      local var0 = false
   end
   local var300 = true
   local var306 = `Expected view to be a string, received {type(arg1)}`
   assert()
   if type(arg2) == "string" then
      local var0 = false
   end
   local var312 = true
   local var3 = `Expected name to be a string, received {type(arg2)}`
   assert()
   local var4 = {}
   local var5 = {}
   var5.Name = arg2
   var5.View = arg1
   var5.Data = arg3
   var4.item = var5
   return var4
end)
