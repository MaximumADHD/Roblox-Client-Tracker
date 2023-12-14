-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Parent.Parent.Packages.Framework).Util.Action(script.Name, function(arg1, arg2)
   local var0 = arg1
   if type(arg1) == "string" then
      local var0 = {}
      var0.responseBody = arg1
      var0 = var0
   end
   local var1 = {}
   var1.response = var0
   var1.networkErrorAction = arg2
   return var1
end)
