-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Src.Util.Images)
local var2 = require(var0.Src.Types)
local var3 = require(script.Parent.MockData)
local var4 = require(var0.Src.Flags.getFIntDebugAmrMockCount)
local var5 = {}
function var5.fetchUsernameAsync(arg1)
   task.spawn(function()
      arg1("TestUser", true)
   end)
end

function var5.fetchGroupsAsync(arg1, arg2)
   task.spawn(function()
      arg1("TestUser", true)
   end)
end

function var5.fetchAssetsLegacyAsync(arg1, arg2, arg3)
   task.spawn(function()
      arg1("TestUser", true)
   end)
end

function var5.getThumbnailForScope()
   return var1.PLACEHOLDER
end

function var5.getThumbnailForItem()
   return var1.PLACEHOLDER
end

return var5
