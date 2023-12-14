-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("TextService")
local var1 = game:GetService("StudioPublishService")
local var2 = script.Parent.Parent.Parent
local var3 = require(var2.Packages.Roact)
local var4 = require(var2.Packages.Framework)
local var5 = var4.UI.Button
local var6 = var4.ContextServices
local var7 = require(var2.Src.Util.Analytics)
local var8 = var3.PureComponent:extend("SaveToRobloxView")
local function fun14(arg1)
   local var0 = arg1.props
   local var1 = var0.CloseWidget
   local var2 = var0.Localization
   local var3 = var0.Stylizer
   local var4 = var2:getText("Buttons", "SaveToRoblox")
   local var866 = var4
   local var869 = var3.saveToRobloxView.Text.TextSize
   local var872 = var3.saveToRobloxView.Text.Font
   local var876 = Vector2.new(∞, ∞)
   local var6 = var0:GetTextSize()
   local var882 = {}
   var882.Size = UDim2.new(1, 0, 1, 0)
   var882.BackgroundColor3 = var3.backgroundColor
   local var890 = {}
   local var894 = {}
   var894.Text = var2:getText("Description", "SaveToRoblox")
   var894.TextColor3 = var3.saveToRobloxView.Text.TextColor3
   var894.TextSize = var3.saveToRobloxView.Text.TextSize
   var894.Font = var3.saveToRobloxView.Text.Font
   var894.Position = UDim2.new(0.5, 0, 0, var3.saveToRobloxView.Text.YOffset)
   var894.AnchorPoint = Vector2.new(0.5, 0.5)
   var890.SaveText = var3.createElement("TextLabel", var894)
   local var924 = {}
   var924.Style = "Active"
   var924.Text = var4
   var924.Size = UDim2.new(0, var6.X + var3.saveToRobloxView.publishButton.paddingX, 0, var6.Y + var3.saveToRobloxView.publishButton.paddingY)
   var924.Position = UDim2.new(0.5, 0, 0, var3.saveToRobloxView.publishButton.offset)
   var924.AnchorPoint = Vector2.new(0.5, 0.5)
   function var924.OnClick()
      var7.reportSaveToRobloxPressed()
      var1:ShowSaveOrPublishPlaceToRoblox(false, false, Enum.StudioCloseMode.None)
      var1()
   end
   
   var890.SaveButton = var3.createElement(var5, var924)
   return var3.createElement("Frame", var882, var890)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.CloseWidget
   local var2 = var0.Localization
   local var3 = var0.Stylizer
   local var4 = var2:getText("Buttons", "SaveToRoblox")
   local var866 = var4
   local var869 = var3.saveToRobloxView.Text.TextSize
   local var872 = var3.saveToRobloxView.Text.Font
   local var876 = Vector2.new(∞, ∞)
   local var6 = var0:GetTextSize()
   local var882 = {}
   var882.Size = UDim2.new(1, 0, 1, 0)
   var882.BackgroundColor3 = var3.backgroundColor
   local var890 = {}
   local var894 = {}
   var894.Text = var2:getText("Description", "SaveToRoblox")
   var894.TextColor3 = var3.saveToRobloxView.Text.TextColor3
   var894.TextSize = var3.saveToRobloxView.Text.TextSize
   var894.Font = var3.saveToRobloxView.Text.Font
   var894.Position = UDim2.new(0.5, 0, 0, var3.saveToRobloxView.Text.YOffset)
   var894.AnchorPoint = Vector2.new(0.5, 0.5)
   var890.SaveText = var3.createElement("TextLabel", var894)
   local var924 = {}
   var924.Style = "Active"
   var924.Text = var4
   var924.Size = UDim2.new(0, var6.X + var3.saveToRobloxView.publishButton.paddingX, 0, var6.Y + var3.saveToRobloxView.publishButton.paddingY)
   var924.Position = UDim2.new(0.5, 0, 0, var3.saveToRobloxView.publishButton.offset)
   var924.AnchorPoint = Vector2.new(0.5, 0.5)
   function var924.OnClick()
      var7.reportSaveToRobloxPressed()
      var1:ShowSaveOrPublishPlaceToRoblox(false, false, Enum.StudioCloseMode.None)
      var1()
   end
   
   var890.SaveButton = var3.createElement(var5, var924)
   return var3.createElement("Frame", var882, var890)
end

fun14 = var6.withContext
local var962 = {}
var962.Stylizer = var4.Style.Stylizer
var962.Localization = var6.Localization
var8 = fun14(var962)(var8)
return var8
