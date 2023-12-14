-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = settings().Studio
local var3 = require(var0.src.Constants)
local var4 = var1.Component:extend("LoadingPrompt")
function var4.render(arg1)
   local var23 = {}
   var23.Name = "LoadingPrompt"
   var23.Size = UDim2.new(1, 0, 1, 0)
   var23.BackgroundColor3 = var2.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground, Enum.StudioStyleGuideModifier.Default)
   local var37 = {}
   local var41 = {}
   var41.AnchorPoint = Vector2.new(0.5, 0.5)
   var41.BackgroundTransparency = 1
   var41.Font = var3.FONT
   var41.Name = "Description"
   var41.Position = UDim2.new(0.5, 0, 0.5, 0)
   var41.Size = UDim2.new(1, 0, 1, 0)
   var41.Text = "Importing Avatar, please wait..."
   var41.TextSize = var3.FONT_SIZE_MEDIUM
   var41.TextXAlignment = Enum.TextXAlignment.Center
   var41.TextYAlignment = Enum.TextYAlignment.Center
   var41.TextColor3 = var2.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Default)
   var37.description = var1.createElement("TextLabel", var41)
   return var1.createElement("ImageLabel", var23, var37)
end

return var4
