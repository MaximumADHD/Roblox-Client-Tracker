-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
local function fun0()
   return var0:FindFirstChild("ToolboxDebugFlags")
end

local function fun1()
   local var0 = var0:FindFirstChild("ToolboxDebugFlags")
   if not var0 then
      var0 = Instance.new("Folder")
      var0.Name = "ToolboxDebugFlags"
      var0.Parent = var0
   end
   return var0
end

local function fun2(arg1)
   local var0 = var0:FindFirstChild("ToolboxDebugFlags")
   if not var0 then
      return nil
   end
   local var1 = var0:FindFirstChild(arg1)
   if var1 then
      return var1.Value
   end
   return nil
end

local var1 = {}
game:DefineFastFlag("DebugToolboxRunTests", false)
function var1.shouldRunTests()
   local var0 = game:GetFastFlag("DebugToolboxRunTests")
   if not var0 then
      local var0 = var0:FindFirstChild("ToolboxDebugFlags")
      if not var0 then
         return nil
      end
      local var1 = var0:FindFirstChild("RunTests")
      if var1 then
         return var1.Value
      end
      local var2 = nil
   end
   return var0
end

game:DefineFastFlag("DebugToolboxRunRhodiumTests", false)
function var1.shouldRunRhodiumTests()
   local var0 = game:GetFastFlag("DebugToolboxRunRhodiumTests")
   if not var0 then
      local var0 = var0:FindFirstChild("ToolboxDebugFlags")
      if not var0 then
         return nil
      end
      local var1 = var0:FindFirstChild("RunRhodiumTests")
      if var1 then
         return var1.Value
      end
      local var2 = nil
   end
   return var0
end

game:DefineFastFlag("DebugToolboxRunJest3Tests", false)
function var1.shouldRunJest3Tests()
   local var0 = game:GetFastFlag("DebugToolboxRunJest3Tests")
   if not var0 then
      local var0 = var0:FindFirstChild("ToolboxDebugFlags")
      if not var0 then
         return nil
      end
      local var1 = var0:FindFirstChild("RunJest3Tests")
      if var1 then
         return var1.Value
      end
      local var2 = nil
   end
   return var0
end

game:DefineFastFlag("DebugToolboxLogTestsQuiet", false)
function var1.logTestsQuiet()
   local var0 = game:GetFastFlag("DebugToolboxLogTestsQuiet")
   if not var0 then
      local var0 = var0:FindFirstChild("ToolboxDebugFlags")
      if not var0 then
         return nil
      end
      local var1 = var0:FindFirstChild("LogTestsQuiet")
      if var1 then
         return var1.Value
      end
      local var2 = nil
   end
   return var0
end

game:DefineFastFlag("DebugToolboxDisableTooltips", false)
function var1.shouldDisableTooltips()
   local var0 = game:GetFastFlag("DebugToolboxDisableTooltips")
   if not var0 then
      local var0 = var0:FindFirstChild("ToolboxDebugFlags")
      if not var0 then
         return nil
      end
      local var1 = var0:FindFirstChild("ToolboxDisableTooltips")
      if var1 then
         return var1.Value
      end
      local var2 = nil
   end
   return var0
end

game:DefineFastFlag("DebugToolboxDebugUrls", false)
function var1.shouldDebugUrls()
   local var0 = game:GetFastFlag("DebugToolboxDebugUrls")
   if not var0 then
      local var0 = var0:FindFirstChild("ToolboxDebugFlags")
      if not var0 then
         return nil
      end
      local var1 = var0:FindFirstChild("ToolboxDebugUrls")
      if var1 then
         return var1.Value
      end
      local var2 = nil
   end
   return var0
end

game:DefineFastFlag("DebugToolboxDebugState", false)
function var1.shouldDebugState()
   local var0 = game:GetFastFlag("DebugToolboxDebugState")
   if not var0 then
      local var0 = var0:FindFirstChild("ToolboxDebugFlags")
      if not var0 then
         return nil
      end
      local var1 = var0:FindFirstChild("ToolboxDebugState")
      if var1 then
         return var1.Value
      end
      local var2 = nil
   end
   return var0
end

game:DefineFastFlag("DebugToolboxLogAnalytics", false)
function var1.shouldLogAnalytics()
   local var0 = game:GetFastFlag("DebugToolboxLogAnalytics")
   if not var0 then
      local var0 = var0:FindFirstChild("ToolboxDebugFlags")
      if not var0 then
         return nil
      end
      local var1 = var0:FindFirstChild("ToolboxLogAnalytics")
      if var1 then
         return var1.Value
      end
      local var2 = nil
   end
   return var0
end

game:DefineFastFlag("DebugToolboxDebugWarnings", false)
function var1.shouldDebugWarnings()
   local var0 = game:GetFastFlag("DebugToolboxDebugWarnings")
   if not var0 then
      local var0 = var0:FindFirstChild("ToolboxDebugFlags")
      if not var0 then
         return nil
      end
      local var1 = var0:FindFirstChild("ToolboxDebugWarnings")
      if var1 then
         return var1.Value
      end
      local var2 = nil
   end
   return var0
end

game:DefineFastFlag("DebugToolboxLogSettings", false)
function var1.shouldLogSettings()
   local var0 = game:GetFastFlag("DebugToolboxLogSettings")
   if not var0 then
      local var0 = var0:FindFirstChild("ToolboxDebugFlags")
      if not var0 then
         return nil
      end
      local var1 = var0:FindFirstChild("ToolboxLogSettings")
      if var1 then
         return var1.Value
      end
      local var2 = nil
   end
   return var0
end

game:DefineFastFlag("DebugToolboxUseTestCustomLocale", false)
function var1.shouldUseTestCustomLocale()
   local var0 = game:GetFastFlag("DebugToolboxUseTestCustomLocale")
   if not var0 then
      local var0 = var0:FindFirstChild("ToolboxDebugFlags")
      if not var0 then
         return nil
      end
      local var1 = var0:FindFirstChild("ToolboxUseTestCustomLocale")
      if var1 then
         return var1.Value
      end
      local var2 = nil
   end
   return var0
end

game:DefineFastFlag("DebugToolboxUseTestRealLocaleId", false)
function var1.shouldUseTestRealLocale()
   local var0 = game:GetFastFlag("DebugToolboxUseTestRealLocaleId")
   if not var0 then
      local var0 = var0:FindFirstChild("ToolboxDebugFlags")
      if not var0 then
         return nil
      end
      local var1 = var0:FindFirstChild("ToolboxUseTestRealLocaleId")
      if var1 then
         return var1.Value
      end
      local var2 = nil
   end
   return var0
end

game:DefineFastFlag("DebugToolboxDebugOverrideAssetLoading", false)
function var1.shouldDebugOverrideAssetLoading()
   local var0 = game:GetFastFlag("DebugToolboxDebugOverrideAssetLoading")
   if not var0 then
      local var0 = var0:FindFirstChild("ToolboxDebugFlags")
      if not var0 then
         return nil
      end
      local var1 = var0:FindFirstChild("ToolboxDebugOverrideAssetLoading")
      if var1 then
         return var1.Value
      end
      local var2 = nil
   end
   return var0
end

function var1.getOrCreateTestCustomLocale()
   local var271 = var0:FindFirstChild("ToolboxDebugFlags")
   if not var271 then
      var271 = Instance.new("Folder")
      var271.Name = "ToolboxDebugFlags"
      var271.Parent = var0
   end
   local var1 = var271
   local var2 = var1:FindFirstChild("ToolboxCustomLocale")
   if not var2 then
      var2 = Instance.new("StringValue")
      var2.Name = "ToolboxCustomLocale"
      var2.Value = "CustomLocale"
      var2.Parent = var1
   end
   return var2
end

function var1.getOrCreateTestRealLocale()
   local var289 = var0:FindFirstChild("ToolboxDebugFlags")
   if not var289 then
      var289 = Instance.new("Folder")
      var289.Name = "ToolboxDebugFlags"
      var289.Parent = var0
   end
   local var1 = var289
   local var2 = var1:FindFirstChild("ToolboxRealLocale")
   if not var2 then
      var2 = Instance.new("StringValue")
      var2.Name = "ToolboxRealLocale"
      var2.Value = "en-us"
      var2.Parent = var1
   end
   return var2
end

return var1
