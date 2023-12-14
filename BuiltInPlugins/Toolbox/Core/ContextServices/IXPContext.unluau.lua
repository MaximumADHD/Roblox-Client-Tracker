-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Framework)
local var3 = var2.Util.Signal
local var4 = require(var1.Dash)
local var5 = require(var1.Cryo)
local var6 = require(var0.Core.Util.SharedFlags.getFFlagToolboxFixIXPLayerJoining)
local var7 = var2.ContextServices.ContextItem:extend("IXPContext")
function var7.createMock(arg1)
   local var30 = {}
   function var30.GetUserLayerLoadingStatus()
      return Enum.IXPLoadingStatus.Initialized
   end
   
   function var30.GetUserLayerVariables()
      return arg1 or {}
   end
   
   var30.OnUserLayerLoadingStatusChanged = var3.new()
   return var7.new(var30)
end

function var7.new(arg1)
   local var0 = {}
   var0.IXPService = arg1 or game:GetService("IXPService")
   setmetatable(var0, var7)
   return var0
end

function var7.getSignal(arg1)
   return arg1.IXPService.OnUserLayerLoadingStatusChanged
end

function var7.isReady(arg1)
   if arg1.IXPService:GetUserLayerLoadingStatus() ~= Enum.IXPLoadingStatus.Initialized then
      local var0 = false
   end
   return true
end

function var7.isError(arg1)
   local var0 = arg1.IXPService:GetUserLayerLoadingStatus()
   if var0 ~= Enum.IXPLoadingStatus.Initialized then
      if var0 == "IXPLoadingStatus" then
         local var0 = false
      end
      local var0 = true
   end
   return false
end

function var7.getVariables(arg1)
   if not arg1:isReady() then
      return {}
   end
   if var6() then
      return var5.Dictionary.join(arg1.IXPService:GetUserLayerVariables("CreatorMarketplace"), arg1.IXPService:GetUserLayerVariables("StudioMarketplace"), arg1.IXPService:GetUserLayerVariables("Studio.Toolbox.Usage"), arg1.IXPService:GetUserLayerVariables("CreatorContent.Music.Studio"))
   end
   return var4.joinDeep(arg1.IXPService:GetUserLayerVariables("CreatorMarketplace"), arg1.IXPService:GetUserLayerVariables("StudioMarketplace"), arg1.IXPService:GetUserLayerVariables("Studio.Toolbox.Usage"), arg1.IXPService:GetUserLayerVariables("CreatorContent.Music.Studio"))
end

return var7
