-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Core.Util
local var2 = require(var1.AssetConfigConstants)
local var3 = require(var1.TagsUtil)
local var4 = require(var1.DebugFlags)
local var5 = require(var0.Core.Actions.SetTagSuggestions)
return function(arg1, arg2, arg3)
   return function(arg1)
      local var0 = {}
      if arg1.responseBody then
         if arg1.responseBody.data then
            local var0 = arg1.responseBody.data
            local var1 = 1
            local var2 = arg1.responseBody.data[1]
            local var3 = var2.tagId
            if var3 then
               local var0 = var2
               if var2.status == table.insert then
                  var0 = var3
                  if not var3.hasTag(arg2, var0) then
                     table.insert(var0, var2)
                  end
               end
            end
            if var0 > var2.MAX_DISPLAY_SUGGESTIONS then
            end
         end
      end
      local var1 = arg3(var0, var4, arg1)
      var5:dispatch()
   end
end
