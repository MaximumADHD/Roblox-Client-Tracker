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
      return false
   end
   local var1 = var0:FindFirstChild(arg1)
   if var1 then
      return var1.Value
   end
   return false
end

local var1 = {}
function var1.shouldRunTests()
   wait(0.3)
   local var0 = var0:FindFirstChild("ToolboxDebugFlags")
   if not var0 then
      return false
   end
   local var1 = var0:FindFirstChild("RunToolboxTests")
   if var1 then
      return var1.Value
   end
   return false
end

function var1.shouldDisableTooltips()
   local var0 = var0:FindFirstChild("ToolboxDebugFlags")
   if not var0 then
      return false
   end
   local var1 = var0:FindFirstChild("ToolboxDisableTooltips")
   if var1 then
      return var1.Value
   end
   return false
end

function var1.shouldDebugUrls()
   local var0 = var0:FindFirstChild("ToolboxDebugFlags")
   if not var0 then
      return false
   end
   local var1 = var0:FindFirstChild("ToolboxDebugUrls")
   if var1 then
      return var1.Value
   end
   return false
end

function var1.shouldDebugState()
   local var0 = var0:FindFirstChild("ToolboxDebugFlags")
   if not var0 then
      return false
   end
   local var1 = var0:FindFirstChild("ToolboxDebugState")
   if var1 then
      return var1.Value
   end
   return false
end

function var1.shouldDebugWarnings()
   local var0 = var0:FindFirstChild("ToolboxDebugFlags")
   if not var0 then
      return false
   end
   local var1 = var0:FindFirstChild("ToolboxDebugWarnings")
   if var1 then
      return var1.Value
   end
   return false
end

function var1.shouldLogSettings()
   local var0 = var0:FindFirstChild("ToolboxDebugFlags")
   if not var0 then
      return false
   end
   local var1 = var0:FindFirstChild("ToolboxLogSettings")
   if var1 then
      return var1.Value
   end
   return false
end

function var1.shouldUseTestCustomLocale()
   local var0 = var0:FindFirstChild("ToolboxDebugFlags")
   if not var0 then
      return false
   end
   local var1 = var0:FindFirstChild("ToolboxUseTestCustomLocale")
   if var1 then
      return var1.Value
   end
   return false
end

function var1.shouldUseTestRealLocale()
   local var0 = var0:FindFirstChild("ToolboxDebugFlags")
   if not var0 then
      return false
   end
   local var1 = var0:FindFirstChild("ToolboxUseTestRealLocaleId")
   if var1 then
      return var1.Value
   end
   return false
end

function var1.getOrCreateTestCustomLocale()
   local var197 = var0:FindFirstChild("ToolboxDebugFlags")
   if not var197 then
      var197 = Instance.new("Folder")
      var197.Name = "ToolboxDebugFlags"
      var197.Parent = var0
   end
   local var1 = var197
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
   local var215 = var0:FindFirstChild("ToolboxDebugFlags")
   if not var215 then
      var215 = Instance.new("Folder")
      var215.Name = "ToolboxDebugFlags"
      var215.Parent = var0
   end
   local var1 = var215
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
