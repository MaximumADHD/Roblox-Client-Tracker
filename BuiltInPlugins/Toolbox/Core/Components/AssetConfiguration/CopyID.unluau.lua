-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = game:GetService("StudioService")
local var2 = var0.Packages
local var3 = require(var2.Roact)
local var4 = var0.Core.Util
local var5 = require(var4.Constants)
local var6 = require(var4.ContextHelper).withLocalization
local var7 = require(var2.Framework).ContextServices
local var8 = var3.PureComponent:extend("CopyID")
function var8.init(arg1)
   local var189 = {}
   var189.copied = false
   arg1.state = var189
   function arg1.onCopyClicked(arg1)
      var1:CopyToClipboard(tostring(arg1.props.AssetId))
      local var200 = {}
      var200.copied = true
      arg1:setState(var200)
   end
   
end

function var8.render(arg1)
   return var6(function(arg1)
      var1:CopyToClipboard(tostring(arg1.props.AssetId))
      local var214 = {}
      var214.copied = true
      arg1:setState(var214)
   end)
end

local function fun8(arg1, arg2, arg3)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var230 = {}
   var230.BackgroundTransparency = 1
   var230.Position = UDim2.new(0.5, 0, 0, var0.YPos)
   var230.AnchorPoint = Vector2.new(0.5, 0)
   var230.Size = UDim2.new(0, 111, 0, 24)
   local var248 = {}
   local var252 = {}
   var252.BackgroundTransparency = 1
   var252.Size = UDim2.new(1, 0, 1, 0)
   local var260 = {}
   local var264 = {}
   var264.FillDirection = Enum.FillDirection.Horizontal
   var264.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var264.VerticalAlignment = Enum.VerticalAlignment.Center
   var264.SortOrder = Enum.SortOrder.LayoutOrder
   var264.Padding = UDim.new(0, 5)
   var260.UIListLayout = var3.createElement("UIListLayout", var264)
   local var277 = {}
   var277.BackgroundTransparency = 1
   var277.Font = var5.FONT
   var277.Text = "ID: " ... var0.AssetId
   var277.TextColor3 = var1.uploadResult.idText
   var277.TextSize = var5.FONT_SIZE_MEDIUM
   var277.Size = UDim2.new(0, 86, 1, 0)
   var277.TextYAlignment = Enum.TextYAlignment.Center
   var277.TextXAlignment = Enum.TextXAlignment.Center
   var277.LayoutOrder = 1
   var260.IDLabel = var3.createElement("TextLabel", var277)
   local var301 = {}
   var301.Size = UDim2.new(0, 20, 0, 20)
   var301.Image = "rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png"
   var301.ImageColor3 = var1.uploadResult.buttonColor
   var301.BackgroundTransparency = 1
   var301.LayoutOrder = 2
   var3.Event.MouseButton1Click = arg1.onCopyClicked
   var260.CopyButton = var3.createElement("ImageButton", var301)
   local var2 = var3.createElement("Frame", var252, var260)
   var248.LayoutContainer = var2
   var2 = arg1.state.copied
   if var2 then
      local var322 = {}
      var322.BackgroundTransparency = 1
      var322.Font = var5.FONT
      var322.Text = var0.Localization:getText("AssetConfigUpload", "IDCopied")
      var322.TextColor3 = var1.uploadResult.greenText
      var322.TextSize = var5.FONT_SIZE_MEDIUM
      var322.Size = UDim2.new(0, 64, 1, 0)
      var322.AnchorPoint = Vector2.new(0, 0.5)
      var322.Position = UDim2.new(0, 116, 0.5, 0)
      var322.TextYAlignment = Enum.TextYAlignment.Center
      var322.TextXAlignment = Enum.TextXAlignment.Center
      local var0 = var3.createElement("TextLabel", var322)
   end
   var248.CopiedLabel = var2
   return var3.createElement("Frame", var230, var248)
end

function var8.renderContent(arg1, arg2, arg3)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var230 = {}
   var230.BackgroundTransparency = 1
   var230.Position = UDim2.new(0.5, 0, 0, var0.YPos)
   var230.AnchorPoint = Vector2.new(0.5, 0)
   var230.Size = UDim2.new(0, 111, 0, 24)
   local var248 = {}
   local var252 = {}
   var252.BackgroundTransparency = 1
   var252.Size = UDim2.new(1, 0, 1, 0)
   local var260 = {}
   local var264 = {}
   var264.FillDirection = Enum.FillDirection.Horizontal
   var264.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var264.VerticalAlignment = Enum.VerticalAlignment.Center
   var264.SortOrder = Enum.SortOrder.LayoutOrder
   var264.Padding = UDim.new(0, 5)
   var260.UIListLayout = var3.createElement("UIListLayout", var264)
   local var277 = {}
   var277.BackgroundTransparency = 1
   var277.Font = var5.FONT
   var277.Text = "ID: " ... var0.AssetId
   var277.TextColor3 = var1.uploadResult.idText
   var277.TextSize = var5.FONT_SIZE_MEDIUM
   var277.Size = UDim2.new(0, 86, 1, 0)
   var277.TextYAlignment = Enum.TextYAlignment.Center
   var277.TextXAlignment = Enum.TextXAlignment.Center
   var277.LayoutOrder = 1
   var260.IDLabel = var3.createElement("TextLabel", var277)
   local var301 = {}
   var301.Size = UDim2.new(0, 20, 0, 20)
   var301.Image = "rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png"
   var301.ImageColor3 = var1.uploadResult.buttonColor
   var301.BackgroundTransparency = 1
   var301.LayoutOrder = 2
   var3.Event.MouseButton1Click = arg1.onCopyClicked
   var260.CopyButton = var3.createElement("ImageButton", var301)
   local var2 = var3.createElement("Frame", var252, var260)
   var248.LayoutContainer = var2
   var2 = arg1.state.copied
   if var2 then
      local var322 = {}
      var322.BackgroundTransparency = 1
      var322.Font = var5.FONT
      var322.Text = var0.Localization:getText("AssetConfigUpload", "IDCopied")
      var322.TextColor3 = var1.uploadResult.greenText
      var322.TextSize = var5.FONT_SIZE_MEDIUM
      var322.Size = UDim2.new(0, 64, 1, 0)
      var322.AnchorPoint = Vector2.new(0, 0.5)
      var322.Position = UDim2.new(0, 116, 0.5, 0)
      var322.TextYAlignment = Enum.TextYAlignment.Center
      var322.TextXAlignment = Enum.TextXAlignment.Center
      local var0 = var3.createElement("TextLabel", var322)
   end
   var248.CopiedLabel = var2
   return var3.createElement("Frame", var230, var248)
end

fun8 = var7.withContext
local var355 = {}
var355.Stylizer = var7.Stylizer
var355.Localization = var7.Localization
var8 = fun8(var355)(var8)
return var8
