-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Packages
local var1 = require(var0.Framework)
local var2 = var1.Util.Signal
local var3 = require(var0.Dash)
local var4 = require(var0.Cryo)
local var5 = var1.ContextServices.ContextItem:extend("IXPContext")
function var5.createMock(arg1)
   local var24 = {}
   function var24.GetUserLayerLoadingStatus()
      return Enum.IXPLoadingStatus.Initialized
   end
   
   function var24.GetUserLayerVariables()
      return arg1 or {}
   end
   
   var24.OnUserLayerLoadingStatusChanged = var2.new()
   return var5.new(var24)
end

function var5.new(arg1)
   local var0 = {}
   var0.IXPService = arg1 or game:GetService("IXPService")
   setmetatable(var0, var5)
   return var0
end

function var5.getSignal(arg1)
   return arg1.IXPService.OnUserLayerLoadingStatusChanged
end

function var5.isReady(arg1)
   if arg1.IXPService:GetUserLayerLoadingStatus() ~= Enum.IXPLoadingStatus.Initialized then
      local var0 = false
   end
   return true
end

function var5.isError(arg1)
   local var0 = arg1.IXPService:GetUserLayerLoadingStatus()
   if var0 ~= Enum.IXPLoadingStatus.Initialized then
      if var0 == "IXPLoadingStatus" then
         local var0 = false
      end
      local var0 = true
   end
   return false
end

function var5.getVariables(arg1)
   if not arg1:isReady() then
      return {}
   end
   return var4.Dictionary.join(arg1.IXPService:GetUserLayerVariables("CreatorMarketplace"), arg1.IXPService:GetUserLayerVariables("StudioMarketplace"), arg1.IXPService:GetUserLayerVariables("Studio.Toolbox.Usage"), arg1.IXPService:GetUserLayerVariables("CreatorContent.Music.Studio"))
end

return var5
