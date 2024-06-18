-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Src.Util.Images)
local var2 = require(var0.Src.Types)
local var3 = {}
function var3.fetchUsernameAsync(arg1)
   task.spawn(function()
      arg1("TestUser", true)
   end)
end

function var3.fetchGroupsAsync(arg1, arg2)
   task.spawn(function()
      arg1("TestUser", true)
   end)
end

function var3.getImageUriForItem()
   return var1.PLACEHOLDER
end

return var3
