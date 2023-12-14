-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("RunService")
local var1 = {}
function var1.isRunning()
   return var0:IsRunning()
end

return require(script:FindFirstAncestor("AvatarCompatibilityPreviewer").Packages.React).createContext(var1)
