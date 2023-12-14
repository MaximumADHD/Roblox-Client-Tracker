-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = game:GetService("ReplicatedStorage")
local var2 = require(var0.Packages.Dash).find
local function var3(arg1, arg2)
   if arg2:FindFirstChild(arg1) then
   end
   local var18 = var0
   var18 = arg1
   local var1 = var18 ... "-"
   local var2 = var2(var18.Packages._Index:GetChildren(), function(arg1)
      if arg1.Name ~= arg1 then
         if arg1.Name:sub(1, var1) ~= var1 then
            local var0 = false
         end
         local var0 = true
      end
      return true
   end)
   if var2 then
      var2:FindFirstChild(arg1):Clone().Parent = arg2
   end
end

return function()
   local var0 = var1:FindFirstChild("Packages")
   if not var0 then
      var0 = Instance.new("Folder")
      var0.Name = "Packages"
      var0.Parent = var1
   end
   var3("Dash", var0)
   var3("DeveloperTools", var0)
end
