-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Packages")
if game:GetFastFlag("AudioDiscoveryMigrateToRoact17") then
   return require(var0.RoactCompat)
end
return require(var0._Index.Roact.Roact)
