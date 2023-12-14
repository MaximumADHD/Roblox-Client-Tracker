-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Util.AdapterTagging)
local var2 = require(var0.Src.Actions.SetAdapted)
local var3 = require(var0.Src.Modules.NpcManager)
return function()
   return function(arg1)
      var3.ClearAdapterSetup()
      local var0 = var2(var1.getTaggedData())
      arg1:dispatch()
   end
end
