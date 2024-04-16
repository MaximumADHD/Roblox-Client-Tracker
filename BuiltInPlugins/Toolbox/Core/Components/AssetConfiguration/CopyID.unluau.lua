-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = game:GetService("StudioService")
local var2 = var0.Packages
local var3 = require(var2.Roact)
local var4 = require(var0.Core.Util.Constants)
local var5 = require(var2.Framework).ContextServices
local var6 = var3.PureComponent:extend("CopyID")
function var6.init(arg1)
   local var168 = {}
   var168.copied = false
   arg1.state = var168
   function arg1.onCopyClicked(arg1)
      var1:CopyToClipboard(tostring(arg1.props.AssetId))
      local var179 = {}
      var179.copied = true
      arg1:setState(var179)
   end
   
end

local function fun4(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var192 = {}
   var192.BackgroundTransparency = 1
   var192.Position = UDim2.new(0.5, 0, 0, var0.YPos)
   var192.AnchorPoint = Vector2.new(0.5, 0)
   var192.Size = UDim2.new(0, 111, 0, 24)
   local var210 = {}
   local var214 = {}
   var214.BackgroundTransparency = 1
   var214.Size = UDim2.new(1, 0, 1, 0)
   local var222 = {}
   local var226 = {}
   var226.FillDirection = Enum.FillDirection.Horizontal
   var226.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var226.VerticalAlignment = Enum.VerticalAlignment.Center
   var226.SortOrder = Enum.SortOrder.LayoutOrder
   var226.Padding = UDim.new(0, 5)
   var222.UIListLayout = var3.createElement("UIListLayout", var226)
   local var239 = {}
   var239.BackgroundTransparency = 1
   var239.Font = var4.FONT
   var239.Text = "ID: " ... var0.AssetId
   var239.TextColor3 = var1.uploadResult.idText
   var239.TextSize = var4.FONT_SIZE_MEDIUM
   var239.Size = UDim2.new(0, 86, 1, 0)
   var239.TextYAlignment = Enum.TextYAlignment.Center
   var239.TextXAlignment = Enum.TextXAlignment.Center
   var239.LayoutOrder = 1
   var222.IDLabel = var3.createElement("TextLabel", var239)
   local var263 = {}
   var263.Size = UDim2.new(0, 20, 0, 20)
   var263.Image = "rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png"
   var263.ImageColor3 = var1.uploadResult.buttonColor
   var263.BackgroundTransparency = 1
   var263.LayoutOrder = 2
   var3.Event.MouseButton1Click = arg1.onCopyClicked
   var222.CopyButton = var3.createElement("ImageButton", var263)
   local var2 = var3.createElement("Frame", var214, var222)
   var210.LayoutContainer = var2
   var2 = arg1.state.copied
   if var2 then
      local var284 = {}
      var284.BackgroundTransparency = 1
      var284.Font = var4.FONT
      var284.Text = var0.Localization:getText("AssetConfigUpload", "IDCopied")
      var284.TextColor3 = var1.uploadResult.greenText
      var284.TextSize = var4.FONT_SIZE_MEDIUM
      var284.Size = UDim2.new(0, 64, 1, 0)
      var284.AnchorPoint = Vector2.new(0, 0.5)
      var284.Position = UDim2.new(0, 116, 0.5, 0)
      var284.TextYAlignment = Enum.TextYAlignment.Center
      var284.TextXAlignment = Enum.TextXAlignment.Center
      local var0 = var3.createElement("TextLabel", var284)
   end
   var210.CopiedLabel = var2
   return var3.createElement("Frame", var192, var210)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var192 = {}
   var192.BackgroundTransparency = 1
   var192.Position = UDim2.new(0.5, 0, 0, var0.YPos)
   var192.AnchorPoint = Vector2.new(0.5, 0)
   var192.Size = UDim2.new(0, 111, 0, 24)
   local var210 = {}
   local var214 = {}
   var214.BackgroundTransparency = 1
   var214.Size = UDim2.new(1, 0, 1, 0)
   local var222 = {}
   local var226 = {}
   var226.FillDirection = Enum.FillDirection.Horizontal
   var226.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var226.VerticalAlignment = Enum.VerticalAlignment.Center
   var226.SortOrder = Enum.SortOrder.LayoutOrder
   var226.Padding = UDim.new(0, 5)
   var222.UIListLayout = var3.createElement("UIListLayout", var226)
   local var239 = {}
   var239.BackgroundTransparency = 1
   var239.Font = var4.FONT
   var239.Text = "ID: " ... var0.AssetId
   var239.TextColor3 = var1.uploadResult.idText
   var239.TextSize = var4.FONT_SIZE_MEDIUM
   var239.Size = UDim2.new(0, 86, 1, 0)
   var239.TextYAlignment = Enum.TextYAlignment.Center
   var239.TextXAlignment = Enum.TextXAlignment.Center
   var239.LayoutOrder = 1
   var222.IDLabel = var3.createElement("TextLabel", var239)
   local var263 = {}
   var263.Size = UDim2.new(0, 20, 0, 20)
   var263.Image = "rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png"
   var263.ImageColor3 = var1.uploadResult.buttonColor
   var263.BackgroundTransparency = 1
   var263.LayoutOrder = 2
   var3.Event.MouseButton1Click = arg1.onCopyClicked
   var222.CopyButton = var3.createElement("ImageButton", var263)
   local var2 = var3.createElement("Frame", var214, var222)
   var210.LayoutContainer = var2
   var2 = arg1.state.copied
   if var2 then
      local var284 = {}
      var284.BackgroundTransparency = 1
      var284.Font = var4.FONT
      var284.Text = var0.Localization:getText("AssetConfigUpload", "IDCopied")
      var284.TextColor3 = var1.uploadResult.greenText
      var284.TextSize = var4.FONT_SIZE_MEDIUM
      var284.Size = UDim2.new(0, 64, 1, 0)
      var284.AnchorPoint = Vector2.new(0, 0.5)
      var284.Position = UDim2.new(0, 116, 0.5, 0)
      var284.TextYAlignment = Enum.TextYAlignment.Center
      var284.TextXAlignment = Enum.TextXAlignment.Center
      local var0 = var3.createElement("TextLabel", var284)
   end
   var210.CopiedLabel = var2
   return var3.createElement("Frame", var192, var210)
end

fun4 = var5.withContext
local var317 = {}
var317.Stylizer = var5.Stylizer
var317.Localization = var5.Localization
var6 = fun4(var317)(var6)
return var6
