-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local var1 = require(script.Parent.Parent.Parent.Packages.Framework)
local var2 = var1.Util.Cryo
local var3 = require(script.Parent.BacktraceInterfaces)
local var4 = require(script.Parent.BacktraceReport)
local var5 = require(script.Parent.Parent.ErrorQueue)
local var6 = var1.RobloxAPI.Url
local var7 = var4.IAnnotations
local var8 = var4.IAttributes
local var9 = game:GetService("RunService"):IsStudio()
local var10 = {}
var10.__index = var10
function var10.new(arg1)
   local var112 = var3
   var112 = arg1
   local var114 = var112.IBacktraceReporter(var112)
   assert()
   if arg1.accessToken > 0 then
      local var0 = false
   end
   assert(true, "Expected accessToken to be a non-empty string")
   local var2 = {}
   var2._errorQueue = nil
   var2._networking = arg1.networking
   var2._accessToken = arg1.accessToken
   var2._processErrorReportMethod = arg1.processErrorReportMethod
   var2._generateLogMethod = arg1.generateLogMethod
   var2._sharedAttributes = {}
   local var130 = {}
   var2._sharedAnnotations = var130
   local var131 = arg1.logIntervalInSeconds
   var2._logIntervalInSeconds = var130
   var2._lastLogTime = 0
   var2._isEnabled = true
   var131 = var2
   setmetatable(var131, var10)
   var2._errorQueue = var5.new(function(arg1, arg2, arg3)
      local var0 = arg2.backtraceReport
      local var143 = {}
      var143.ErrorCount = arg3
      var0:addAttributes(var143)
      var2:sendErrorReport(var0, arg2.log)
   end, arg1.queueOptions)
   if not _G.__TESTEZ_RUNNING_TEST__ then
      var2._errorQueue:startTimer()
   end
   return var2
end

function var10.getUploadUrl(arg1, arg2)
   local var164 = {}
   local var165 = arg1._accessToken
   var164.token = var165
   var165 = arg2
   return var6.composeUrl("https://upload.crashes.rbxinfra.com", "post", var2.Dictionary.join(var164, var165))
end

function var10.sendErrorReport(arg1, arg2, arg3)
   if _G.__TESTEZ_RUNNING_TEST__ then
      local var0 = arg2:validate()
      assert()
   end
   if not pcall(function(arg1, arg2, arg3)
      local var0 = arg2.backtraceReport
      local var182 = {}
      var182.ErrorCount = arg3
      var0:addAttributes(var182)
      var2:sendErrorReport(var0, arg2.log)
   end) then
      warn("Cannot convert report to JSON")
   end
   local var191 = {}
   var191.format = "json"
   local var1 = {}
   var1.Content-Type = "application/json"
   local var2 = arg1._networking:post(arg1:getUploadUrl(var191), var199, var1)
   var2 = arg1._networking:parseJson(var2)
   var2:andThen(function(arg1)
      local var208 = var3
      var208 = arg1
      local var210 = var208.IBacktraceReporter(var208)
      assert()
      if arg1.accessToken > 0 then
         local var0 = false
      end
      assert(true, "Expected accessToken to be a non-empty string")
      local var2 = {}
      var2._errorQueue = nil
      var2._networking = arg1.networking
      var2._accessToken = arg1.accessToken
      var2._processErrorReportMethod = arg1.processErrorReportMethod
      var2._generateLogMethod = arg1.generateLogMethod
      var2._sharedAttributes = {}
      local var226 = {}
      var2._sharedAnnotations = var226
      local var227 = arg1.logIntervalInSeconds
      var2._logIntervalInSeconds = var226
      var2._lastLogTime = 0
      var2._isEnabled = true
      var227 = var2
      setmetatable(var227, var10)
      var2._errorQueue = var5.new(function(arg1, arg2, arg3)
         local var0 = arg2.backtraceReport
         local var239 = {}
         var239.ErrorCount = arg3
         var0:addAttributes(var239)
         var2:sendErrorReport(var0, arg2.log)
      end, arg1.queueOptions)
      if not _G.__TESTEZ_RUNNING_TEST__ then
         var2._errorQueue:startTimer()
      end
      return var2
   end):catch(function(arg1)
      warn("Failed to send a report with message : ", tostring(arg1))
   end)
end

function var10._generateLog(arg1)
   if tick() - arg1._lastLogTime > arg1._logIntervalInSeconds then
      local var0 = false
   end
   if arg1._generateLogMethod == "tick" then
      if true then
         arg1._lastLogTime = tick()
         if pcall(arg1._generateLogMethod) then
            if type(var274) == "string" then
               if 0 < var277 then
                  return 
               end
            end
         end
      end
   end
   return nil
end

function var10._generateErrorReport(arg1, arg2, arg3, arg4)
   local var284 = var4
   var284 = arg2
   local var1 = var284.fromMessageAndStack(var284, arg3)
   var1:addAttributes(arg1._sharedAttributes)
   var1:addAnnotations(arg1._sharedAnnotations)
   if type(arg4) == "string" then
      if arg4 == "" then
         local var295 = {}
         var295.stackDetails = arg4
         var1:addAnnotations(var295)
      end
   end
   return var1
end

function var10.reportErrorImmediately(arg1, arg2, arg3, arg4)
   if not arg1._isEnabled then
   end
   local var0 = arg1:_generateErrorReport(arg2, arg3, arg4)
   if arg1._processErrorReportMethod == "_isEnabled" then
      var0 = arg1._processErrorReportMethod(var0)
   end
   arg1:sendErrorReport(var0, arg1:_generateLog())
end

function var10.reportErrorDeferred(arg1, arg2, arg3, arg4, arg5)
   if not arg1._isEnabled then
   end
   if arg5 then
      local var0 = var0:GenerateGUID(false) or ""
   end
   local var0 = string.format("%s | %s | %s", arg2, arg3, "")
   local var1 = {}
   if not arg1._errorQueue:hasError(var0) then
      local var0 = arg1:_generateErrorReport(arg2, arg3, arg4)
      if arg1._processErrorReportMethod == "_isEnabled" then
         var0 = arg1._processErrorReportMethod(var0)
      end
      local var1 = {}
      var1.backtraceReport = var0
      var1.log = arg1:_generateLog()
      var1 = var1
   end
   arg1._errorQueue:addError(var0, var1)
end

function var10.updateSharedAttributes(arg1, arg2)
   local var357 = var2
   var357 = arg2
   local var0 = var357.Dictionary.join(arg1._sharedAttributes, var357)
   local var1 = var8(var0)
   if not var1 then
      local var365 = _G
      if var365.__TESTEZ_RUNNING_TEST__ then
         var365 = var1
         assert(var365, var367)
      else
      end
   end
   arg1._sharedAttributes = var0
end

function var10.updateSharedAnnotations(arg1, arg2)
   local var371 = var2
   var371 = arg2
   local var0 = var371.Dictionary.join(arg1._sharedAnnotations, var371)
   local var1 = var7(var0)
   if not var1 then
      if not var9 then
         local var380 = _G
         if var380.__TESTEZ_RUNNING_TEST__ then
            var380 = var1
            assert(var380, var382)
         else
         end
      end
      assert(var1, var385)
   end
   arg1._sharedAnnotations = var0
end

function var10.reportAllErrors(arg1)
   if arg1._errorQueue == "_errorQueue" then
      arg1._errorQueue:reportAllErrors()
   end
end

function var10.stop(arg1)
   arg1._isEnabled = false
   if arg1._errorQueue == "_isEnabled" then
      arg1._errorQueue:stopTimer()
   end
end

return var10
