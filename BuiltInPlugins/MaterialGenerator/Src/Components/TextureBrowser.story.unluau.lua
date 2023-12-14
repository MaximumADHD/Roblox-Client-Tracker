-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local var1 = require(script.Parent.Parent.Parent.Packages.React)
local var2 = require(script.Parent.TextureBrowser)
local function var3()
   local var0 = {}
   var0.Name = "Testing"
   var0.Id = var0:GenerateGUID(false)
   local var110 = {}
   var110.ColorMap = "rbxassetid://12799638751"
   var0.Textures = var110
   var0.BaseMaterial = nil
   var0.IsGenerating = false
   var0.IsTemporary = true
   var0.Session = nil
   return var0
end

local var4 = {}
function var4.story(arg1)
   local var130 = {}
   var130.GeneratingImages = 4
   var130.Materials = { var3(), var3(), var3(), var3() }
   return var1.createElement(var2, var130)
end

return var4
