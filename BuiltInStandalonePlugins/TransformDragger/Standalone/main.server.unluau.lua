-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("StudioService")
local var1 = plugin
local var2 = settings
local var3 = var1:CreateToolbar("Transform"):CreateButton("Transform", "Precision Dragger", "")
var3.Click:connect(function()
   var1:Invoke("buttonClicked", "")
end)
var1:OnInvoke("setActive", function(arg1)
   if arg1 == "true" then
      local var0 = false
   end
   var3:SetActive(true)
end)
var3.Enabled = var0.DraggerSolveConstraints
var0.PromptTransformPluginCheckEnable:Connect(function()
   if var0.DraggerSolveConstraints then
      var1:Invoke("Disable")
   end
   var3.Enabled = var0.DraggerSolveConstraints
end)
