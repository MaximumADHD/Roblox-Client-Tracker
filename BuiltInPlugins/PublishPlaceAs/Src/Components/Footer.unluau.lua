-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = Vector2.new(512, 256)
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Framework).ContextServices
local var4 = require(var1.Src.Actions.SetScreen)
local var5 = require(var1.Src.Components.ButtonBar)
local var6 = require(var1.Src.Util.Analytics)
local var7 = var2.PureComponent:extend("Footer")
local function fun10(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.OnClose
   local var3 = var0.MainButton
   local var4 = var0.NextScreen
   local var5 = var0.OpenNextScreen
   local var6 = var0.IsPublish
   local var477 = {}
   var477.BackgroundColor3 = var1.backgroundColor
   var477.BorderSizePixel = 0
   var477.Size = UDim2.new(1, 0, 0, var1.FOOTER_HEIGHT)
   var477.AnchorPoint = Vector2.new(0, 1)
   var477.Position = UDim2.new(0, 0, 1, 0)
   var477.ZIndex = 2
   local var497 = {}
   local var501 = {}
   var501.Size = UDim2.new(1, 0, 0, 3)
   var501.AnchorPoint = Vector2.new(0, 1)
   var501.Image = "rbxasset://textures/gradient.png"
   var501.ImageRectSize = var0
   var501.BorderSizePixel = 0
   var501.BackgroundTransparency = 1
   var501.ImageColor3 = var1.footer.gradient
   var501.ImageTransparency = 0.9
   var501.ZIndex = 1
   var497.Gradient = var2.createElement("ImageLabel", var501)
   local var524 = {}
   var524.ZIndex = 2
   local var7 = {}
   var7.Name = "Cancel"
   var7.Active = true
   var7.Value = false
   local var8 = {}
   var8.Name = var3.Name
   var8.Default = true
   var8.Active = var3.Active
   var8.Value = true
   var524.Buttons = {}
   var524.HorizontalAlignment = Enum.HorizontalAlignment.Right
   local function fun8(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   function var524.buttonActivated(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   fun8 = var0[var2.Children]
   var497.SaveSettings = var2.createElement(var5, var524, fun8)
   if var4 == "props" then
      local var549 = {}
      var549.Size = UDim2.new(0.15, 0, 0.5, 0)
      var549.Position = UDim2.new(0.13, 0, 0.5, 0)
      var549.AnchorPoint = Vector2.new(0.5, 0.5)
      var549.BorderSizePixel = 3
      var549.TextColor3 = var1.defaultButton.ButtonColor
      var549.BackgroundTransparency = 1
      var549.TextXAlignment = Enum.TextXAlignment.Left
      var549.TextSize = 20
      var549.Font = var1.footer.textbutton.font
      var549.Text = var0.Localization:getText("FooterButton", var0.NextScreenText)
      function var2.Event.Activated()
         var5(var4)
      end
      
      local var0 = var2.createElement("TextButton", var549)
   end
   var497.GotoNextScreen = false
   return var2.createElement("Frame", var477, var497)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.OnClose
   local var3 = var0.MainButton
   local var4 = var0.NextScreen
   local var5 = var0.OpenNextScreen
   local var6 = var0.IsPublish
   local var477 = {}
   var477.BackgroundColor3 = var1.backgroundColor
   var477.BorderSizePixel = 0
   var477.Size = UDim2.new(1, 0, 0, var1.FOOTER_HEIGHT)
   var477.AnchorPoint = Vector2.new(0, 1)
   var477.Position = UDim2.new(0, 0, 1, 0)
   var477.ZIndex = 2
   local var497 = {}
   local var501 = {}
   var501.Size = UDim2.new(1, 0, 0, 3)
   var501.AnchorPoint = Vector2.new(0, 1)
   var501.Image = "rbxasset://textures/gradient.png"
   var501.ImageRectSize = var0
   var501.BorderSizePixel = 0
   var501.BackgroundTransparency = 1
   var501.ImageColor3 = var1.footer.gradient
   var501.ImageTransparency = 0.9
   var501.ZIndex = 1
   var497.Gradient = var2.createElement("ImageLabel", var501)
   local var524 = {}
   var524.ZIndex = 2
   local var7 = {}
   var7.Name = "Cancel"
   var7.Active = true
   var7.Value = false
   local var8 = {}
   var8.Name = var3.Name
   var8.Default = true
   var8.Active = var3.Active
   var8.Value = true
   var524.Buttons = {}
   var524.HorizontalAlignment = Enum.HorizontalAlignment.Right
   local function fun8(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   function var524.buttonActivated(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   fun8 = var0[var2.Children]
   var497.SaveSettings = var2.createElement(var5, var524, fun8)
   if var4 == "props" then
      local var549 = {}
      var549.Size = UDim2.new(0.15, 0, 0.5, 0)
      var549.Position = UDim2.new(0.13, 0, 0.5, 0)
      var549.AnchorPoint = Vector2.new(0.5, 0.5)
      var549.BorderSizePixel = 3
      var549.TextColor3 = var1.defaultButton.ButtonColor
      var549.BackgroundTransparency = 1
      var549.TextXAlignment = Enum.TextXAlignment.Left
      var549.TextSize = 20
      var549.Font = var1.footer.textbutton.font
      var549.Text = var0.Localization:getText("FooterButton", var0.NextScreenText)
      function var2.Event.Activated()
         var5(var4)
      end
      
      local var0 = var2.createElement("TextButton", var549)
   end
   var497.GotoNextScreen = false
   return var2.createElement("Frame", var477, var497)
end

fun10 = var3.withContext
local var586 = {}
var586.Stylizer = var3.Stylizer
var586.Localization = var3.Localization
var7 = fun10(var586)(var7)
return require(var1.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.OpenNextScreen(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   return var0
end)(var7)
