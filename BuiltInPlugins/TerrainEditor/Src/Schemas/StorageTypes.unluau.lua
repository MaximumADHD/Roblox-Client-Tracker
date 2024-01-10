-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script:FindFirstAncestor("TerrainEditor").Packages.Dash).collect(script.Parent.Settings:GetChildren(), function(arg1, arg2)
   if arg2:IsA("ModuleScript") then
      return arg2.Name ... "Settings"require(arg2).Storage,
   end
   return nilnil,
end)
