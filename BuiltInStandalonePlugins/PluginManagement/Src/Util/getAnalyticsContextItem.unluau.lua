-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Packages.Framework).ContextServices
return function()
   return var2.Analytics.new(function(arg1)
      local function var0(arg1, arg2)
         arg2 = arg2 or {}
         local var25 = {}
         var25.studioSid = arg1:GetSessionId()
         local var31 = arg1:GetClientId()
         var25.clientId = var31
         var31 = arg2
         arg1:SendEventDeferred("studio", "PluginManagement", arg1, var1.Dictionary.join(var25, var31))
      end
      
      local function fun0(arg1, arg2)
         arg1:ReportCounter(arg1)
      end
      
      local function fun1(arg1, arg2)
         var0(arg1, arg2)
         arg1:ReportCounter("PluginManagement" ... arg1, 1)
      end
      
      local var1 = {}
      function var1.TryInstallPluginFromWeb(arg1, arg2)
         local var0 = {}
         var0.pluginId = arg2
         var0(arg1, var0)
         arg1:ReportCounter("PluginManagement" ... arg1, 1)
      end
      
      function var1.InstallPluginFromWebSuccess(arg1, arg2)
         local var0 = {}
         var0.pluginId = arg2
         var0(arg1, var0)
         arg1:ReportCounter("PluginManagement" ... arg1, 1)
      end
      
      function var1.InstallPluginFromWebFailure(arg1, arg2, arg3)
         local var0 = {}
         var0.pluginId = arg2
         var0.pluginInstallStatusCode = arg3
         var0(arg1, var0)
         arg1:ReportCounter("PluginManagement" ... arg1, 1)
      end
      
      function var1.TryUpdatePlugin(arg1, arg2)
         local var0 = {}
         var0.pluginId = arg2
         var0(arg1, var0)
         arg1:ReportCounter("PluginManagement" ... arg1, 1)
      end
      
      function var1.TryUpdateAllPlugins(arg1)
         var0(arg1, nil)
         arg1:ReportCounter("PluginManagement" ... arg1, 1)
      end
      
      function var1.UpdatePluginSuccess(arg1, arg2)
         local var0 = {}
         var0.pluginId = arg2
         var0(arg1, var0)
         arg1:ReportCounter("PluginManagement" ... arg1, 1)
      end
      
      function var1.UpdatePluginFailure(arg1, arg2)
         local var0 = {}
         var0.pluginId = arg2
         var0(arg1, var0)
         arg1:ReportCounter("PluginManagement" ... arg1, 1)
      end
      
      return var1
   end)
end
