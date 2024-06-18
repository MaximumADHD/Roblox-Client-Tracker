-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.Framework)
local var2 = var1.ContextServices
local var3 = var2.Localization
local var4 = require(var0.Src.Networking)
local var5 = var1.Util.Signal
local var6 = require(var0.Src.Types)
local var7 = game:GetService("StudioService")
local var8 = require(var0.Src.Flags.getFFlagDebugAmrOutput)
local var9 = var2.ContextItem:extend("PluginController")
function var9.new(arg1, arg2, arg3, arg4)
   local var0 = {}
   var0._isMock = arg4
   var0._networking = arg2
   var0.plugin = arg1
   local var38 = {}
   var38.Id = var7:GetUserId()
   var38.Name = arg3:getText("Plugin", "PlaceholderUsername")
   var38.Scope = var6.Scope.User
   var0.user = var38
   local var49 = var5
   var0.OnUsernameFetched = var49.new()
   var0._networking:fetchUsernameAsync(function(arg1, arg2)
      if arg2 then
         if var8() then
            warn(arg3:getText("PluginErrors", "ErrorFetchUsername"))
         end
      end
      var0.user.Name = arg1
      var0.OnUsernameFetched:Fire(arg1)
   end)
   var49 = var0
   setmetatable(var49, var9)
   return var0
end

function var9.mock(arg1, arg2, arg3)
   local var75 = var9
   var75 = arg1
   return var75.new(var75, arg2, arg3, true)
end

function var9.destroy(arg1)
end

function var9.getUser(arg1)
   return arg1.user
end

return var9
