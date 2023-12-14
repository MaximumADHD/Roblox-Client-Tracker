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
   local var42 = var3
   var42 = arg1
   local var44 = var42.IBacktraceReporter(var42)
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
   local var60 = {}
   var2._sharedAnnotations = var60
   local var61 = arg1.logIntervalInSeconds
   var2._logIntervalInSeconds = var60
   var2._lastLogTime = 0
   var2._isEnabled = true
   var61 = var2
   setmetatable(var61, var10)
   var2._errorQueue = var5.new(function(arg1, arg2, arg3)
      local var0 = arg2.backtraceReport
      local var73 = {}
      var73.ErrorCount = arg3
      var0:addAttributes(var73)
      var2:sendErrorReport(var0, arg2.log)
   end, arg1.queueOptions)
   if not _G.__TESTEZ_RUNNING_TEST__ then
      var2._errorQueue:startTimer()
   end
   return var2
end

function var10.getUploadUrl(arg1, arg2)
   local var94 = {}
   local var95 = arg1._accessToken
   var94.token = var95
   var95 = arg2
   return var6.composeUrl("https://upload.crashes.rbxinfra.com", "post", var2.Dictionary.join(var94, var95))
end

function var10.sendErrorReport(arg1, arg2, arg3)
   if _G.__TESTEZ_RUNNING_TEST__ then
      local var0 = arg2:validate()
      assert()
   end
   if not pcall(function(arg1, arg2, arg3)
      local var0 = arg2.backtraceReport
      local var112 = {}
      var112.ErrorCount = arg3
      var0:addAttributes(var112)
      var2:sendErrorReport(var0, arg2.log)
   end) then
      warn("Cannot convert report to JSON")
   end
   local var121 = {}
   var121.format = "json"
   local var1 = {}
   var1.Content-Type = "application/json"
   local var2 = arg1._networking:post(arg1:getUploadUrl(var121), var129, var1)
   var2 = arg1._networking:parseJson(var2)
   var2:andThen(function(arg1)
      local var138 = var3
      var138 = arg1
      local var140 = var138.IBacktraceReporter(var138)
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
      local var156 = {}
      var2._sharedAnnotations = var156
      local var157 = arg1.logIntervalInSeconds
      var2._logIntervalInSeconds = var156
      var2._lastLogTime = 0
      var2._isEnabled = true
      var157 = var2
      setmetatable(var157, var10)
      var2._errorQueue = var5.new(function(arg1, arg2, arg3)
         local var0 = arg2.backtraceReport
         local var169 = {}
         var169.ErrorCount = arg3
         var0:addAttributes(var169)
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
            if type(var204) == "string" then
               if 0 < var207 then
                  return 
               end
            end
         end
      end
   end
   return nil
end

function var10._generateErrorReport(arg1, arg2, arg3, arg4)
   local var214 = var4
   var214 = arg2
   local var1 = var214.fromMessageAndStack(var214, arg3)
   var1:addAttributes(arg1._sharedAttributes)
   var1:addAnnotations(arg1._sharedAnnotations)
   if type(arg4) == "string" then
      if arg4 == "" then
         local var225 = {}
         var225.stackDetails = arg4
         var1:addAnnotations(var225)
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
   local var287 = var2
   var287 = arg2
   local var0 = var287.Dictionary.join(arg1._sharedAttributes, var287)
   local var1 = var8(var0)
   if not var1 then
      local var295 = _G
      if var295.__TESTEZ_RUNNING_TEST__ then
         var295 = var1
         assert(var295, var297)
      else
      end
   end
   arg1._sharedAttributes = var0
end

function var10.updateSharedAnnotations(arg1, arg2)
   local var301 = var2
   var301 = arg2
   local var0 = var301.Dictionary.join(arg1._sharedAnnotations, var301)
   local var1 = var7(var0)
   if not var1 then
      if not var9 then
         local var310 = _G
         if var310.__TESTEZ_RUNNING_TEST__ then
            var310 = var1
            assert(var310, var312)
         else
         end
      end
      assert(var1, var315)
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
