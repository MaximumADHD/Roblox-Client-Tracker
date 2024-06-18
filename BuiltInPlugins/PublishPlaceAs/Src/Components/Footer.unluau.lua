-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = Vector2.new(512, 256)
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Framework).ContextServices
local var4 = require(var1.Src.Actions.SetScreen)
local var5 = require(var1.Src.Components.ButtonBar)
local var6 = require(var1.Src.Util.Analytics)
local var7 = var2.PureComponent:extend("Footer")
local function fun9(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.OnClose
   local var3 = var0.MainButton
   local var4 = var0.NextScreen
   local var5 = var0.OpenNextScreen
   local var6 = var0.IsPublish
   local var510 = {}
   var510.BackgroundColor3 = var1.backgroundColor
   var510.BorderSizePixel = 0
   var510.Size = UDim2.new(1, 0, 0, var1.FOOTER_HEIGHT)
   var510.AnchorPoint = Vector2.new(0, 1)
   var510.Position = UDim2.new(0, 0, 1, 0)
   var510.ZIndex = 2
   local var530 = {}
   local var534 = {}
   var534.Size = UDim2.new(1, 0, 0, 3)
   var534.AnchorPoint = Vector2.new(0, 1)
   var534.Image = "rbxasset://textures/gradient.png"
   var534.ImageRectSize = var0
   var534.BorderSizePixel = 0
   var534.BackgroundTransparency = 1
   var534.ImageColor3 = var1.footer.gradient
   var534.ImageTransparency = 0.9
   var534.ZIndex = 1
   var530.Gradient = var2.createElement("ImageLabel", var534)
   local var557 = {}
   var557.ZIndex = 2
   local var7 = {}
   var7.Name = "Cancel"
   var7.Active = true
   var7.Value = false
   local var8 = {}
   var8.Name = var3.Name
   var8.Default = true
   var8.Active = var3.Active
   var8.Value = true
   var557.Buttons = {}
   var557.HorizontalAlignment = Enum.HorizontalAlignment.Right
   local function fun7(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   function var557.buttonActivated(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   fun7 = var0[var2.Children]
   var530.SaveSettings = var2.createElement(var5, var557, fun7)
   if var4 == "props" then
      local var582 = {}
      var582.Size = UDim2.new(0.15, 0, 0.5, 0)
      var582.Position = UDim2.new(0.13, 0, 0.5, 0)
      var582.AnchorPoint = Vector2.new(0.5, 0.5)
      var582.BorderSizePixel = 3
      var582.TextColor3 = var1.defaultButton.ButtonColor
      var582.BackgroundTransparency = 1
      var582.TextXAlignment = Enum.TextXAlignment.Left
      var582.TextSize = 20
      var582.Font = var1.footer.textbutton.font
      var582.Text = var0.Localization:getText("FooterButton", var0.NextScreenText)
      function var2.Event.Activated()
         var5(var4)
      end
      
      local var0 = var2.createElement("TextButton", var582)
   end
   var530.GotoNextScreen = false
   return var2.createElement("Frame", var510, var530)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.OnClose
   local var3 = var0.MainButton
   local var4 = var0.NextScreen
   local var5 = var0.OpenNextScreen
   local var6 = var0.IsPublish
   local var510 = {}
   var510.BackgroundColor3 = var1.backgroundColor
   var510.BorderSizePixel = 0
   var510.Size = UDim2.new(1, 0, 0, var1.FOOTER_HEIGHT)
   var510.AnchorPoint = Vector2.new(0, 1)
   var510.Position = UDim2.new(0, 0, 1, 0)
   var510.ZIndex = 2
   local var530 = {}
   local var534 = {}
   var534.Size = UDim2.new(1, 0, 0, 3)
   var534.AnchorPoint = Vector2.new(0, 1)
   var534.Image = "rbxasset://textures/gradient.png"
   var534.ImageRectSize = var0
   var534.BorderSizePixel = 0
   var534.BackgroundTransparency = 1
   var534.ImageColor3 = var1.footer.gradient
   var534.ImageTransparency = 0.9
   var534.ZIndex = 1
   var530.Gradient = var2.createElement("ImageLabel", var534)
   local var557 = {}
   var557.ZIndex = 2
   local var7 = {}
   var7.Name = "Cancel"
   var7.Active = true
   var7.Value = false
   local var8 = {}
   var8.Name = var3.Name
   var8.Default = true
   var8.Active = var3.Active
   var8.Value = true
   var557.Buttons = {}
   var557.HorizontalAlignment = Enum.HorizontalAlignment.Right
   local function fun7(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   function var557.buttonActivated(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   fun7 = var0[var2.Children]
   var530.SaveSettings = var2.createElement(var5, var557, fun7)
   if var4 == "props" then
      local var582 = {}
      var582.Size = UDim2.new(0.15, 0, 0.5, 0)
      var582.Position = UDim2.new(0.13, 0, 0.5, 0)
      var582.AnchorPoint = Vector2.new(0.5, 0.5)
      var582.BorderSizePixel = 3
      var582.TextColor3 = var1.defaultButton.ButtonColor
      var582.BackgroundTransparency = 1
      var582.TextXAlignment = Enum.TextXAlignment.Left
      var582.TextSize = 20
      var582.Font = var1.footer.textbutton.font
      var582.Text = var0.Localization:getText("FooterButton", var0.NextScreenText)
      function var2.Event.Activated()
         var5(var4)
      end
      
      local var0 = var2.createElement("TextButton", var582)
   end
   var530.GotoNextScreen = false
   return var2.createElement("Frame", var510, var530)
end

fun9 = var3.withContext
local var619 = {}
var619.Stylizer = var3.Stylizer
var619.Localization = var3.Localization
var7 = fun9(var619)(var7)
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
