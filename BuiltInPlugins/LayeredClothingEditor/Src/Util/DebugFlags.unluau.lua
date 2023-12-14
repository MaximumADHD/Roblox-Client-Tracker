-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
local var1 = {}
local function fun0(arg1)
   local var0 = var0:FindFirstChild("LayeredClothingEditorFlags")
   if var0 then
      return var0:FindFirstChild(arg1) and var0[arg1].Value
   end
   return false
end

function var1.RunTests()
   local var0 = var0:FindFirstChild("LayeredClothingEditorFlags")
   if var0 then
      if var0:FindFirstChild("RunTests") then
         return var0.RunTests.Value
         return false
      end
   end
   local var1 = false
   return var1
   return var1
end

function var1.RunRhodiumTests()
   local var0 = var0:FindFirstChild("LayeredClothingEditorFlags")
   if var0 then
      if var0:FindFirstChild("RunRhodiumTests") then
         return var0.RunRhodiumTests.Value
         return false
      end
   end
   local var1 = false
   return var1
   return var1
end

function var1.LogRoduxEvents()
   local var0 = var0:FindFirstChild("LayeredClothingEditorFlags")
   if var0 then
      if var0:FindFirstChild("LogRoduxEvents") then
         return var0.LogRoduxEvents.Value
         return false
      end
   end
   local var1 = false
   return var1
   return var1
end

function var1.LogAnalytics()
   local var0 = var0:FindFirstChild("LayeredClothingEditorFlags")
   if var0 then
      if var0:FindFirstChild("LogAnalytics") then
         return var0.LogAnalytics.Value
         return false
      end
   end
   local var1 = false
   return var1
   return var1
end

function var1.MockItemHasFullCage()
   local var0 = var0:FindFirstChild("LayeredClothingEditorFlags")
   if var0 then
      if var0:FindFirstChild("MockItemHasFullCage") then
         return var0.MockItemHasFullCage.Value
         return false
      end
   end
   local var1 = false
   return var1
   return var1
end

function var1.UseMockCages()
   local var0 = var0:FindFirstChild("LayeredClothingEditorFlags")
   if var0 then
      if var0:FindFirstChild("UseMockCages") then
         return var0.UseMockCages.Value
         return false
      end
   end
   local var1 = false
   return var1
   return var1
end

return var1
